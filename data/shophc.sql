-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th10 14, 2022 lúc 07:06 AM
-- Phiên bản máy phục vụ: 5.7.25
-- Phiên bản PHP: 7.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shophc`
--
DROP DATABASE IF EXISTS `shophcc`;
CREATE DATABASE IF NOT EXISTS `shophcc` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `shophcc`;
-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(11) NOT NULL,
  `tendanhmuc` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `tendanhmuc`) VALUES
(1, 'Cọ'),
(2, 'Màu vẽ'),
(3, 'Bút'),
(4, 'Giấy');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `diachi`
--

CREATE TABLE `diachi` (
  `id` int(11) NOT NULL,
  `nguoidung_id` int(11) NOT NULL,
  `diachi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `macdinh` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `diachi`
--

INSERT INTO `diachi` (`id`, `nguoidung_id`, `diachi`, `macdinh`) VALUES
(1, 4, 'Đông Xuyên, Long Xuyên', 1),
(2, 5, 'Mỹ Xuyên, Long Xuyên', 1),
(3, 7, 'Mỹ Long', 1),
(4, 8, 'Mỹ Thới', 1),
(5, 9, 'Mỹ Xuyên', 1),
(6, 10, 'Mỹ Long', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `id` int(11) NOT NULL,
  `nguoidung_id` int(11) NOT NULL,
  `diachi_id` int(11) DEFAULT NULL,
  `ngay` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tongtien` float NOT NULL DEFAULT '0',
  `ghichu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`id`, `nguoidung_id`, `diachi_id`, `ngay`, `tongtien`, `ghichu`) VALUES
(1, 4, 1, '2020-10-23 13:38:40', 1320000, NULL),
(2, 5, 2, '2020-10-24 15:13:10', 3920000, NULL),
(3, 8, 4, '2021-03-13 16:38:57', 6035000, NULL),
(4, 9, 5, '2021-03-13 16:53:28', 6035000, NULL),
(5, 10, 6, '2021-03-13 16:55:44', 7800000, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhangct`
--

CREATE TABLE `donhangct` (
  `id` int(11) NOT NULL,
  `donhang_id` int(11) NOT NULL,
  `mathang_id` int(11) NOT NULL,
  `dongia` float NOT NULL DEFAULT '0',
  `soluong` int(11) NOT NULL DEFAULT '1',
  `thanhtien` float NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `donhangct`
--

INSERT INTO `donhangct` (`id`, `donhang_id`, `mathang_id`, `dongia`, `soluong`, `thanhtien`) VALUES
(1, 1, 1, 1320000, 1, 1320000),
(2, 2, 3, 2130000, 1, 2130000),
(3, 2, 2, 1790000, 1, 1790000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mathang`
--

CREATE TABLE `mathang` (
  `id` int(11) NOT NULL,
  `tenmathang` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mota` text COLLATE utf8_unicode_ci,
  `giagoc` float NOT NULL DEFAULT '0',
  `giaban` float NOT NULL DEFAULT '0',
  `soluongton` int(11) NOT NULL DEFAULT '0',
  `hinhanh` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `danhmuc_id` int(11) NOT NULL,
  `luotxem` int(11) NOT NULL DEFAULT '0',
  `luotmua` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `mathang`
--

INSERT INTO `mathang` (`id`, `tenmathang`, `mota`, `giagoc`, `giaban`, `soluongton`, `hinhanh`, `danhmuc_id`, `luotxem`, `luotmua`) VALUES
(1, 'Cọ vẽ Nước Waterbrush SUPERIOR', NULL, 0, 28000, 10, 'images/c1.jpg', 1, 3, 0),
(2, 'Cọ Mảng quét màu nước ART SECRET lông Dê', NULL, 0, 64000, 10, 'images/c2.jpg', 1, 9, 0),
(3, 'Bộ chì màu Khô FABER CASTELL Polychromos', NULL, 0, 1285000, 10, 'images/m1.jpg', 2, 9, 0),
(4, 'Bộ bút marker TOUCHLIIT Full 204 màu ', NULL, 0, 1750000, 10, 'images/b1.jpg', 3, 7, 0),
(5, ' Giấy vẽ màu Nước CANSON Pháp (Vân mịn)', 'Rẻ vô địch', 0, 25000, 10, 'images/g2.jpg', 4, 5, 0),
(6, 'Giấy vẽ scan gateway dày 73gsm (tracing paper)', 'Siêu xịn', 0, 50000, 10, 'images/g3.jpg', 4, 1, 0),
(7, 'Giấy vẽ Truyện Tranh KUELOX 120gsm A4 Đúng (30 tờ)', 'KHÔNG DÙNG VẼ CÁC LOẠI MÀU CÓ NƯỚC', 0, 47000, 15, 'images/g4.jpg', 4, 1, 0),
(8, 'Giấy vẽ CANSON Đen 180gsm ( 30 tờ)', 'KHÔNG DÙNG VẼ CÁC LOẠI MÀU CÓ NƯỚC', 0, 40000, 20, 'images/g5.jpg', 4, 0, 0),
(9, 'Giấy vẽ màu Nước HOA HỒNG 300gsm khổ 8K vân nổi ', 'Khổ lỡ sẽ nhỏ hơn khổ giấy đứng', 0, 120000, 10, 'images/g6.jpg', 4, 0, 0),
(10, 'Giấy vẽ Chì ROKI Dày 250gsm truyền thần, marker (vân mịn)', 'KHÔNG DÙNG VẼ CÁC LOẠI MÀU CÓ NƯỚC', 0, 40000, 10, 'images/g7.jpg', 4, 0, 0),
(11, 'Giấy vẽ màu Nước BAOHONG 100% cotton (vân mịn HOT)', '', 0, 28000, 30000, 'images/g8.jpg', 4, 0, 0),
(12, 'Giấy vẽ màu Nước Ý FABRIANO 300gsm (vân mịn)', '', 0, 20000, 20, 'images/g9.jpg', 4, 0, 0),
(13, 'Bút màu dạ quang PENTEL Pastel (set 7 cây)', '', 0, 30000, 15, 'images/b2.jpg', 3, 0, 0),
(14, 'Bộ than cành liễu MONT MARTE ( set10 cây)', '', 0, 65000, 20, 'images/b3.jpg', 3, 0, 0),
(15, 'Bút màu viết thư pháp PENTEL Fude Touch( bút lẻ)', '', 0, 34000, 100, 'images/b4.jpg', 3, 0, 0),
(16, 'Bút màu dạ quang FABER CASTELL Pastel (bút lẻ)', '', 0, 24000, 100, 'images/b5.jpg', 3, 0, 0),
(17, 'Bộ bút chì chuyên nghiệp CRETACOLOR Ultimo (35 món)', '', 0, 1247000, 15, 'images/b6.jpg', 3, 0, 0),
(18, 'Bút màu vẽ mọi vật liệu SAKURA Pen Touch (bút lẻ)', '', 0, 30000, 50, 'images/b7.jpg', 3, 0, 0),
(19, 'Bút chì bấm PENTEL Graphgear 500 (đúc thép)', '', 0, 140000, 30, 'images/b8.jpg', 3, 0, 0),
(20, 'Bút sắt NIKKO Jappan lẻ (kèm 2 ngòi)', '', 0, 100000, 40, 'images/b9.jpg', 3, 0, 0),
(21, 'Bộ màu Nước Tuýp HOLBEIN Shigure 5ml (12 màu, bản giới hạn)', '', 0, 740000, 15, 'images/m2.jpg', 2, 0, 0),
(22, 'Màu vẽ Bột Nhũ PAUL RUBENS Aqua (hũ lẻ)', '', 0, 90000, 30, 'images/m3.jpg', 2, 0, 0),
(23, 'Màu nước WHITE NIGHTS Tuýp 10ml Lẻ (nhóm Pastel)', 'g', 0, 70000, 50, 'images/m4.jpg', 2, 0, 0),
(24, 'Bộ màu Nước Tuýp MARIE\'S 12ml (hộp giấy)', '', 0, 750000, 10, 'images/m5.jpg', 2, 0, 0),
(25, 'Bộ màu nước Nén SUPERIOR kèm cọ (hộp nhựa)', '', 0, 115000, 30, 'images/m6.jpg', 2, 0, 0),
(26, 'Bộ chì màu Khô MARCO Renoir (hộp thiếc)', '', 0, 440000, 20, 'images/m7.jpg', 2, 0, 0),
(27, 'Bộ màu vẽ Poster PENTEL 12 hũ (30ml)', '', 0, 400000, 20, 'images/m8.jpg', 2, 0, 0),
(28, 'Màu vẽ Acrylic MONT MARTE Nhũ tuýp lẻ (50ml)', '', 0, 37000, 50, 'images/m9.jpg', 2, 0, 0),
(29, 'Bộ cọ vẽ ART SECRET 24 cây (kèm túi vải)', '', 0, 530000, 20, 'images/c3.jpg', 1, 0, 0),
(30, 'Bộ cọ vẽ ART SECRET 12 cây (kèm ống xanh)', '', 0, 200000, 15, 'images/c4.jpg', 1, 0, 0),
(31, 'Cọ vẽ màu nước NABII Holic Snow lông Sóc (mix)', '', 0, 105000, 20, 'images/c5.jpg', 1, 0, 0),
(32, 'Bộ cọ vẽ MONT MARTE Acrylic Gallery 4 cây (HS0010)', '', 0, 40000, 20, 'images/c6.jpg', 1, 0, 0),
(33, 'Bộ cọ vẽ Acrylic ART SECRET 16 cây (kèm túi )', '', 0, 340000, 15, 'images/c7.jpg', 1, 0, 0),
(34, 'Bộ cọ vẽ màu Gouache HIMI Green (3 cây)', '', 0, 55000, 30, 'images/c8.jpg', 1, 0, 0),
(35, 'Cọ Mảng quét màu nước ART SECRET lông Sóc (3458)', '', 0, 184000, 20, 'images/c9.jpg', 1, 2, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidung`
--

CREATE TABLE `nguoidung` (
  `id` int(11) NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sodienthoai` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `matkhau` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hoten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `loai` tinyint(4) NOT NULL DEFAULT '3',
  `trangthai` tinyint(4) NOT NULL DEFAULT '1',
  `hinhanh` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nguoidung`
--

INSERT INTO `nguoidung` (`id`, `email`, `sodienthoai`, `matkhau`, `hoten`, `loai`, `trangthai`, `hinhanh`) VALUES
(1, 'abc@abc.com', '0988994683', '900150983cd24fb0d6963f7d28e17f72', 'Quản trị ABC', 1, 1, '4.jpg'),
(2, 'def@abc.com', '0988994684', '900150983cd24fb0d6963f7d28e17f72', 'Nhân viên DEF', 2, 1, NULL),
(3, 'ghi@abc.com', '0988994685', '900150983cd24fb0d6963f7d28e17f72', 'Nhân viên GHI', 2, 1, NULL),
(4, 'kh1@gmail.com', '0988994686', '900150983cd24fb0d6963f7d28e17f72', 'Nguyễn Thị Thu An', 3, 1, NULL),
(5, 'kh2@gmail.com', '0988994687', '900150983cd24fb0d6963f7d28e17f72', 'Hồ Xuân Minh', 3, 1, NULL),
(6, 'aaa@abc.com', '1234567890', 'e807f1fcf82d132f9bb018ca6738a19f', 'AAA', 3, 1, NULL),
(7, 'bbb@abc.com', '1234567891', '0f7e44a922df352c05c5f73cb40ba115', 'BBB', 3, 1, NULL),
(8, 'ccc@abc.com', '1234567892', 'd893377c9d852e09874125b10a0e4f66', 'CCC', 3, 1, NULL),
(9, 'ddd@abc.com', '1234567893', '43042f668f07adfd174cb1823d4795e1', 'DDD', 3, 1, NULL),
(10, 'eee@abc.com', '1234567894', 'f66f4446648ae7ae56419eca43bf2b8a', 'EEE', 3, 1, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `diachi`
--
ALTER TABLE `diachi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nguoidung_id` (`nguoidung_id`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nguoidung_id` (`nguoidung_id`),
  ADD KEY `diachi_id` (`diachi_id`);

--
-- Chỉ mục cho bảng `donhangct`
--
ALTER TABLE `donhangct`
  ADD PRIMARY KEY (`id`),
  ADD KEY `donhang_id` (`donhang_id`),
  ADD KEY `mathang_id` (`mathang_id`);

--
-- Chỉ mục cho bảng `mathang`
--
ALTER TABLE `mathang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `danhmuc_id` (`danhmuc_id`);

--
-- Chỉ mục cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `diachi`
--
ALTER TABLE `diachi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `donhangct`
--
ALTER TABLE `donhangct`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `mathang`
--
ALTER TABLE `mathang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `diachi`
--
ALTER TABLE `diachi`
  ADD CONSTRAINT `diachi_ibfk_1` FOREIGN KEY (`nguoidung_id`) REFERENCES `nguoidung` (`id`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_ibfk_1` FOREIGN KEY (`nguoidung_id`) REFERENCES `nguoidung` (`id`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `donhangct`
--
ALTER TABLE `donhangct`
  ADD CONSTRAINT `donhangct_ibfk_1` FOREIGN KEY (`donhang_id`) REFERENCES `donhang` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `donhangct_ibfk_2` FOREIGN KEY (`mathang_id`) REFERENCES `mathang` (`id`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `mathang`
--
ALTER TABLE `mathang`
  ADD CONSTRAINT `mathang_ibfk_1` FOREIGN KEY (`danhmuc_id`) REFERENCES `danhmuc` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
