-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 30, 2022 lúc 08:37 AM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `perfume`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cat_perfume`
--

CREATE TABLE `cat_perfume` (
  `id` int(11) NOT NULL,
  `catperfume` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parrent_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cat_perfume`
--

INSERT INTO `cat_perfume` (`id`, `catperfume`, `parrent_id`) VALUES
(11, 'Phụ kiện Apple', 0),
(12, 'Phụ kiện iPhone', 11),
(13, 'Phụ kiện iPad', 11),
(14, 'Phụ kiện Macbook', 11),
(15, 'Phụ kiện AirPods', 11),
(16, 'Phụ kiện SamSung', 0),
(17, 'Galaxy S Series', 16),
(18, 'Galaxy Note Series', 16),
(19, 'Galaxy A Series', 16),
(20, 'Phụ kiện Oppo', 0),
(21, 'Oppo Reno', 20),
(22, 'Oppo  Find X2', 20),
(23, 'Phụ kiện Xiaomi', 0),
(24, 'Xiaomi  Redmi note (...)', 23),
(25, 'Xiaomi  Redmi  (...)', 23),
(26, 'Xiaomi  Redmi note (...) Pro', 23),
(27, 'Phụ kiện hãng khác', 0),
(28, 'Phụ kiện Vivo', 27),
(29, 'Phụ kiện Vsmart', 27),
(30, 'Đồ chơi di động', 0),
(31, 'Sạc dự phòng', 30),
(32, 'Tai nghe Bluetooth', 30),
(33, 'Quạt mini', 30);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cat_user`
--

CREATE TABLE `cat_user` (
  `id` int(11) NOT NULL,
  `catuser` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cat_user`
--

INSERT INTO `cat_user` (`id`, `catuser`) VALUES
(1, 'Administrator'),
(3, 'Quản trị viên'),
(5, 'Khách hàng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `name_comment` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `create_comment` timestamp NOT NULL DEFAULT current_timestamp(),
  `id_per` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`id`, `name_comment`, `message`, `create_comment`, `id_per`) VALUES
(16, 'Trần Trung Tin', 'Nhutsdadad', '2022-08-28 13:11:31', 55),
(17, 'Trần Trung Tin', 'Nhutsdadad', '2022-08-28 13:11:34', 55),
(18, 'nhựt', 'xzczcz', '2022-08-29 01:08:46', 36);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `item`
--

CREATE TABLE `item` (
  `id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` longtext COLLATE utf8_unicode_ci NOT NULL,
  `per_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `item`
--

INSERT INTO `item` (`id`, `quantity`, `price`, `per_id`, `order_id`) VALUES
(11, 1, '459000', 57, 16),
(12, 1, '549000', 53, 17),
(13, 2, '459000', 55, 18),
(14, 1, '549000', 53, 19),
(15, 1, '45000', 62, 20);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `adress` text COLLATE utf8_unicode_ci NOT NULL,
  `note` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order`
--

INSERT INTO `order` (`id`, `user_id`, `status`, `phone`, `email`, `adress`, `note`) VALUES
(16, 15, 1, '0326565582', '', '', ''),
(17, 15, 1, '0326565582', 'cxz@gmail.com', 'duyen hai', 'helo'),
(18, 17, 0, '0326565582', 'cxz@gmail.com', '', ''),
(19, 1, 1, '0326565582', '', '', ''),
(20, 17, 1, '0326565582', 'hophan35.hp@gmail.com', 'duyên hải', 'giao nhanh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `perfumes`
--

CREATE TABLE `perfumes` (
  `id` int(11) NOT NULL,
  `name_per` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `detail` text COLLATE utf8_unicode_ci NOT NULL,
  `brand` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `made` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `capacity` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `code_per` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `money` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `evaluate` int(5) NOT NULL DEFAULT 0,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `view` int(11) NOT NULL DEFAULT 0,
  `cat_perfume` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `perfumes`
--

INSERT INTO `perfumes` (`id`, `name_per`, `description`, `detail`, `brand`, `made`, `capacity`, `code_per`, `amount`, `money`, `evaluate`, `create_date`, `view`, `cat_perfume`) VALUES
(36, 'Ốp lưng iPhone 14 Spigen Liquid Air', 'Ốp lưng iPhone 14 Spigen Liquid Air', 'Thiết kế mỏng nhẹ, đơn giản và đẹp tăng sự đẳng cấp và ấn tượng\r\nĐược hoàn thiện từ chất liệu TPU cao cấp có độ dẻo và độ bền cao, chịu lực tốt giúp bảo vệ các cạnh viền và các góc bo cong không bị trầy xước, móp méo trong quá trình sử dụng.\r\nCông nghệ chống sốc Air Cushion theo tiêu chuẩn quân đội trên các góc giúp giảm tối đa lực tác động để bảo vệ điện thoại của bạn.\r\nThiết kế họa tiết mặt lưng với những đường kẻ tạo thành những hình học lạ mắt, có độ nhám giúp chống bám vân tay và tạo cảm giác cầm nắm thoải mái không bị trơn trượt.\r\nVị trí các nút bấm được hoàn thiện tĩ mĩ, chính xác hoàn toàn giúp bạn dễ dàng sử dụng thoải mái mà không gặp trở ngại nào.\r\nTương thích với sạc không dây', 'Spigen', 'Trung Quốc', '', '', 100, '400000', 0, '2022-08-28 05:35:21', 3, 12),
(37, 'Ốp lưng iPhone 14 Spigen Slim Armor', 'Ốp lưng iPhone 14 Spigen Slim Armor', 'Thiết kế mỏng nhẹ, chống sốc tối ưu với phong cách cổ điển vượt thời gian mang đến vẻ đẹp tinh tế, sang trọng cho iPhone 14 của bạn.\r\nỐp lưng iPhone 14 Spigen Slim Armor được hoàn thiện với hai lớp chính. Lớp trong bằng nhựa dẻo TPU giúp hấp thụ sốc từ bên ngoài, tránh ảnh hưởng đến máy và bảo vệ mặt sau của máy khỏi những vết trầy xước kém thẩm mĩ. Lớp bảo vệ bên ngoài (có thể tách rời) ngoài vai trò tăng cường chức năng bảo vệ cho lớp trong, được làm bằng polycacbonat cao cấp sơn tĩnh điện cực đẹp tạo điểm nhấn giúp máy nhìn nổi bật, thời trang hơn.\r\nThiết kế kèm theo chân chống tiện dụng giúp bạn làm việc, giải trí thoải mái hơn.\r\nCông nghệ chống sốc Air Cushion tại các góc giúp phân tán lực bảo vệ máy khi có va chạm. Sản phẩm đạt tiêu chuẩn chống sốc quân đội Mỹ.\r\nPhần kính camera sau của máy được bảo vệ hoàn toàn nhờ độ dày vừa phải. Vị trí các phím nguồn, chỉnh âm lượng được làm bằng cao su giúp thao tác sẽ nhẹ nhàng và êm ái hơn khi sử dụng.', 'Spigen ', 'Trung Quốc', '', '', 100, '750000', 0, '2022-08-28 05:41:37', 1, 12),
(41, 'Ốp Lưng iPhone 14 Spigen Crystal Slot Dual Crystal', 'Ốp Lưng iPhone 14 Spigen Crystal Slot Dual Crystal', 'Thiết kế trong suốt, mỏng nhẹ giúp khoe trọn vẹn màu sắc của iPhone 14 cũng như thuận tiện mang theo bất kì đâu.\r\nỐp lưng Spigen Crystal Dual Crystal được hoàn thiện từ chất liệu nhựa PC + TPU cao cấp mang lại khả năng chống sốc vô cùng tuyệt vời với công nghệ đệm khí theo tiêu chuẩn quân đội.\r\nThiết kế thông minh với 2 khe đựng thẻ phía sau rất tiện lợi giúp bạn không cần mang bóp, ví mỗi khi ra đường.\r\nCác nút bấm được hoàn thiện tinh tế, chính xác cho phản hồi chắc chắn và dễ dàng thao tác.', 'Spigen', 'Trung Quốc', '', '', 100, '450000', 0, '2022-08-28 05:49:03', 0, 12),
(42, 'Ốp Lưng iPhone 14 Spigen Nano Pop 360', 'Ốp Lưng iPhone 14 Spigen Nano Pop 360', 'Thiết kế mỏng gọn, thời trang mang đậm phong cách trẻ trung và tươi mới với chất liệu Silicon cao cấp đi cùng phối hai tông màu tương phản sống động và bắt mắt.\r\nVới chất liệu Silicon cao cấp mang lại cảm giác cầm nắm tuyệt vời và hạn chế bám bụi bẩn.\r\nÁp dụng công nghệ phủ sơn mới nhất cho iPhone 14 Nano Pop Blueberry Navy.\r\nThiết kế vừa khít với iPhone 14, đặc biệt phần nhô cao lên bắt mắt vừa là điểm nhấn của ốp vừa giúp bảo vệ cho camera của iPhone 14 tốt hơn.\r\nĐược chứng nhận chống sốc tuyệt với theo tiêu chuẩn quân đôi, tương thích sạc không dây.\r\nNhiều lựa chọn màu sắc thời trang giúp bạn dễ dàng chọn được màu yêu thích.', 'Spigen', 'Trung Quốc', '', '', 100, '950000', 0, '2022-08-28 05:51:02', 0, 12),
(43, 'Ốp lưng iPhone 14 Pro Spigen Thin Fit', 'Ốp lưng iPhone 14 Pro Spigen Thin Fit', '● Ốp lưng mỏng nhẹ cùng công nghệ đệm khí chống sốc tối ưu\r\n● Lớp phủ chống trơn trượt giúp ốp không bị trầy và không bị trơn trượt trên các bề mặt\r\n● Vẫn giữ được sự nhỏ gọn khi bỏ vào túi quần\r\n● Thiết kế tinh xảo. Đường nét tinh tế\r\n● Tương thích với sạc không dây', 'Spigen', 'Trung Quốc', '', '', 100, '630000', 0, '2022-08-28 05:59:45', 0, 12),
(44, 'Ốp lưng iPhone 14 Pro Spigen Slim Armor', 'Ốp lưng iPhone 14 Pro Spigen Slim Armor', '● Thiết kế chống sốc tối ưu\r\n● Mỏng nhẹ và không cộm khi bỏ vào túi quần\r\n● Tích hợp với stand đứng giúp đứng điện thoại những lúc cần rãnh tay\r\n● Chống sốc với công nghệ đệm khí theo tiêu chuẩn quân đội\r\n● tương thích với sạc không dây', 'Spigen', 'Trung Quốc', '', '', 100, '750000', 0, '2022-08-28 06:01:32', 0, 12),
(45, 'Bao da iPhone 13 Pro Max Da Bò Sáp handmade hiệu OneCase', 'Bao da iPhone 13 Pro Max Da Bò Sáp handmade hiệu OneCase', 'Bao da iPhone 13 Pro Max hiệu OneCase được làm từ da bò sáp và da nappa\r\nLoại da mềm mại, dẻo dai và có độ đàn hồi cao cũng như thoáng khí.\r\nThiết kế dạng mở ngang giống như quyển sổ tay nhỏ.\r\nĐường chỉ may chắc chắn, vừa bảo vệ hoàn hảo điện thoại.\r\nMang lại phong cách thời trang, đẳng cấp cho người dùng.\r\nBề mặt da mềm mại cầm êm tay, chống thấm nước, bám vân tay.\r\nHạn chế trầy xước hiệu quả nhưng lại không quá dày.\r\nKhông gây nặng máy cũng như giúp máy không bị ma sát khi va đập mạnh.', 'OneCase', 'Trung Quốc', '', '', 100, '350000', 0, '2022-08-28 06:03:11', 0, 12),
(46, 'Ốp lưng iPhone 13 Pro Max Nillkin Cam Shield Armor', 'Ốp lưng iPhone 13 Pro Max Nillkin Cam Shield Armor', 'Ốp lưng iPhone 13 Pro Max Nillkin Cam Shield Armor  - Hàng Chính Hãng \r\n\r\nỐp lưng iPhone 13 Pro Max Nillkin Cam Shield Armor là phiên bản mới nhất, nó là sự kết hợp của phong cách cổ điển nhưng thời trang và bảo vệ tốt cho iPhone 13 Pro Max, nhất là bảo vệ cụm camera lồi của iPhone 13 Pro Max.\r\nKhông chỉ bảo vệ camera tránh trầy xước do rơi, rớt mà phần trượt của ốp lưng sẽ giúp cho iPhone 13 Pro max trở nên khác biệt, cá tính hơn và không đụng hàng.\r\nỐp lưng được làm từ nhựa Polycacbonat cao cấp thân thiện với môi trường có độ đàn hồi cao, rất bền và chống sốc khá tốt. Sản phẩm được xữ lý bằng công nghệ tiên tiến với những đường vân mặt lưng giúp cầm điện thoại bám tay hơn, tránh trơn trượt khi sử dụng điện thoại. \r\nĐiều đặc biệt của Ốp lưng iPhone 13 Pro Max phiên bản CamShield Case là thiết kế bo viền xanh quanh máy, giúp các góc cạnh của iPhone 13 Pro Max được bảo vệ toàn diện', 'OneCase', 'Trung Quốc', '', '', 100, '250000', 0, '2022-08-28 06:06:01', 0, 12),
(47, 'Miếng dán bảo vệ Camera iPhone 13 Totu Camera', 'Miếng dán bảo vệ Camera iPhone 13 Totu Camera', 'BẢO VỆ CAMERA TOÀN DIỆN\r\nchiếc iPhone 13 là một chiếc điện thoại cựu kỳ giá trị, khi bạn để điện thoại nằm lên mặt bạn hoặc lỡ làm rơi thì rất dễ làm bể Camera hoặc nhẹ hơn là làm trầy xước, điều này làm bạn thật sự xót xa. Nay với bộ combo miếng dán và khung bảo vệ Camera, sẽ giúp bạn an tâm hơn phần nào.\r\n\r\nTHIẾT KẾ VỪA VẶN VÀ THỜI TRANG\r\nKính cường lực bảo vệ Camera  thiết kế vừa khích với mặt kính camera của iPhone 13, không bị quá to hoặc thừa. Được sử dụng lơp keo AB bám dính chắc chắn, giúp cho kính cường lực bảo vệ Camera bám dính chắc chắn, bạn hoàn toàn có thể yên tâm.\r\n\r\nTHIẾT KẾ HOÀN TOÀN MỚI\r\nVới thiết kế mới hoàn toàn mang lại khả năng chống chịu lực tốt hơn, đẹp hơn, cho bạn cảm giác như chưa hề dán miếng dán bảo vệ lên Camera\r\n\r\nKHẢ NĂNG CHỐNG TRẦY XƯỚC CỰC TỐT\r\nĐược phủ 1 lớp shaphire lên bề mặt nên miếng dán kính cường lực iPhone 13 có khả nống chống trầy cực tốt, và giữ được vẻ đẹp bền lâu trong quá trình sử dụng.\r\n\r\nTHIẾT KẾ TỈ MỈ VỚI 5 PLAYER (LỚP)\r\nNgôn ngữ thiết kế hoàn toàn mới, tỉ mỉ đến từng chi tiết nhỏ, được cấu tạo bới 5 lớp khác nhau.\r\n\r\nCHE PHỦ HẾ BỀ MẶT CAMERA\r\nĐộ hoàn thiện cực cao, che phũ hết bề mặt Camera mang lại sử bảo vệ chắc chắn và đem lại sự an tâm cho người sử dụng. Mặt kính được thiết kế trong suốt hoàn toàn, cho chật lượng ảnh chụp được bảo toàn không hề khác như lúc chưa dán miếng cường lực lên.\r\n\r\nCÔNG NGHỆ KẾT DÍNH TỰ ĐỘNG\r\nĐược phủ 1 lớp keo UV hoàn toàn mới sử dụn công nghệ kết dính tự động, cho khả năng bám dính cực kì chắc chắn, không dễ bị rớt hoặc rơi trong quá trình sử dụng. Ngoài ra với công nghệ mới này bạn có thể dán dễ dàng.\r\n\r\nĐỘ MỎNG CHỈ 0.4MM\r\nĐạt độ mỏng chỉ 0.4mm, mang lại vẻ đẹp tinh tế, thời trang, cảm giác nhưng chưa hề dán không làm mất thẩm mỹ chiếc iPhone 13 của bạn như những miếng dán thường khác.\r\n\r\nGIỮ ĐƯỢC CHẤT LƯỢNG ẢNH CHỤP\r\nKhông làm giảm chất lượng ảnh chụp, Bạn hoàn toàn có thể yên tâm vấn đề này. Chất lượng như lúc chưa dán miếng dán cường lực bảo vệ camera.\r\n\r\nDÁN DỄ DÀNG\r\nDán dễ dàng, người chưa từng dán cũng có thể làm được. Bạn hãy mua về và trãi nghiệm.', 'Totu', 'Trung Quốc', '', '', 100, '95000', 0, '2022-08-28 06:08:49', 0, 12),
(48, 'Miếng Dán PPF dành cho iPhone 13 Mặt Sau', 'Miếng Dán PPF dành cho iPhone 13 Mặt Sau', 'Miếng Dán PPF dành cho iPhone 13 Mặt Sau\r\n\r\nLà vật liệu chuyên dùng dán bảo vệ sơn xe ô tô nay đã được cải tiến hơn để sử dụng bảo vệ điện thoại với nhiều công dụng vượt trội.\r\n\r\nĐặc tính dẻo dai giúp bảo vệ mặt lưng máy tối ưu.\r\n\r\nĐộ trong suốt cao, độ bóng hoàn hảo tăng thêm vẻ đẹp cho máy.\r\n\r\nBảo vệ máy tuyệt đối, dễ dàng tháo bỏ và không làm ảnh hưởng đến lớp sơn trên máy.', '', 'Trung Quốc', '', '', 100, '125000', 0, '2022-08-28 06:15:19', 0, 12),
(49, 'Ốp lưng iPhone 12/12 Pro Itskins Spectrum Clear Antimicrobial', 'Ốp lưng iPhone 12/12 Pro Itskins Spectrum Clear Antimicrobial', 'Spectrum Clear có độ mỏng chỉ 0.9mm giúp cho iPhone của bạn thể hiện vẻ đẹp nguyên bản nhất, sang trọng và đẳng cấp. Chiếc ốp giúp iPhone của bạn luôn được bảo vệ. Nguyên liệu ốp được chế tạo bằng cách làm nóng chảy mặt sau bằng polycarbonate cấp quang học và TPU Polymer, chịu tác động cao để tăng thêm độ bền và viền polymer hấp thụ tác động của va đập với công nghệ túi khí Hexo-Tek Xtra giúp cho iPhone của bạn được bảo vệ một sách an toàn nhất khi có sự rơi rớt.\r\n\r\nSpectrum Clear sử dụng bằng chất liệu TPU Polymer và Polycarbonate cứng cáp và cách điệu vân sọc chống trầy xước toát lên vẻ đẹp nam tính mạnh mẽ. Viền và 4 góc Spectrum Clear có độ cứng cực tốt giúp chống va đập, chống sốc tốt nhất và chất liệu cao cấp có khả năng chống ố vàng lâu nhất, tốt nhất mang lại độ trong suốt và thẩm mỹ cho chiếc ốp tối ưu nhất.\r\n\r\nCông nghệ “Air Pocket” có nghĩa là tất cả các Tác động / Rơi / Va đập được phân tán qua các cạnh, góc và đầu của vỏ, giúp Điện thoại thực sự an toàn.Sản phẩm đã được chứng nhận để bảo vệ thiết bị của bạn khi rơi từ độ cao lên đến 3m/10ft.\r\n\r\nSpectrum Clear còn được chế tạo bằng công nghệ ANTIMICROBIAL – CÔNG NGHỆ KHÁNG KHUẨN. Với công nghệ này có thể loại bỏ lên đến 99% vi khuẩn trên chiếc ốp, mang đến một sự an toàn hơn cho sức khoẻ của bạn khi sử dụng sản phẩm Itskins Spectrum Clear.', 'Itskins', 'Trung Quốc', '', '', 100, '315000', 0, '2022-08-28 06:17:24', 0, 12),
(50, 'Quạt Đeo Cổ Không Cánh', 'Quạt Đeo Cổ Không Cánh', 'Thiết kế sáng tạo với hai tua bin không cánh, người tóc dài không bị mắc vướng tóc khi dử dụng\r\nBiên độ thổi rộng 360 độ, không thổi trực tiếp vào mặt\r\nKết cấu dẫn gió dốc nghiêng mang lại cảm giác mát mẻ dễ chịu\r\n3 mức độ điều chỉnh gió tùy thích\r\nThiết kế thông minh với 24 phiến cánh quạt tua bin và 62 lỗ thông gió thiết kế xung quanh\r\n4 khoang dẫn gió hội tụ gió hiệu quả, lực gió tăng gấp bội\r\nThiết kế cổng tua bin kí bán phần, chống bụi, chống mồ hôi\r\nThời gian sử dụng: có thể lên đến 10 giờ\r\nChất liệu: TPE dẻo, thân thiện với làn da\r\nDung lượng pin: 2400mAh\r\nMàu Sắc trẻ trung, thời trang', '', 'Trung Quốc', '', '', 100, '275000', 0, '2022-08-28 06:30:32', 0, 33),
(51, 'Quạt mini 2 cánh cho điện thoại iPhone', 'Quạt mini 2 cánh cho điện thoại iPhone', 'Tốc độ động cơ: có thể đạt 16.000 rpm\r\n\r\nVật liệu: Silicon và TPE (các vật liệu bảo vệ môi trường)\r\n\r\nChân cắm Lightning dành cho thiết bị smartphone iOS trên iPhone, iPad\r\n\r\nĐiện áp : 5V\r\n\r\nCông suất quạt : 0.1W\r\n\r\nVới thiết kế nhỏ gọn tiện dụng dễ dàng mang đi\r\n\r\nQuạt có công suất mạnh làm mát, xoa diệu đi cơn nóng\r\n\r\nTiện dụng hơn khi được thiết kế dành riêng cho cổng sạc điện thoại.', '', 'Trung Quốc', '', '', 100, '45000', 0, '2022-08-28 06:32:06', 0, 33),
(52, 'Quạt Cầm Tay Colorfull', 'Quạt Cầm Tay Colorfull', 'Quạt Cầm Tay Colorfull thiết kế trẻ trung nữ tính đặc biệt phù hợp với các bạn nữ học sinh - sinh viên\r\nSử dụng dòng điện 4.5W công suất đầu ra 4-9V\r\n3 cấp độ gió siêu mát, không phát ra tiếng ồn\r\nDung lượng pin lớn có thể sử dụng liên tục từ 2-3h mà chỉ cần sạc trong 1.5h\r\nKích thước nhỏ nhắn dễ dàng mang đi sử dụng ở bất cứ đâu.\r\nNhiều màu sắc thời trang, dễ thương.', '', 'Trung Quốc', '', '', 100, '99000', 0, '2022-08-28 06:33:26', 0, 33),
(53, 'Tai nghe bluetooth WIWU Airbuds SE', 'Tai nghe bluetooth WIWU Airbuds SE', 'Là tai nghe kiểu Earbuds có đuôi thuôn dài hỗ trợ micro để đàm thoại một cách tốt hơn.\r\n\r\nTai nghe sử dụng kết nối Bluetooth 5.1 giúp kết nối một cách dễ dàng và nghe nhạc một cách ổn định hơn.\r\n\r\nTai nghe Wiwu Airbuds SE được hỗ trợ rất tốt với IOS khi có thể hiển thị pop up để theo dõi thời lượng pin của tai nghe và dock sạc. \r\n\r\nTương thích tốt với hệ điều hành iOS và Android (PC, Laptop, máy tính bảng).\r\n\r\nDock sạc 400mah kết hợp với pin tai nghe cho thời gian sử dụng lên đến 45 giờ.\r\n\r\nChất âm tổng thể cho âm bass vừa phải, phù hợp với các thể loại nhạc sôi động.', 'WIWU', 'Trung Quốc', '', '', 100, '549000', 0, '2022-08-28 06:36:16', 0, 32),
(54, 'Tai nghe bluetooth Hoco E31 Airbuds SE', 'Tai nghe bluetooth Hoco E31', 'Tai nghe bluetooth Hoco E31 được trang bị công nghệ Bluetooth V4.2 cho kết nối ổn định trong đường truyền phạm vi 10m. Ưu điểm này hỗ trợ ổn định cho người dùng nhất là người thường xuyên di chuyển. Bên cạnh đó, Hoco E31 còn được tích hợp micro hỗ trợ ổn định cho các cuộc gọi rảnh tay. Tương thích tốt với tất cả điện thoại smartphone từ iOS đến Android hiện nay.\r\n\r\nChất âm rõ ràng, lọc tiếng ồn tốt\r\nTai nghe Hoco E31 được biết đến với chất âm khá ấn tượng, rõ ràng và trung thực. Công nghệ lọc và xử lý tiếng ồn hiện đại cùng thiết kế bám chắc vào tai nghe giúp xử lý âm thanh ổn định, chống ồn, chống nhiễu hiệu quả. Chính vì vậy đây sẽ là lựa chọn tốt cho người dùng thường xuyên đàm thoại, nghe nhạc khi lái xe, luyện tập thể thao.\r\n\r\nThiết kế linh hoạt cho trải nghiệm đeo tốt\r\nThiết kế tai nghe Hoco E31 được đặc biệt tối giản đến từng chi tiết. Cụ thể kích thước 60 x 18 x 25mm, khối lượng 7g cùng kết cấu ôm sát tai cho trải nghiệm đeo tốt hơn, thoải mái hơn. Bên cạnh đó toàn bộ tai nghe cũng được gia công xử lý hoàn thiện với vật liệu cao cấp vừa mang đến sự sang trọng vừa giảm đi không ít áp lực lên tai người dùng, tránh tình trạng đau tai, ù tai khi sử dụng trong thời gian dài.', 'Hoco', 'Trung Quốc', '', '', 100, '250000', 0, '2022-08-28 06:37:45', 0, 32),
(55, 'Tai nghe Blutooth Mèo Cao Cấp headphone Hoco W27', 'Tai nghe Blutooth Mèo Cao Cấp headphone Hoco W27', '1. BT 5.0, chip JL. \r\n2. Dung lượng pin 300mAh, thời gian sạc 2 giờ. \r\n3. Thời gian gọi / nghe nhạc: 5 giờ. \r\n4. Thời gian chờ: 200 giờ. \r\n5. Đường kính loa: 40mm. \r\n6. Kích thước: 203 * 175 * 80mm. Trọng lượng: 182g. \r\n7. Hỗ trợ BT, thẻ TF, chế độ phát lại AUX. \r\n8. Thiết kế hình tai mèo phát sáng, rất dễ thương.', 'Hoco', 'Trung Quốc', '', '', 100, '459000', 0, '2022-08-28 06:39:23', 2, 32),
(57, 'Pin dự phòng Baseus Adaman Metal Digital Display 10.000 mAh', 'Pin dự phòng Baseus Adaman Metal Digital Display 10.000 mAh', 'Pin dự phòng Baseus Adaman Metal Digital Display 10.000 mAh 22.5W hỗ trợ hầu hết các chuẩn sạc nhanh hiện nay, tương thích với hầu hết các thiết bị số hiện nay từ Macbook/ Laptop cho đến Smartphone/ Tablet,... Dung lượng lớn, công suất, hiệu suất sử dụng cao (lên đến 22.5W) có 3 port (2 USB + 1 Type C). Cả 3 Port này đều hỗ trợ sạc nhanh (QC3.0 và PD3.0), có thể dùng sạc pin cho cả 3 thiết bị cùng lúc. Giúp bạn sử dụng thoải mái hơn và quên đi nỗi lo hết pin khi đi công tác, du lịch, dã ngoại,... Giúp cho mọi thiết bị của bạn luôn trong tình trạng sẳn sàng sử dụng. \r\n\r\nNgỏ vào: được trang bị 3 cổng sạc ngỏ vào gồm Lightning, Micro và Type C. Trong đó cổng Type C hỗ trợ sạc nhanh đồng thời cả in và out (Bi-directional quick charging). Việc trang bị cả 3 cổng sạc ngỏ vào cho phép bạn bạn có thể sạc cho pin bằng chính cáp của điện thoại mà không cần trang bị thêm cáp sạc riêng.\r\n\r\nNgỏ ra: 2 Port USB + Type C hỗ trợ nhiều mức cấu hình khác nhau là 5V/1A, 5V/2.4A, 5V/3A, 9V/2A 12V/1.5A,... Tương thích với hầu hết các smartphone, tablet, Laptop có hỗ trợ sạc qua cổng Type C.\r\n\r\nLỏi pin công nghệ mới nhất hiệu suất cao hơn và an toàn hơn nhưng vẫn đảm bảo kích thước vô cùng nhỏ gọn.\r\n\r\nĐược tích hợp chíp xử lý nguồn thế hệ mới có hiệu suất sử dụng cao, độ ổn định vượt trội cùng với cơ chế bảo vệ thông minh. Pin dự phòng sạc nhanh Baseus Adaman Metal Digital cho mức điện áp sử dụng ổn định, đảm bảo an toàn cho thiết bị và người sử dụng. \r\n\r\nSản phẩm còn được trang bị đèn LED thông minh và tiện dụng cho biết dung lượng pin còn lại và tình trạng sạc pin. \r\n\r\nBề mặt được làm bằng kim loại chắc chắn và sang trọng. Thiết kế dạng nhám nhẹ giúp bám tay tốt hơn, chống bám vân tay. Viền bi nhẹ giúp cầm tay được thoải mái hơn.', '', 'Trung Quốc', '', '', 100, '459000', 0, '2022-08-28 06:42:54', 0, 31),
(58, 'Miếng dán da Vsmart Active 1 da Nappa', 'Miếng dán da Vsmart Active 1 da Nappa', 'Sản phẩm miếng dán da Vsmart Active 1 da Nappa mềm mại, sang trọng, đầy tinh tế và bền bỉ với thời gian.\r\n\r\nDa Nappa thường được sử dụng làm túi, ví, đồ dùng cá nhân. Đệm ghế da xe hơi được bọc bằng da Nappa đã được bán trên thị trường cho những dòng xe nổi tiếng : Ferrari, BMW hay Porche... Và giờ đây bạn có thể sở hữu dòng da cao cấp này ngay trên chiếc điện thoại của mình.\r\n\r\nDa Nappa là dòng da thuộc từ Da Full Grain (Là loại da không bào, chà nhám (Buffing) hoặc dập vân lên bề mặt), da được làm từ da của các con thú nhỏ, Da cừu hoặc da cừu babe, và hoàn toàn không có da Split. Quy trình thuộc da tạo ra các chất tannin nhân tạo như Crom Sulfat, và các loại muối khác.\r\n\r\nĐặc điểm của da Nappa là da rất mềm mại, dẻo dai và độ nhăn rất ít nhưng rất bền, vì Nappa là một dạng của da Full Grain nên tính liên kết cao, có khả năng \" Thở\" và giữ ẩm tốt.\r\n\r\nDa Nappa được tạo ra bởi Emanuel Manasse vào năm 1875. ông Manasse làm việc tại 1 công ty chuyên thuộc da tại Napa, California. Đó là lí do vì sao loại da này co tên là Da Nappa.\r\n\r\nDán da giúp bảo vệ mặt lưng điện thoại hạn chế trầy xước do va chạm, chống bám bẩn, mồ hôi, dấu vân tay. Sản phẩm qua nhiều công đoạn thực hiện công phu cho ra những sản phẩm dán da chất lượng, đúng theo kích thước từng dòng điện thoại.\r\n\r\nKết hợp với keo 3M giúp dễ dàng dán lên máy mà không gặp cản trở nào, đặc biệt keo 3M này dễ dàng tháo bỏ mà không ảnh hưởng đến điện thoại.', 'Vsmart', 'Việt Nam', '', '', 15, '150000', 0, '2022-08-28 18:58:06', 0, 29),
(59, 'Ốp lưng Vsmart Joy 2 Plus TPU', 'Ốp lưng Vsmart Joy 2 Plus TPU', 'Ốp lưng Vsmart Joy 2 Plus làm bằng chất liệu silicon dẻo, thiết kế trong suốt 100% và chỉ mỏng 0.6mm\r\n\r\n- Không làm mất đi thiết của máy và bo viền xung quanh\r\n\r\n- Giúp điện thoại của bạn vừa được bảo vệ và thời trang hơn.\r\n\r\nVới đặc tính dẻo có thể uốn cong 360 độ chống sốc và chống va đập cực tốt.\r\n\r\nĐây là một trong số ít mẫu ốp dẻo có độ mỏng nhất dành cho Ốp lưng Vsmart Joy 2 Plus\r\n\r\n- Nếu bạn đang sở hữu chiếc Ốp lưng Vsmart Joy 2 Plus thì không nên bỏ qua sản phẩm này. Do đặc điểm Ốp lưng Vsmart Joy 2 Plus có thiết kế nắp lưng rất đẹp nên nếu bạn sử dụng các ốp lưng dày hay kiểu cách thì không thể thấy được hết vẻ đẹp của máy.\r\n\r\n- Bề mặt của  tạo cảm giác cầm rất thoải mái và chắc tay, chống bám vân hiệu quả ngay cả với mùa hè nhiều mồ hôi tay.\r\n\r\nSản phẩm chất lượng được gia công cẩn thận chi tiết từng góc cạnh.', 'Vsmart', 'Việt Nam', '', '', 15, '25000', 0, '2022-08-28 18:59:36', 0, 29),
(61, 'Dán cường lực Vsmart Active 1 Glass', 'Dán cường lực Vsmart Active 1 Glass', 'Dán cường lực Vsmart Active 1 Glass có thể bảo vệ điện thoại khỏi các vật nhọn, bén hay đơn giản là vết bẩn trên miếng dán rất dễ vệ sinh và lau chùi.\r\n\r\n- Chống vỡ, nứt màn hình chính của điện thoại khi bị va chạm hay tác động từ bên ngoài.\r\n\r\n- Có khả năng chống dầu, hạn chế bám vân tay trong quá trình sử dụng\r\n\r\n- Chống trầy xước tốt với các vật bén nhọn, dao sắc.\r\n\r\n- Hiển thị hình ảnh với độ nét cao lên tới 99% so với hình ảnh hiển thị gốc', 'Vsmart', 'Việt Nam', '', '', 15, '25000', 0, '2022-08-28 19:05:21', 0, 29),
(62, 'Ốp lưng Vivo Y17 TPU dẻo siêu mỏng', 'Ốp lưng Vivo Y17 TPU dẻo siêu mỏng', 'Ốp lưng Vivo Y17 TPU dẻo siêu mỏng Trong suốt làm bằng chất liệu silicon dẻo, thiết kế trong suốt 100% và chỉ mỏng 0.3mm\r\n\r\nCó độ đàn hồi cao, có thể bóp lại, cuộn lại mà không biến dạng.\r\n\r\nSản phẩm được tráng lớp chống dính lưng nên không bị loang hay dính như chất liệu silicon thường\r\n\r\nGiúp điện thoại của bạn vừa được bảo vệ và thời trang hơn', 'Vivo', 'Trung Quốc', '', '', 15, '45000', 0, '2022-08-28 19:10:00', 0, 28),
(63, 'Ốp lưng Vivo V11 TPU dẻo siêu mỏng', 'Ốp lưng Vivo V11 TPU dẻo siêu mỏng', 'Ốp lưng Vivo V11 TPU dẻo siêu mỏng Trong suốt  làm bằng chất liệu silicon dẻo, thiết kế trong suốt 100% và chỉ mỏng 0.3mm\r\n\r\nCó độ đàn hồi cao, có thể bóp lại, cuộn lại mà không biến dạng.\r\n\r\nSản phẩm được tráng lớp chống dính lưng nên không bị loang hay dính như chất liệu silicon thường\r\n\r\nGiúp điện thoại của bạn vừa được bảo vệ và thời trang hơn.', 'Vivo', 'Trung Quốc', '', '', 15, '65000', 0, '2022-08-28 19:17:54', 1, 28),
(64, 'Hộp Đựng Tai Nghe Airpods 3 Likgus Matte Minimalist', 'Hộp Đựng Tai Nghe Airpods 3 Likgus Matte Minimalist', '- Chính Hãng Likgus\r\n- Vật liệu nhám mịn làm từ nhựa PolyChromatic cực kì đặc biệt\r\n- Siêu kháng bẩn, kháng mồ hôi, vân tay, cực kì sạch sẽ trong quá trình sử dụng\r\n- Vật liệu PolyChromatic siêu bền, chống trầy xước\r\n- Case lắp vào vỏ tai nghe chắc chắn, ôm khít', 'Apple', 'Trung Quốc', '', '', 100, '179000', 0, '2022-08-28 19:29:11', 0, 13);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permission`
--

CREATE TABLE `permission` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `catuser_id` int(11) NOT NULL,
  `perfume_id` int(11) NOT NULL,
  `add_per` tinyint(1) NOT NULL DEFAULT 0,
  `edit_per` tinyint(1) NOT NULL DEFAULT 0,
  `del_per` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permission`
--

INSERT INTO `permission` (`id`, `user_id`, `catuser_id`, `perfume_id`, `add_per`, `edit_per`, `del_per`) VALUES
(1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pic_per`
--

CREATE TABLE `pic_per` (
  `id` int(11) NOT NULL,
  `picture` text COLLATE utf8_unicode_ci NOT NULL,
  `per_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `pic_per`
--

INSERT INTO `pic_per` (`id`, `picture`, `per_id`) VALUES
(53, 'op-lung-iphone-14-spigen-liquid-air0007_oahz-0t-663273669337600.jpg', 36),
(54, 'op-lung-iphone-14-spigen-slim-armor0001-663649782592800.jpg', 37),
(55, 'op-lung-iphone-14-spigen-slim-armor0003-663649928693400.jpg', 37),
(56, 'op-lung-iphone-14-spigen-slim-armor0005-663649973193100.jpg', 37),
(57, 'op-lung-iphone-14-spigen-crystal-slot-dual-crystal0004-664096269694600.jpg', 41),
(58, 'op-lung-iphone-14-spigen-nano-pop-3600002-664214929206200.jpg', 42),
(59, 'op-lung-iphone-14-spigen-nano-pop-3600003-664214961880100.jpg', 42),
(60, 'detail_iphone_61p2021_tf_blk_01-1-600x600-664737871018700.jpg', 43),
(61, 'title_ip6-1P_6-7_Thin_Fit_01-1-600x600-664737960407700.jpg', 43),
(62, 'title_iphone_61p2021_tf_blk-1-600x600-664737993245600.jpg', 43),
(63, 'detail_ip6-1P_6-7_slim_armor_02-1-600x600__1_-664844655029900.jpg', 44),
(64, 'detail_ip6-1P_6-7_slim_armor_03-600x600__1_-664844688830500.jpg', 44),
(65, 'bao-da-iphone-13-pro-max-onecase-leather-931-664944260946600.jpg', 45),
(66, 'bao-da-iphone-13-pro-max-onecase-leather-945-664944338670600.jpg', 45),
(67, 'op-lung-iphone-13-nillkin-camshield-pro-2628-665113505291300.jpg', 46),
(68, 'op-lung-iphone-13-nillkin-camshield-pro-2631-665113537613600.jpg', 46),
(69, 'op-lung-iphone-13-nillkin-camshield-pro-2632-665113571792000.jpg', 46),
(70, 'cuong-luc-camera-iphone-13-totu-5132-665282236884900.jpg', 47),
(71, 'cuong-luc-camera-iphone-13-totu-5133-665282294576600.jpg', 47),
(72, 'mat-sau_vlyy-g2-665671894031600.jpg', 48),
(73, 'op-lung-iphone-12-itskin-spectrum-clear-0976_hiyo-5v-665796734172700.png', 49),
(74, 'op-lung-iphone-12-itskin-spectrum-clear-0982_8f65-ys-665796766846700.png', 49),
(75, 'Quat-deo-co-khong-canh0006-666584448289800.jpg', 50),
(76, 'Quat-deo-co-khong-canh0008-666584503249700.jpg', 50),
(77, 'quat-mini-cho-dien-thoai-iphone-quat-mini-cho-smarphone-gia-re-quat-mini-2-canh-cam-dien-thoai-12549-666678775184100.jpg', 51),
(78, 'quat-mini-cho-dien-thoai-iphone-quat-mini-cho-smarphone-gia-re-quat-mini-2-canh-cam-dien-thoai-12550-666678808939200.jpg', 51),
(79, 'quat-cam-tay-color-full0001-666759257694900.jpg', 52),
(80, 'quat-cam-tay-color-full0002-666759324977200.jpg', 52),
(81, 'tai-nghe-bluetooth-wiwu-airbuds-se-134-666928757269500.jpg', 53),
(82, 'tai-nghe-bluetooth-wiwu-airbuds-se-135-666928801603300.jpg', 53),
(83, 'tai-nghe-bluetooth-wiwu-airbuds-se-136-666928856652700.jpg', 53),
(84, 'tai-nghe-bluetooth-hoco-e31-5414-667018207503800.jpg', 54),
(85, 'tai-nghe-bluetooth-hoco-e31-5416-667018245365700.jpg', 54),
(86, 'tai-nghe-bluetooth-w27-aKza6GaexE4FvOgmx6L5-667115778824800.jpg', 55),
(87, 'tai-nghe-bluetooth-w27-UWc2J7EonXQS9ApO4oCw-667115823800200.jpg', 55),
(88, 'tai-nghe-bluetooth-w27-WU1ZvvceI2bLCdwhtnRf-667115878972400.jpg', 55),
(90, 'pin-du-phong-baseus-adaman-metal-digital-display-10000-mah-22-5-w-179-667326403482100.jpg', 57),
(91, 'pin-du-phong-baseus-adaman-metal-digital-display-10000-mah-22-5-w-180-667326474149500.jpg', 57),
(92, 'pin-du-phong-baseus-adaman-metal-digital-display-10000-mah-22-5-w-183-667326846828100.jpg', 57),
(93, 'mieng-dan-da-vsmart-active-1-dan-da-nappa-vsmart-active-1-mieng-dan-da-that-vsmart-active-1-13270-711472387492700.jpg', 58),
(94, 'mieng-dan-da-vsmart-active-1-dan-da-nappa-vsmart-active-1-mieng-dan-da-that-vsmart-active-1-13271-711472435961900.jpg', 58),
(95, 'op-lung-vsmart-joy-2-plus-deo-mong-1-711562863116400.jpg', 59),
(97, 'mieng-dan-man-hinh-cuong-luc-vsmart-active-1-dan-kinh-cuong-luc-vsmart-active-1-glass-13500-711907161900200.jpg', 61),
(98, 'OP-LUNG-VIVO-Y17-TPU-SIEU-MONG---367-712186478665200.jpg', 62),
(99, 'OP-LUNG-VIVO-Y17-TPU-SIEU-MONG---368-712186523027400.jpg', 62),
(100, 'OP-LUNG-VIVO-V11-TPU-SIEU-MONG---343-712660574291500.jpg', 63),
(101, 'OP-LUNG-VIVO-V11-TPU-SIEU-MONG---344-712660639799700.jpg', 63),
(102, 'case-airpods-pro-likgus-matte-0123-713336724003200.png', 64),
(103, 'case-airpods-pro-likgus-matte-0128-713336902878400.png', 64),
(104, 'case-airpods-pro-likgus-matte-0128_sd93-tt-713337225204400.png', 64);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `fullname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `money` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `cat_user` int(11) NOT NULL DEFAULT 5
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `username`, `fullname`, `password`, `money`, `cat_user`) VALUES
(1, 'admin', 'Phan Minh Nhựt', '202cb962ac59075b964b07152d234b70', '1000000000', 1),
(15, 'nhut', 'nhựt', '202cb962ac59075b964b07152d234b70', '0', 5),
(17, 'tin', 'Trần Trung Tin', '202cb962ac59075b964b07152d234b70', '0', 5),
(18, 'luan', 'Lâm Vũ Luân', '202cb962ac59075b964b07152d234b70', '0', 5);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cat_perfume`
--
ALTER TABLE `cat_perfume`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cat_user`
--
ALTER TABLE `cat_user`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_per` (`id_per`);

--
-- Chỉ mục cho bảng `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `per_id` (`per_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Chỉ mục cho bảng `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `perfumes`
--
ALTER TABLE `perfumes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_perfume` (`cat_perfume`);

--
-- Chỉ mục cho bảng `permission`
--
ALTER TABLE `permission`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `pic_per`
--
ALTER TABLE `pic_per`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pic_per_ibfk_1` (`per_id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_user` (`cat_user`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cat_perfume`
--
ALTER TABLE `cat_perfume`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `cat_user`
--
ALTER TABLE `cat_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `item`
--
ALTER TABLE `item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `perfumes`
--
ALTER TABLE `perfumes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT cho bảng `permission`
--
ALTER TABLE `permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `pic_per`
--
ALTER TABLE `pic_per`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`id_per`) REFERENCES `perfumes` (`id`);

--
-- Các ràng buộc cho bảng `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `item_ibfk_1` FOREIGN KEY (`per_id`) REFERENCES `perfumes` (`id`),
  ADD CONSTRAINT `item_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`);

--
-- Các ràng buộc cho bảng `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `perfumes`
--
ALTER TABLE `perfumes`
  ADD CONSTRAINT `perfumes_ibfk_1` FOREIGN KEY (`cat_perfume`) REFERENCES `cat_perfume` (`id`);

--
-- Các ràng buộc cho bảng `pic_per`
--
ALTER TABLE `pic_per`
  ADD CONSTRAINT `pic_per_ibfk_1` FOREIGN KEY (`per_id`) REFERENCES `perfumes` (`id`);

--
-- Các ràng buộc cho bảng `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`cat_user`) REFERENCES `cat_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
