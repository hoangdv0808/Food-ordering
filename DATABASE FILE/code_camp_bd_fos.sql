-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2024 at 09:46 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `code_camp_bd_fos`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adm_id` int(11) NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin@gmail.com', '', '2024-12-26 08:45:35');

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `d_id` int(11) NOT NULL,
  `rs_id` int(11) NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
(17, 5, 'Crème Brûlée', 'Món bánh tráng mi?ng c? ?i?n v?i l?p caramel giòn và h??ng v? vanilla th?m', 6.00, '676d0d39c634e.jpg'),
(18, 5, 'Macaron', 'Bánh nh? ??y màu s?c, v? giòn v?i nhân kem ho?c m?t trái cây.', 2.00, '676d0d7fbc605.jpg'),
(19, 5, 'Tarte Tatin', 'Bánh tart táo caramel úp ng??c, giòn và th?m', 8.00, '676d0dba19eb6.jpg'),
(20, 6, 'Chocolate Ganache', 'Kem chocolate nguyên b?n, m?m m?n, hoàn h?o cho nh?ng tín ?? chocolate.', 5.00, '676d11da31160.jpg'),
(21, 6, 'Éclair au Chocolat', 'Bánh su kem dài v?i nhân kem chocolate và l?p ph? chocolate bóng.', 4.50, '676d1205c3f85.jpg'),
(22, 6, 'Truffles', 'Viên chocolate truffle h?o h?ng v?i nhân cacao nguyên ch?t.', 3.00, '676d123f283a6.jpg'),
(23, 6, 'Black Forest Cake', 'Bánh chocolate v?i l?p kem t??i và anh ?ào ??c tr?ng vùng ??c.', 7.50, '676d127b403b9.jpg'),
(24, 7, 'Stollen', 'Bánh mì ng?t v?i hoa qu? khô và r??u rum, mang ??m không khí Giáng sinh.', 6.00, '676d119518406.jpg'),
(25, 7, 'Apfelstrudel', 'Bánh táo cu?n truy?n th?ng v?i l?p b?t giòn và nhân táo ng?t ngào.', 5.50, '676d1168bf247.jpg'),
(26, 7, 'Sachertorte', 'Bánh chocolate truy?n th?ng Áo, ph? m?t m? và chocolate glaze.', 8.50, ''),
(27, 8, 'Apple Strudel', 'Bánh táo cu?n v?i l?p b?t giòn và nhân táo chua ng?t.', 6.00, '676d108851169.jpg'),
(28, 8, 'Linzertorte', 'Bánh tart mâm xôi ??c tr?ng v?i h?a ti?t m?ng l??i ??p m?t.', 7.00, '676d1021e4651.jpg'),
(29, 9, 'Tiramisu', 'Món tráng mi?ng Ý v?i l?p bánh ladyfingers th?m cà phê, kem mascarpone m?m m?n.', 7.50, '676d0fb7b8f01.jpg'),
(30, 9, 'Cannoli', '?ng bánh chiên giòn v?i nhân ricotta ng?t ngào và chocolate chips.', 3.50, '676d1099799aa.jpg'),
(31, 9, 'Panna Cotta', 'Kem n?u m?m m?n, th??ng ?n kèm s?t dâu tây ho?c caramel.', 6.00, '676d0f4011745.jpg'),
(32, 10, 'Biscotti', 'Bánh quy giòn th?m, hoàn h?o khi ?n kèm cà phê ho?c trà.', 4.00, '676d0f1ca8dc1.jpg'),
(34, 10, 'Sfogliatelle', 'Bánh ngàn l?p v?i nhân ricotta béo ng?y và h??ng chanh th?m mát.', 6.50, '676d0ef11341a.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

CREATE TABLE `remark` (
  `id` int(11) NOT NULL,
  `frm_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `rs_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`rs_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`) VALUES
(5, 5, 'Le Cordon Bleu', 'contact@cordonbleu.com', '+33 1 23456789', 'http://www.cordonbleu.com', '8am', '10pm', '24hr-x7', '123 Rue de Paris, Paris, France', '676d06f17364d.jpg', '2024-12-26 07:34:09'),
(6, 5, 'La Maison du Chocolat', 'info@maisonchocolat.com', '+33 1 98765432', 'http://www.lamaisonchocolat.com', '9am', '9pm', 'Mon-Sat', '456 Rue de Bordeaux, Paris, France', '676d074e5d6d0.jpg', '2024-12-26 07:35:42'),
(7, 6, 'Gasthof Stern', 'info@stern.com', '+43 1 23456789', 'http://www.stern.com', '9am', '11pm', '24hr-x7', '456 Hauptstrasse, Vienna, Austria', '676d07aef00e7.jpg', '2024-12-26 07:37:18'),
(8, 6, 'Cafe Landtmann', 'info@landtmann.com', '+43 1 23456790', 'http://www.landtmann.com', '7am', '8pm', '24hr-x7', '789 Kärntnertorstrasse, Vienna, Austria', '676d07f93c4e4.jpg', '2024-12-26 07:38:33'),
(9, 7, 'Ristorante Da Vinci', 'info@davinci.com', '+39 123 456789', 'http://www.davinci.com', '10am', '10pm', '24hr-x7', '789 Via Roma, Rome, Italy', '676d08665d6f6.jpg', '2024-12-26 07:40:22'),
(10, 7, 'Trattoria Al Fico', 'info@alfico.com', '+39 123 987654', 'http://www.alfico.com', '11am', '11pm', '24hr-x7', '123 Via Venezia, Rome, Italy', '676d0bd626710.jpg', '2024-12-26 07:55:02');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int(11) NOT NULL,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`, `date`) VALUES
(5, 'pháp', '2024-12-26 07:25:53'),
(6, 'Áo', '2024-12-26 07:26:14'),
(7, 'Italia', '2024-12-26 07:26:21');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(11) NOT NULL,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `status`, `date`) VALUES
(9, 'hoandang', '??ng ', 'Hoàng', 'hoangdang8826@gmail.com', '0389502096', 'e10adc3949ba59abbe56e057f20f883e', 'Hà n?i', 1, '2024-12-26 07:03:01');

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `remark`
--
ALTER TABLE `remark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`rs_id`);

--
-- Indexes for table `res_category`
--
ALTER TABLE `res_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `d_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `rs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
