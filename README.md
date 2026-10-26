# Ăn Gì Hôm Nay?

> Một ứng dụng khám phá món ăn Việt dành cho những lúc bạn chưa biết hôm nay ăn gì. Người dùng lọc món theo tâm trạng và giá tham khảo, xem thời gian chuẩn bị, nhận gợi ý bất ngờ, lưu món yêu thích, viết đánh giá và xếp món vào kế hoạch bữa ăn 7 ngày.

## Chạy thử

Trang có sẵn dữ liệu món ăn minh họa và chạy ở chế độ lưu trên thiết bị. Vì ứng dụng dùng JavaScript dạng module, hãy mở thư mục này qua một web server cục bộ, ví dụ tiện ích **Live Server** trong VS Code, rồi mở `index.html` qua địa chỉ `http://localhost`. Không mở trực tiếp đường dẫn `file:///...`.

Danh sách hiện có đúng 100 món. Có 76 ảnh đã được chọn, kiểm tra bằng bảng xem trước và lưu thành tệp trong thư mục `images/`; thẻ hiển thị tác giả, giấy phép và trang nguồn. 24 món còn lại đã có ảnh minh họa tạo bằng AI, được ghi rõ “Ảnh minh họa AI” trên thẻ món. Toàn bộ 100 món có ảnh lưu cục bộ; ảnh đầu trang dùng ảnh phở bò đã có nguồn.

## Chức năng có sẵn

- Bộ lọc **Tâm trạng**: tất cả, muốn ăn no, ăn nhẹ, nhanh gọn.
- Lọc **ngân sách tham khảo** và tìm món theo tên hoặc nội dung.
- Nút **Chọn món bất ngờ** chọn một món trong danh sách đang khớp bộ lọc.
- Thẻ món có giá tham khảo, thời gian, nhãn gợi ý, điểm đánh giá và ảnh.
- Lưu/bỏ lưu món yêu thích.
- Gửi đánh giá từ 1 đến 5 sao và lời nhận xét.
- Kế hoạch bữa ăn 7 ngày; chọn món cho từng ngày.
- Tra cứu các quán tiêu biểu tại Hà Nội, Đà Nẵng và TP. Hồ Chí Minh; mỗi địa chỉ có liên kết nguồn và mở bản đồ.
- Có thể cho phép trình duyệt dùng vị trí để tìm địa điểm ăn uống trong bán kính 3 km bằng OpenStreetMap Overpass API; khi bấm nút, tọa độ được gửi tới dịch vụ bản đồ để tra cứu nhưng ứng dụng không lưu tọa độ. Có thêm đường mở Google Maps/OpenStreetMap nếu danh sách không phản hồi. Dữ liệu quán có thể thiếu/cũ và không xác nhận quán đang mở hoặc có bán món cụ thể.
- Giao diện thích ứng với điện thoại và máy tính.
- Chế độ demo lưu yêu thích, đánh giá và kế hoạch vào `localStorage` của trình duyệt.
- Chế độ trực tuyến dùng Supabase để đăng nhập không mật khẩu qua email và đồng bộ yêu thích/kế hoạch giữa thiết bị; đánh giá được chia sẻ qua cơ sở dữ liệu.

## Ghi công ảnh món ăn

Ảnh được lấy từ Wikimedia Commons, lưu trong dự án để Netlify tải cùng website và gắn nguồn/tác giả/giấy phép ngay trên thẻ món. Mở liên kết “Nguồn ảnh” và “Giấy phép” trên mỗi thẻ để xem trang gốc.

| Món | Tác giả / ảnh | Giấy phép và nguồn |
|---|---|---|
| Phở bò tái | Phương Huy · `pho-bo.jpg` | [CC0](http://creativecommons.org/publicdomain/zero/1.0/deed.en) · [Nguồn ảnh](https://commons.wikimedia.org/wiki/File:T%C3%B4_ph%E1%BB%9F_b%C3%B2_t%C3%A1i_ch%C3%ADn,_ng14th7n2019_(1).jpg) |
| Gỏi cuốn tôm thịt | T.Tseng · `goi-cuon.jpg` | [CC BY 2.0](https://creativecommons.org/licenses/by/2.0) · [Nguồn ảnh](https://commons.wikimedia.org/wiki/File:Spring_rolls_with_peanut_sauce.jpg) |
| Bánh mì gà nướng | StoppedTime · `banh-mi.jpg` | [CC0](http://creativecommons.org/publicdomain/zero/1.0/deed.en) · [Nguồn ảnh](https://commons.wikimedia.org/wiki/File:Grilled_Lemongrass_Chicken_B%C3%A1nh_M%C3%AC_with_Sate_Sauce,_Viet_Sub,_Vancouver,_BC.jpg) |
| Bún chả Hà Nội | Phương Huy  ( thảo luận ) · `bun-cha.jpg` | [Public domain](https://commons.wikimedia.org/wiki/Commons:Reusing_content_outside_Wikimedia) · [Nguồn ảnh](https://commons.wikimedia.org/wiki/File:B%C3%BAn_ch%E1%BA%A3_H%C3%A0_N%E1%BB%99i_(th%E1%BB%8Bt_n%C6%B0%E1%BB%9Bng)_t%E1%BA%A1i_Nguy%E1%BB%85n_S%C6%A1n,_T%C3%A2n_Ph%C3%BA_(2).jpg) |
| Bún bò Huế | Kham Tran  -  www.khamtran.com · `bun-bo.jpg` | [CC BY 3.0](https://creativecommons.org/licenses/by/3.0) · [Nguồn ảnh](https://commons.wikimedia.org/wiki/File:Bun-Bo-Hue-from-Huong-Giang-2011.jpg) |
| Cơm tấm sườn trứng | Phương Huy · `com-tam-suon.jpg` | [CC0](http://creativecommons.org/publicdomain/zero/1.0/deed.en) · [Nguồn ảnh](https://commons.wikimedia.org/wiki/File:C%C6%A1m_t%E1%BA%A5m_SG_%E1%BB%9F_ch%E1%BB%A3_BL_ng8th4n2023_(d%C4%A9a_c%C6%A1m_s%C6%B0%E1%BB%9Dn_tr%E1%BB%A9ng_ch%E1%BA%A3)_(1).jpg) |
| Bún chả cá Đà Nẵng | Everyday English · `bun-cha-ca.jpg` | [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0) · [Nguồn ảnh](https://commons.wikimedia.org/wiki/File:Bun_cha_ca.jpg) |
| Bún riêu cua | Alpha · `bun-rieu.jpg` | [CC BY-SA 2.0](https://creativecommons.org/licenses/by-sa/2.0) · [Nguồn ảnh](https://commons.wikimedia.org/wiki/File:B%C3%BAn_ri%C3%AAu_cua,_crab_roe_pate_and_fried_shallots.jpg) |
| Hủ tiếu Nam Vang | Tonbi ko · `hu-tieu.jpg` | [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0) · [Nguồn ảnh](https://commons.wikimedia.org/wiki/File:H%E1%BB%A7_ti%E1%BA%BFu_Nam_Vang_S%C3%A0i_G%C3%B2n.jpg) |
| Bún thịt nướng | Lưu Ly · `bun-thit-nuong.jpg` | [Public domain](https://commons.wikimedia.org/wiki/Commons:Reusing_content_outside_Wikimedia) · [Nguồn ảnh](https://commons.wikimedia.org/wiki/File:Bun_thit_nuong.jpg) |
| Bánh đa cua Hải Phòng | Phương Huy · `banh-da-cua.jpg` | [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0) · [Nguồn ảnh](https://commons.wikimedia.org/wiki/File:B%C3%A1nh_%C4%91a_cua_H%E1%BA%A3i_Ph%C3%B2ng_(27.2_(1).jpg) |
| Chả cá Lã Vọng | tuhang · `cha-ca-la-vong.jpg` | [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0) · [Nguồn ảnh](https://commons.wikimedia.org/wiki/File:Cha_ca_La_Vong.jpg) |
| Bún ốc | chuong nguyen · `bun-oc.jpg` | [CC0](http://creativecommons.org/publicdomain/zero/1.0/deed.en) · [Nguồn ảnh](https://commons.wikimedia.org/wiki/File:B%C3%BAn_%E1%BB%91c_2.jpg) |
| Bún đậu mắm tôm | Viethavvh · `bun-dau-mam-tom.jpg` | [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0) · [Nguồn ảnh](https://commons.wikimedia.org/wiki/File:B%C3%BAn_%C4%91%E1%BA%ADu_m%E1%BA%AFm_t%C3%B4m,_b%C3%BAn_nem_r%C3%A1n.JPG) |
| Phở gà | Guilhem Vellut  from Paris, France · `pho-ga.jpg` | [CC BY 2.0](https://creativecommons.org/licenses/by/2.0) · [Nguồn ảnh](https://commons.wikimedia.org/wiki/File:Chicken_Pho,_Pho_21,_Montparnasse,_Paris_001.jpg) |
| Xôi xéo | Viethavvh · `xoi-xeo.jpg` | [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0) · [Nguồn ảnh](https://commons.wikimedia.org/wiki/File:X%C3%B4i_x%C3%A9o.jpg) |
| Bánh chưng | Syced · `banh-chung.jpg` | [CC0](http://creativecommons.org/publicdomain/zero/1.0/deed.en) · [Nguồn ảnh](https://commons.wikimedia.org/wiki/File:Banh_Chung_in_Vietnam.jpg) |
| Nem chua rán | Group6gma04 · `nem-chua-ran.jpg` | [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0) · [Nguồn ảnh](https://commons.wikimedia.org/wiki/File:Nem-chua-ran2.jpg) |
| Cao lầu Hội An | Dragfyre · `cao-lau.jpg` | [CC BY-SA 3.0](https://creativecommons.org/licenses/by-sa/3.0) · [Nguồn ảnh](https://commons.wikimedia.org/wiki/File:Cao_Lau_Hoi_An.JPG) |
| Cơm hến Huế | Trinhthunga09 · `com-hen.jpg` | [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0) · [Nguồn ảnh](https://commons.wikimedia.org/wiki/File:Com-hen-hue.jpg) |
| Bún bò Nam Bộ | fabulousfabs · `bun-bo-nam-bo.jpg` | [CC BY 2.0](https://creativecommons.org/licenses/by/2.0) · [Nguồn ảnh](https://commons.wikimedia.org/wiki/File:Bun_Bo_Nam_Bo.jpg) |
| Bánh bèo chén | Nha Nghi La  from Ho Chi Minh, Viet Nam · `banh-beo.jpg` | [CC BY 2.0](https://creativecommons.org/licenses/by/2.0) · [Nguồn ảnh](https://commons.wikimedia.org/wiki/File:B%C3%A1nh_b%C3%A8o_ch%C3%A9n.jpg) |
| Bánh bột lọc tôm thịt | Alpha · `banh-bot-loc.jpg` | [CC BY-SA 2.0](https://creativecommons.org/licenses/by-sa/2.0) · [Nguồn ảnh](https://commons.wikimedia.org/wiki/File:B%C3%A1nh_b%C3%A8o,_B%C3%A1nh_%C3%ADt_tr%E1%BA%A7n,_B%C3%A1nh_b%E1%BB%99t_l%E1%BB%8Dc_tr%E1%BA%A7n.jpg) |
| Bánh canh cá lóc | Phương Huy  ( thảo luận ) · `banh-canh-ca-loc.jpg` | [Public domain](https://commons.wikimedia.org/wiki/Commons:Reusing_content_outside_Wikimedia) · [Nguồn ảnh](https://commons.wikimedia.org/wiki/File:B%C3%A1nh_canh_c%C3%A1_l%C3%B3c_S%C3%A0i_G%C3%B2n_2012-07-02_11.53.24.jpg) |
| Bún cá Nha Trang | Nguyen Thi Quynh Tram · `bun-ca-nha-trang.jpg` | [CC BY 3.0](https://creativecommons.org/licenses/by/3.0) · [Nguồn ảnh](https://commons.wikimedia.org/wiki/File:Bun_cha_ca_nha_trang.jpg) |
| Nem nướng Nha Trang | Letruongan1122 · `nem-nuong-nha-trang.jpg` | [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0) · [Nguồn ảnh](https://commons.wikimedia.org/wiki/File:M%E1%BA%B9t_nem_n%C6%B0%E1%BB%9Bng_Nha_Trang.jpg) |
| Bánh tráng cuốn thịt heo | Lê Huỳnh Bộ · `banh-trang-cuon-thit-heo.jpg` | [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0) · [Nguồn ảnh](https://commons.wikimedia.org/wiki/File:B%C3%A1nh_tr%C3%A1ng_cu%E1%BB%91n_th%E1%BB%8Bt_heo.jpg) |
| Mì Quảng tôm thịt | Jpatokal · `mi-quang-tom-thit.jpg` | [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0) · [Nguồn ảnh](https://commons.wikimedia.org/wiki/File:Mi_Quang_1A_Danang.jpg) |
| Cơm tấm bì chả | Charles Haynes · `com-tam-bi-cha.jpg` | [CC BY-SA 2.0](https://creativecommons.org/licenses/by-sa/2.0) · [Nguồn ảnh](https://commons.wikimedia.org/wiki/File:C%C6%A1m_T%E1%BA%A5m_B%C3%AC_S%C6%B0%E1%BB%9Dn_Ch%E1%BA%A3.jpg) |
| Bún mắm miền Tây | avlxyz · `bun-mam.jpg` | [CC BY-SA 2.0](https://creativecommons.org/licenses/by-sa/2.0) · [Nguồn ảnh](https://commons.wikimedia.org/wiki/File:Bun_Mam_Soc_Trang_-_fish,_prawns,_pork_-_Vinh_Long_Market_VND20000_-_1.jpg) |
| Bánh canh ghẹ | bánh canh cu · `banh-canh-ghe.jpg` | [CC0](http://creativecommons.org/publicdomain/zero/1.0/deed.en) · [Nguồn ảnh](https://commons.wikimedia.org/wiki/File:B%C3%A1nh_Canh_Cua.jpg) |
| Bánh tráng trộn | Memberofc1  ( thảo luận ) · `banh-trang-tron.jpg` | [CC BY-SA 3.0](https://creativecommons.org/licenses/by-sa/3.0) · [Nguồn ảnh](https://commons.wikimedia.org/wiki/File:Banh_trang_tron_(mua_tai_truong_thpt_giadinh).jpg) |
| Rau muống xào tỏi | Phương Huy  ( thảo luận ) · `rau-muong-xao-toi.jpg` | [Public domain](https://commons.wikimedia.org/wiki/Commons:Reusing_content_outside_Wikimedia) · [Nguồn ảnh](https://commons.wikimedia.org/wiki/File:Rau_mu%E1%BB%91ng_x%C3%A0o_t%E1%BB%8Fi,_th%C3%A1ng_4_n%C4%83m_2018.jpg) |
| Đậu hũ nhồi thịt sốt cà | HungryHuy · `dau-hu-nhoi-thit.jpg` | [CC BY 2.0](https://creativecommons.org/licenses/by/2.0) · [Nguồn ảnh](https://commons.wikimedia.org/wiki/File:Dau_sot_ca,_tofu_stuffed_with_pork,_in_tomato_sauce.jpg) |
| Canh khổ qua nhồi thịt | Sài Gòn Ăn Chơi 24h · `canh-kho-qua.jpg` | [CC BY 3.0](https://creativecommons.org/licenses/by/3.0) · [Nguồn ảnh](https://commons.wikimedia.org/wiki/File:Canh_kh%E1%BB%95_qua_nh%E1%BB%93i_th%E1%BB%8Bt.png) |
| Lẩu bò | Phương Huy  ( thảo luận ) · `lau-bo.jpg` | [Public domain](https://commons.wikimedia.org/wiki/Commons:Reusing_content_outside_Wikimedia) · [Nguồn ảnh](https://commons.wikimedia.org/wiki/File:L%E1%BA%A9u_b%C3%B2_t%E1%BA%A1i_qu%C3%A1n_B%C3%B2_c%C6%B0%E1%BB%9Di_(3).jpg) |
| Lẩu hải sản | Phương Huy  ( thảo luận ) · `lau-hai-san.jpg` | [Public domain](https://commons.wikimedia.org/wiki/Commons:Reusing_content_outside_Wikimedia) · [Nguồn ảnh](https://commons.wikimedia.org/wiki/File:L%E1%BA%A9u_h%E1%BA%A3i_s%E1%BA%A3n_t%E1%BA%A1i_Ael_mall_n%C4%83m_2016_(1).jpg) |
| Gà nướng muối ớt | Baoothersks · `ga-nuong-muoi-ot.jpg` | [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0) · [Nguồn ảnh](https://commons.wikimedia.org/wiki/File:G%C3%A0_n%C6%B0%E1%BB%9Bng_mu%E1%BB%91i_%E1%BB%9Bt_(2).jpg) |
| Sườn nướng mật ong | Phương Huy  ( thảo luận ) · `suon-nuong.jpg` | [Public domain](https://commons.wikimedia.org/wiki/Commons:Reusing_content_outside_Wikimedia) · [Nguồn ảnh](https://commons.wikimedia.org/wiki/File:M%C3%B3n_n%C6%B0%E1%BB%9Bng_H%C3%A0n_Qu%E1%BB%91c_(s%C6%B0%E1%BB%9Dn_%C6%B0%E1%BB%9Bp_t%E1%BA%A9m_m%E1%BA%ADt_ong_n%C6%B0%E1%BB%9Bng),_T10_n%C4%83m_2016_(3).jpg) |
| Bò kho bánh mì | Phương Huy  ( thảo luận ) · `bo-kho.jpg` | [Public domain](https://commons.wikimedia.org/wiki/Commons:Reusing_content_outside_Wikimedia) · [Nguồn ảnh](https://commons.wikimedia.org/wiki/File:B%C3%A1nh_m%C3%AC_b%C3%B2_kho_%E1%BB%9F_c%C3%A0_ph%C3%AA_Nguy%E1%BB%87t_Ca.jpg) |
| Bánh mì thịt nguội | Minh Nguyen · `banh-mi-thit.jpg` | [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0) · [Nguồn ảnh](https://commons.wikimedia.org/wiki/File:B%C3%A1nh_m%C3%AC_th%E1%BB%8Bt_ngu%E1%BB%99i.jpg) |
| Bánh flan caramel | AlekhyaDas · `banh-flan.jpg` | [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0) · [Nguồn ảnh](https://commons.wikimedia.org/wiki/File:Caramel_Custard_Dessert.jpg) |
| Sinh tố bơ | Hoangkid  ( thảo luận ) · `sinh-to-bo.jpg` | [Public domain](https://commons.wikimedia.org/wiki/Commons:Reusing_content_outside_Wikimedia) · [Nguồn ảnh](https://commons.wikimedia.org/wiki/File:Sinh_t%E1%BB%91_b%C6%A1.jpg) |
| Cơm gà xé | Taikhuong04 · `com-ga.jpg` | [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/) · [Nguồn ảnh](https://commons.wikimedia.org/wiki/File:Com_ga_Viet_Nam_voi_ga_luoc_com_vang_va_nuoc_cham.jpg) |
| Salad gà áp chảo | Kotivalo · `salad-ga.jpg` | [CC0](https://creativecommons.org/publicdomain/zero/1.0/) · [Nguồn ảnh](https://commons.wikimedia.org/wiki/File:Chicken_salad_on_striped_tablecloth.jpg) |
| Sữa chua trái cây | Jumbocombo0811 · `sua-chua-trai-cay.jpg` | [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/) · [Nguồn ảnh](https://commons.wikimedia.org/wiki/File:Yogurt_fruit_bowl.jpg) |
| Bánh xèo tôm thịt | Ser Amantio di Nicolao · `banh-xeo.jpg` | [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/) · [Nguồn ảnh](https://commons.wikimedia.org/wiki/File:B%C3%A1nh_x%C3%A8o_with_pork_sausage_and_shrimp_served_with_various_garnishes.jpg) |
| Bò lúc lắc khoai tây | VTBKHOA · `bo-luc-lac.jpg` | [CC BY-SA 3.0](https://creativecommons.org/licenses/by-sa/3.0/) · [Nguồn ảnh](https://commons.wikimedia.org/wiki/File:Bo_luc_lac.jpg) |
| Canh chua cá | Phuong Huy · `canh-chua.jpg` | [CC0](https://creativecommons.org/publicdomain/zero/1.0/) · [Nguồn ảnh](https://commons.wikimedia.org/wiki/File:Canh_chua_c%C3%A1_di%C3%AAu_h%E1%BB%93ng.jpg) |
| Trứng sốt cà chua | Kaap bij Sneeuw · `trung-ca-chua.jpg` | [CC0](https://creativecommons.org/publicdomain/zero/1.0/) · [Nguồn ảnh](https://commons.wikimedia.org/wiki/File:Tomato_with_egg.jpg) |
| Khoai lang nướng mật ong | U.S. Department of Agriculture · `khoai-lang.jpg` | [Public domain](https://commons.wikimedia.org/wiki/Commons:Reusing_content_outside_Wikimedia) · [Nguồn ảnh](https://commons.wikimedia.org/wiki/File:20160923-AMS-LSC-0147.jpg) |
| Bánh giò nóng | Lanceranae · `banh-gio.jpg` | [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/) · [Nguồn ảnh](https://commons.wikimedia.org/wiki/File:Banh-gio-viet-nam.jpg) |
| Xôi mặn trứng cút | Nguyen Thi Quynh Tram · `xoi-man.jpg` | [CC BY 3.0](https://creativecommons.org/licenses/by/3.0/) · [Nguồn ảnh](https://commons.wikimedia.org/wiki/File:Xoi_man.JPG) |
| Bún thang Hà Nội | Nguyễn Thanh Quang · `bun-thang.jpg` | [CC BY-SA 3.0](https://creativecommons.org/licenses/by-sa/3.0/) · [Nguồn ảnh](https://commons.wikimedia.org/wiki/File:B%C3%BAn_thang.JPG) |
| Chả giò chiên | Raj1818913 · `cha-gio.jpg` | [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/) · [Nguồn ảnh](https://commons.wikimedia.org/wiki/File:Cha_gio_(vitnamese_spring_roll).jpg) |
| Bánh cuốn nóng | Valentin Orange · `banh-cuon.jpg` | [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/) · [Nguồn ảnh](https://commons.wikimedia.org/wiki/File:Banh-cuon-hanoi.jpg) |
| Cơm chiên hải sản | Andy Li · `com-chien-hai-san.jpg` | [CC0](https://creativecommons.org/publicdomain/zero/1.0/) · [Nguồn ảnh](https://commons.wikimedia.org/wiki/File:Crab_Roe_Sauce_Seafood_Fried_Rice_-_Aberdeen_Seafood_2025-09-08.jpg) |
| Bánh căn Đà Lạt | Saigon Time · `banh-can.jpg` | [CC0](https://creativecommons.org/publicdomain/zero/1.0/deed.en) · [Nguồn ảnh](https://commons.wikimedia.org/wiki/File:B%C3%A1nh_c%C4%83n_in_phan_rang%2C_vietnam.jpg) |
| Bánh nậm Huế | Christopher Crouzet · `banh-nam.jpg` | [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0) · [Nguồn ảnh](https://commons.wikimedia.org/wiki/File:B%C3%A1nh_N%E1%BA%ADm.jpg) |
| Bún mọc sườn | Phương Huy · `bun-moc.jpg` | [Phạm vi công cộng](https://commons.wikimedia.org/wiki/Commons:Reusing_content_outside_Wikimedia) · [Nguồn ảnh](https://commons.wikimedia.org/wiki/File:B%C3%BAn_m%E1%BB%8Dc_s%C6%B0%E1%BB%9Dn_non_(th%C3%A1ng_8_n%C4%83m_2018)_(1).jpg) |
| Bún cá rô dọc mùng | Viethavvh · `bun-doc-mung.jpg` | [CC BY-SA 3.0](https://creativecommons.org/licenses/by-sa/3.0) · [Nguồn ảnh](https://commons.wikimedia.org/wiki/File:B%C3%BAn_c%C3%A1.JPG) |
| Bánh tráng nướng | Huutai11791 · `banh-trang-nuong.jpg` | [CC BY-SA 3.0](https://creativecommons.org/licenses/by-sa/3.0) · [Nguồn ảnh](https://commons.wikimedia.org/wiki/File:Pizzabanhtrangnuong.JPG) |
| Bánh bao nhân thịt trứng | Tonbi ko · `banh-bao.jpg` | [CC BY-SA 3.0](https://creativecommons.org/licenses/by-sa/3.0) · [Nguồn ảnh](https://commons.wikimedia.org/wiki/File:Banh_Bao_at_Tay_Son_Binh_Dinh_Vietnam.JPG) |
| Bò né trứng | Kwozyn · `bo-ne.jpg` | [CC0](https://creativecommons.org/publicdomain/zero/1.0/deed.en) · [Nguồn ảnh](https://commons.wikimedia.org/wiki/File:B%C3%B2_n%C3%A9.jpg) |
| Cá kho tộ | Binh Giang · `ca-kho-to.jpg` | [Phạm vi công cộng](https://commons.wikimedia.org/wiki/Commons:Reusing_content_outside_Wikimedia) · [Nguồn ảnh](https://commons.wikimedia.org/wiki/File:C%C3%A1_kho_t%E1%BB%99.JPG) |
| Thịt kho trứng | Kingofthepings · `thit-kho-trung.jpg` | [CC BY-SA 3.0](https://creativecommons.org/licenses/by-sa/3.0) · [Nguồn ảnh](https://commons.wikimedia.org/wiki/File:Caramelized_Pork_and_Eggs.jpg) |
| Chả mực Hạ Long | Quyentruongrohgf · `cha-muc.jpg` | [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0) · [Nguồn ảnh](https://commons.wikimedia.org/wiki/File:Ch%E1%BA%A3_m%E1%BB%B1c_H%E1%BA%A1_Long,_Qu%E1%BA%A3ng_Ninh,_Vi%E1%BB%87t_Nam.jpg) |
| Sườn xào chua ngọt | Blemo25 · `suon-xao-chua-ngot.jpg` | [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0) · [Nguồn ảnh](https://commons.wikimedia.org/wiki/File:Suon_xao_chua_ngot_bac_ninh.jpg) |
| Lẩu Thái hải sản | Phương Huy · `lau-thai.jpg` | [Phạm vi công cộng](https://commons.wikimedia.org/wiki/Commons:Reusing_content_outside_Wikimedia) · [Nguồn ảnh](https://commons.wikimedia.org/wiki/File:L%E1%BA%A9u_Th%C3%A1i_chua_cay_%E1%BB%9F_qu%C3%A1n_%E1%BB%91c_La_C%C3%A0,_SnH_2013_(4).JPG) |
| Chè bưởi | bdanh · `che-buoi.jpg` | [CC BY-SA 3.0](https://creativecommons.org/licenses/by-sa/3.0) · [Nguồn ảnh](https://commons.wikimedia.org/wiki/File:Coc_che_buoi.jpeg) |
| Chè ba màu | Jess Lander · `che-ba-mau.jpg` | [CC BY 2.0](https://creativecommons.org/licenses/by/2.0) · [Nguồn ảnh](https://commons.wikimedia.org/wiki/File:Chendol2.jpg) |
| Chè chuối nước cốt dừa | HungryHuy · `che-chuoi.jpg` | [CC BY 2.0](https://creativecommons.org/licenses/by/2.0) · [Nguồn ảnh](https://commons.wikimedia.org/wiki/File:Banana,_tapioca,_coconut_creme_Vietnamese_pudding_(che_chuoi).jpg) |
| Súp cua trứng cút | Hoangkid · `sup-cua.jpg` | [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0) · [Nguồn ảnh](https://commons.wikimedia.org/wiki/File:S%C3%BAp_cua.jpg) |
| Gỏi ngó sen tôm thịt | USDAgov · `goi-ngo-sen.jpg` | [Phạm vi công cộng](https://commons.wikimedia.org/wiki/Commons:Reusing_content_outside_Wikimedia) · [Nguồn ảnh](https://commons.wikimedia.org/wiki/File:MyPlate_gov_Cultural_Food_(20241025-USDA-FNS-UNK-0051).jpg) |
| Sữa đậu nành | Kjokkenutstyr · `sua-dau-nanh.jpg` | [CC BY-SA 2.0](https://creativecommons.org/licenses/by-sa/2.0) · [Nguồn ảnh](https://commons.wikimedia.org/wiki/File:004-soymilk.jpg) |
| Gỏi đu đủ tôm | adactio · `goi-du-du.jpg` | [CC BY 2.0](https://creativecommons.org/licenses/by/2.0) · [Nguồn ảnh](https://www.flickr.com/photos/74105777@N00/5943701106) |

## Bật đăng nhập và đồng bộ dữ liệu

Để các mục cá nhân theo bạn sang máy khác, cần một dự án Supabase. Phần giao diện có thể được lưu trên dịch vụ hosting tĩnh; Supabase cung cấp đăng nhập và PostgreSQL cho dữ liệu dùng chung.

1. Tạo một project trong [Supabase](https://supabase.com/).
2. Trong Dashboard mở **SQL Editor → New query**. Dán toàn bộ nội dung trong `supabase.sql` rồi bấm **Run**. Script tạo bảng, quyền truy cập theo từng tài khoản (RLS) và view đánh giá công khai.
3. Trong phần **Authentication → URL Configuration**, đặt **Site URL** là `https://angihomnayyy.netlify.app/`. Trong **Redirect URLs**, thêm `https://angihomnayyy.netlify.app/**`, `http://localhost:5500/**` và `http://127.0.0.1:5500/**` để dùng được cả website đã xuất bản lẫn VS Code Live Server. Nếu Site URL vẫn là localhost hoặc URL Netlify chưa nằm trong danh sách này, liên kết email có thể quay về localhost.
4. Trong phần **Authentication → Sign In / Providers**, bật nhà cung cấp **Email**.
5. Mở **Project Settings → API Keys** hoặc cửa sổ **Connect**. Sao chép **Project URL** và **publishable key** (các dự án cũ có thể hiện `anon` key) vào `config.js`:

   ```js
   window.APP_CONFIG = {
     supabaseUrl: 'https://PROJECT-ID.supabase.co',
     supabaseAnonKey: 'sb_publishable_...'
   };
   ```

   Chỉ dùng publishable/anon key trong mã chạy ở trình duyệt. **Không** dán `service_role` hoặc secret key vào `config.js`; các key đó có thể bỏ qua chính sách dữ liệu.

6. Mở website bằng Live Server hoặc địa chỉ Netlify. Bấm **Đăng nhập**, nhập email và mở liên kết Supabase gửi đến hộp thư trên cùng thiết bị. Mã gửi email đăng nhập về địa chỉ đang mở trang; nếu Supabase báo URL chưa được phép, hoàn thành bước 3 trong Dashboard.
7. Sau khi đăng nhập, lưu một món yêu thích hoặc kế hoạch tuần. Mở website ở thiết bị/trình duyệt khác, đăng nhập bằng cùng email để xem dữ liệu đã đồng bộ.

**Email khi chạy thử:** dịch vụ email mặc định của Supabase chỉ gửi đến địa chỉ thành viên trong tổ chức Supabase và giới hạn gửi thấp (hiện 2 email/giờ). Email của chính chủ tài khoản phù hợp để thử. Nếu muốn người khác đăng nhập, cần cấu hình nhà cung cấp SMTP riêng trong phần cài đặt Auth. [Tài liệu SMTP của Supabase](https://supabase.com/docs/guides/auth/auth-smtp).

Nếu đã tạo dữ liệu demo trước đó, website sẽ gộp danh sách món yêu thích trên trình duyệt vào tài khoản lần đầu đăng nhập. Kế hoạch tuần cục bộ được đưa lên nếu tài khoản chưa có kế hoạch của tuần hiện tại.

## Đưa website lên Internet

### Cách nhanh: Netlify Drop

1. Hoàn tất `config.js` và xác nhận đã điền đúng URL + publishable key.
2. Mở trang [Netlify Drop](https://app.netlify.com/drop), đăng nhập nếu được yêu cầu.
3. Kéo **cả thư mục dự án này** vào vùng tải lên; trong thư mục phải có `index.html` ở cấp ngoài cùng.
4. Netlify cấp cho bạn một địa chỉ HTTPS dạng `...netlify.app`. Dán địa chỉ đó vào Supabase **Authentication → URL Configuration** (Site URL và Redirect URLs).
5. Mở URL website, đăng nhập bằng email và thử lưu kế hoạch/yêu thích. Khi sửa giao diện, tải lại thư mục dự án lên mục Deploys của site để cập nhật.

Netlify hướng dẫn việc đăng tải thủ công bằng cách kéo thư mục website vào khu vực Drag and Drop. [Tài liệu Netlify](https://docs.netlify.com/deploy/create-deploys/).

### Cập nhật sau này

Với cách tải thủ công, sau khi sửa tệp, kéo thư mục dự án mới vào trang Deploys trên Netlify. Nếu kết nối dự án với GitHub thay vì tải thủ công, bạn có thể bật tự động xuất bản sau mỗi lần cập nhật mã.

## Mô tả đề tài cho tiểu luận

> “Ăn Gì Hôm Nay?” là ứng dụng web hỗ trợ người dùng tìm ý tưởng cho bữa ăn hằng ngày. Người dùng chọn tâm trạng, mức ngân sách và từ khóa để khám phá món phù hợp, sau đó có thể lưu món yêu thích, đánh giá món và lập kế hoạch ăn uống trong 7 ngày. Ứng dụng kết hợp HTML, CSS và JavaScript ở giao diện; Supabase Auth và PostgreSQL để đăng nhập và đồng bộ dữ liệu cá nhân khi triển khai trực tuyến. Đề tài giải quyết một tình huống đời thường bằng trải nghiệm tìm kiếm và lên kế hoạch đơn giản.

## Giới hạn hiện tại

- Giá, thời gian, số lượt và điểm đánh giá ban đầu là **dữ liệu minh họa**, không phải báo giá/thống kê trực tiếp từ quán ăn.
- Trang chưa tìm nhà hàng gần vị trí người dùng, chưa đặt món/thanh toán, và chưa có cơ sở dữ liệu công thức nấu ăn thực tế.
- Ảnh món trong thư mục `images/` được đóng gói cục bộ; địa chỉ/quán và dịch vụ đăng nhập cần Internet. Một số món chưa có ảnh đã xác minh nên hiển thị thông báo bổ sung ảnh.

## Tệp dự án

- `index.html` — bố cục, các cửa sổ đăng nhập/đánh giá/lịch ăn.
- `style.css` — giao diện, màu sắc, responsive và hiệu ứng.
- `app.js` — danh sách món, bộ lọc, yêu thích, đánh giá, lịch tuần, Supabase.
- `config.js` — chỗ nhập URL và publishable key của project Supabase.
- `photos.js` — danh mục ghi công ảnh được kiểm tra; ảnh cục bộ nằm trong `images/`.
- `supabase.sql` — lệnh tạo bảng và quyền đọc/ghi an toàn theo tài khoản.


## Bổ sung hình ảnh – bản v5

24 ảnh minh họa được tạo bằng công cụ imagegen tích hợp. Đây là ảnh minh họa, không phải ảnh chụp món tại quán. Thông tin tác giả và giấy phép của 76 ảnh nguồn được giữ nguyên.

- Mì trộn trứng lòng đào: images/mi-tron-ai.jpg
- Yến mạch chuối sữa chua: images/chuoi-yen-mach-ai.jpg
- Mì Quảng gà: images/mi-quang-ai.jpg
- Lẩu gà lá é: images/lau-ga-la-e-ai.jpg
- Bún mắm nêm thịt heo: images/bun-mam-nem-ai.jpg
- Cơm âm phủ Huế: images/com-am-phu-ai.jpg
- Hủ tiếu gõ: images/hu-tieu-go-ai.jpg
- Gỏi cuốn bò: images/goi-cuon-bo-ai.jpg
- Gỏi gà bắp cải: images/goi-ga-bap-cai-ai.jpg
- Gỏi xoài khô cá: images/goi-xoai-kho-ca-ai.jpg
- Gỏi bò rau thơm: images/goi-bo-ai.jpg
- Gỏi tai heo: images/goi-tai-heo-ai.jpg
- Gỏi rau muống tôm: images/goi-rau-muong-ai.jpg
- Gà kho gừng: images/ga-kho-gung-ai.jpg
- Cá rim mặn ngọt: images/ca-rim-ai.jpg
- Tôm rang thịt ba chỉ: images/tom-rang-thit-ai.jpg
- Trứng chiên hành: images/trung-chien-ai.jpg
- Đậu hũ sốt cà chua: images/dau-hu-sot-ca-ai.jpg
- Canh rong biển đậu hũ: images/canh-rong-bien-ai.jpg
- Canh bí đỏ tôm: images/canh-bi-do-ai.jpg
- Canh gà lá giang: images/canh-ga-la-giang-ai.jpg
- Lẩu mắm miền Tây: images/lau-mam-ai.jpg
- Chả cá thác lác chiên: images/cha-ca-thac-lac-ai.jpg
- Chè Thái trái cây: images/che-thai-ai.jpg

Prompt tạo ảnh được lưu tại IMAGE_PROMPTS.md.


## Bản v6: căn bếp nhỏ

- 100 công thức tham khảo tự biên soạn cho cách nấu tại nhà; định lượng mặc định 2 người, đổi được từ 1 đến 12 người. Thời gian trên thẻ là gợi ý của bản cũ; công thức món ninh, hấp hoặc ngâm cần thêm thời gian.
- Tủ lạnh: nhập nguyên liệu ngăn bằng dấu phẩy, hỗ trợ tên không dấu và một số tên gọi vùng miền; xếp món theo tỷ lệ nguyên liệu chính có sẵn. Gia vị cơ bản không tính vào tỷ lệ.
- Danh sách đi chợ: tổng hợp các bữa đã chọn trong kế hoạch tuần, cộng lượng nguyên liệu có cùng tên và đơn vị; đánh dấu và sao chép. Số người áp dụng cho mọi bữa trong kế hoạch. Dấu đã mua chỉ lưu ở localStorage trên thiết bị hiện tại.
- Không thay đổi schema Supabase; kế hoạch vẫn dùng weekly_plans hiện có.


## Bản v8: tìm món vừa chọn trên Google Maps

Bấm Chọn món bất ngờ → dưới tên món, bấm “📍 Tìm món đó gần đây”. Google Maps mở ở thẻ mới với từ khóa tên món + “gần đây”. Mỗi lần chọn món khác, liên kết tự cập nhật. Nút cũng có trong chi tiết tất cả các món.

Cho phép vị trí trên Google Maps để kết quả gần vị trí thực tế hơn, hoặc nhập khu vực trên Google Maps. Website không tự xin hoặc gửi tọa độ qua nút này. Kết quả do Google Maps cung cấp; không bảo đảm mọi quán có bán đúng món hay đang mở. Liên kết Maps không cần API key: https://developers.google.com/maps/documentation/urls/get-started

Chạy bằng VS Code Live Server (không mở trực tiếp bằng file:// vì trang dùng JavaScript modules). Để cập nhật website Netlify hiện có, tải toàn bộ thư mục bản v8 lên Deploys của site.
