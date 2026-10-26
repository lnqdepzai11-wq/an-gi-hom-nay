
create extension if not exists pgcrypto;

create table if not exists public.favorites (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references auth.users(id) on delete cascade,
  dish_id text not null,
  created_at timestamptz not null default now(),
  unique (user_id, dish_id)
);

create table if not exists public.weekly_plans (
  user_id uuid not null references auth.users(id) on delete cascade,
  week_start date not null,
  meals jsonb not null default '["","","","","","",""]'::jsonb,
  updated_at timestamptz not null default now(),
  primary key (user_id, week_start),
  constraint weekly_plan_has_seven_days check (jsonb_typeof(meals) = 'array' and jsonb_array_length(meals) = 7)
);

create table if not exists public.food_reviews (
  id uuid primary key default gen_random_uuid(),
  dish_id text not null,
  user_id uuid not null references auth.users(id) on delete cascade,
  rating integer not null check (rating between 1 and 5),
  comment text not null check (char_length(comment) between 1 and 300),
  created_at timestamptz not null default now()
);
alter table public.food_reviews drop constraint if exists food_reviews_user_id_dish_id_key;

alter table public.favorites enable row level security;
alter table public.weekly_plans enable row level security;
alter table public.food_reviews enable row level security;

drop policy if exists "Users read their own favorites" on public.favorites;
create policy "Users read their own favorites" on public.favorites for select to authenticated using (auth.uid() = user_id);
drop policy if exists "Users add their own favorites" on public.favorites;
create policy "Users add their own favorites" on public.favorites for insert to authenticated with check (auth.uid() = user_id);
drop policy if exists "Users keep their own favorites" on public.favorites;
create policy "Users keep their own favorites" on public.favorites for update to authenticated using (auth.uid() = user_id) with check (auth.uid() = user_id);
drop policy if exists "Users remove their own favorites" on public.favorites;
create policy "Users remove their own favorites" on public.favorites for delete to authenticated using (auth.uid() = user_id);

drop policy if exists "Users read their own meal plans" on public.weekly_plans;
create policy "Users read their own meal plans" on public.weekly_plans for select to authenticated using (auth.uid() = user_id);
drop policy if exists "Users create their own meal plans" on public.weekly_plans;
create policy "Users create their own meal plans" on public.weekly_plans for insert to authenticated with check (auth.uid() = user_id);
drop policy if exists "Users update their own meal plans" on public.weekly_plans;
create policy "Users update their own meal plans" on public.weekly_plans for update to authenticated using (auth.uid() = user_id) with check (auth.uid() = user_id);

drop policy if exists "Anyone can read food reviews" on public.food_reviews;
drop policy if exists "Users read their own reviews" on public.food_reviews;
create policy "Anyone can read food reviews" on public.food_reviews for select to anon, authenticated using (true);
drop policy if exists "Signed-in users can review as themselves" on public.food_reviews;
create policy "Signed-in users can review as themselves" on public.food_reviews for insert to authenticated with check (auth.uid() = user_id);

-- Public view follows RLS and omits account IDs. Column grants also prevent direct reads of private columns.
create or replace view public.public_reviews with (security_invoker = true) as
  select dish_id, rating, comment, created_at from public.food_reviews;

grant usage on schema public to anon, authenticated;
grant select, insert, update, delete on public.favorites to authenticated;
grant select, insert, update on public.weekly_plans to authenticated;
revoke all privileges on table public.food_reviews from anon, authenticated;
grant select (dish_id, rating, comment, created_at) on public.food_reviews to anon, authenticated;
grant insert (dish_id, user_id, rating, comment) on public.food_reviews to authenticated;
revoke all privileges on public.public_reviews from anon, authenticated;
grant select on public.public_reviews to anon, authenticated;
