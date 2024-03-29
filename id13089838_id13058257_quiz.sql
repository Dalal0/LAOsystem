-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 26 نوفمبر 2023 الساعة 09:23
-- إصدار الخادم: 10.4.21-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id13089838_id13058257_quiz`
--

-- --------------------------------------------------------

--
-- بنية الجدول `category`
--

CREATE TABLE `category` (
  `categoryid` int(11) NOT NULL,
  `catname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- إرجاع أو استيراد بيانات الجدول `category`
--

INSERT INTO `category` (`categoryid`, `catname`) VALUES
(4, 'BREAKFAST2'),
(5, 'LUNCH'),
(6, 'DINNER'),
(7, 'BEVERAGES');

-- --------------------------------------------------------

--
-- بنية الجدول `product`
--

CREATE TABLE `product` (
  `productid` int(11) NOT NULL,
  `categoryid` int(1) NOT NULL,
  `productname` varchar(30) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(150) NOT NULL,
  `rest_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- إرجاع أو استيراد بيانات الجدول `product`
--

INSERT INTO `product` (`productid`, `categoryid`, `productname`, `price`, `photo`, `rest_id`) VALUES
(24, 4, 'item1', 75, '', NULL),
(30, 4, 'Chicken Burger', 16, 'upload/mac_burger_1.png', 1),
(31, 4, 'Diet Chicken Burger', 22, 'upload/mac_burger_2.png', 1),
(32, 4, 'Double Burger with Cheese', 25, 'upload/mac_burger_3.png', 1),
(33, 4, 'Burger with Cheese', 20, 'upload/mac_burger_4.png', 1),
(34, 5, 'Chicken Burger', 15, 'upload/herfy_menu_1.jpg', 2),
(35, 5, 'Kids meal', 10, 'upload/herfy_menu_2.jpg', 2),
(36, 5, 'Chicken Burger with Cheese', 25, 'upload/herfy_menu_3.jpg', 2),
(37, 5, 'Fish', 20, 'upload/herfy_menu_4.jpg', 2),
(38, 5, 'Big Chicken With Cheese', 30, 'upload/herfy_menu_5.jpg', 2),
(39, 5, 'Tortilla Chicken', 20, 'upload/herfy_menu_6.jpg', 2),
(40, 5, 'Salade', 13, 'upload/herfy_menu_7.jpg', 2),
(41, 4, 'Chicken Burger', 15, 'upload/kfc_bur.jpg', 3),
(42, 4, 'Box Chicken', 20, 'upload/kfc_box.JPG', 3),
(43, 5, 'twister', 16, 'upload/kfc_twis.jpg', 3),
(44, 5, 'Pepsi', 1, 'upload/pep.jpg', 3),
(45, 5, '7Up', 1, 'upload/up.jpg', 3),
(46, 5, 'Water', 1, 'upload/water.jpg', 3),
(47, 4, 'Marguerita', 15, 'upload/marguerita01.jpg', 4),
(48, 4, 'tropical hawaiian', 15, 'upload/pwahawaian.jpg', 4),
(49, 4, 'Pepperoni', 15, 'upload/pepperoni01.jpg', 4),
(50, 4, 'Cheesy Pops', 20, 'upload/cheesy_zft.jpg', 4),
(51, 4, 'Chicken Bites', 25, 'upload/cheesy_pops01.jpg', 4),
(52, 4, 'Pepsi', 1, 'upload/pep.jpg', 4),
(53, 4, '7Up', 1, 'upload/up.jpg', 4),
(54, 4, 'Water', 1, 'upload/water.jpg', 4),
(55, 4, 'Fish Royal', 24, 'upload/king_fishroyal.jpg', 5),
(56, 4, 'Spicy Chicken', 25, 'upload/king_spicychken.jpg', 5),
(57, 4, 'Meet Whoober', 26, 'upload/king_whoober.jpg', 5),
(58, 4, 'Frires', 10, 'upload/king_fries.jpg', 5),
(59, 4, 'Pepsi', 1, 'upload/pep.jpg', 5),
(60, 4, '7Up', 1, 'upload/up.jpg', 5),
(61, 4, 'Water', 1, 'upload/water.jpg', 5),
(62, 4, 'Beef Combo', 25, 'upload/kudu_beef_combo.png', 6),
(63, 4, 'Chicken Combo', 23, 'upload/kudu_chicken_combo.png', 6),
(64, 4, 'Lafino Chicken', 20, 'upload/kudu_lafino_chicken.png', 6),
(65, 4, 'Pepsi', 1, 'upload/pep.jpg', 6),
(66, 4, '7Up', 1, 'upload/up.jpg', 6),
(67, 4, 'Water', 1, 'upload/water.jpg', 6);

-- --------------------------------------------------------

--
-- بنية الجدول `purchase`
--

CREATE TABLE `purchase` (
  `purchaseid` int(11) NOT NULL,
  `customer` varchar(50) NOT NULL,
  `AppName` varchar(50) NOT NULL,
  `total` double NOT NULL,
  `date_purchase` datetime NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `STATUS` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- إرجاع أو استيراد بيانات الجدول `purchase`
--

INSERT INTO `purchase` (`purchaseid`, `customer`, `AppName`, `total`, `date_purchase`, `address`, `STATUS`) VALUES
(2, 'Abeer', 'Zaheb', 79, '2023-11-26 08:41:12', 'Alsahafa', NULL),
(3, 'Fahad Mohammed', 'Ywseel', 76, '2023-11-26 08:42:16', 'Alyasmeen', NULL),
(5, 'Khalid Abdulaziz', 'Jaek', 52, '2023-11-26 08:46:37', 'Alhamra', NULL),
(7, 'Dalal', 'Jaek', 68, '2023-11-26 08:47:41', 'Alwahah', NULL),
(17, 'Raneem', 'Zaheb', 125, '2023-11-25 20:22:32', 'Alsahafa', NULL),
(40, 'Sara Abdullah', 'Ywseel', 26, '2023-11-26 08:39:18', 'Alsahafa', NULL);

-- --------------------------------------------------------

--
-- بنية الجدول `purchase_detail`
--

CREATE TABLE `purchase_detail` (
  `pdid` int(11) NOT NULL,
  `purchaseid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- إرجاع أو استيراد بيانات الجدول `purchase_detail`
--

INSERT INTO `purchase_detail` (`pdid`, `purchaseid`, `productid`, `quantity`) VALUES
(3, 12, 25, 1),
(14, 8, 24, 2),
(15, 8, 25, 2),
(16, 3, 32, 3),
(18, 11, 25, 1),
(19, 11, 25, 1),
(21, 12, 25, 1),
(22, 13, 25, 1),
(23, 13, 25, 1),
(24, 13, 25, 1),
(25, 14, 25, 1),
(26, 14, 25, 1),
(27, 15, 25, 1),
(28, 16, 25, 1),
(29, 17, 30, 5),
(30, 17, 30, 3),
(37, 40, 40, 2),
(38, 45, 40, 1),
(49, 7, 43, 4),
(50, 7, 44, 4),
(90, 5, 43, 2),
(99, 5, 35, 2),
(100, 3, 44, 1),
(109, 2, 38, 1),
(110, 2, 45, 1);

-- --------------------------------------------------------

--
-- بنية الجدول `resturants`
--

CREATE TABLE `resturants` (
  `id` int(11) NOT NULL,
  `name` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `destination` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `resturants`
--

INSERT INTO `resturants` (`id`, `name`, `destination`, `logo`, `password`) VALUES
(1, 'McDonald\'s', 'Al-malqa branch', 'upload/mcdonalds_icon.png', '123456789'),
(2, 'Herfy', 'Al-narjis branch', 'upload/herfy_icon.png', '123456789'),
(3, 'Kfc', 'Al-yasmin branch', 'upload/kfc_iconic.JPG', '123456789'),
(4, 'Pizza hut', 'Al-yasmin branch', 'upload/hut_iconic.png', '123456789'),
(5, 'Burger King', 'Al-yasmin branch', 'upload/king_logo.png', '123456789'),
(6, 'Kudu', 'Al-yasmin branch', 'upload/kudu_logo.png', '123456789');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productid`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`purchaseid`);

--
-- Indexes for table `purchase_detail`
--
ALTER TABLE `purchase_detail`
  ADD PRIMARY KEY (`pdid`);

--
-- Indexes for table `resturants`
--
ALTER TABLE `resturants`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `categoryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `productid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `purchaseid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `purchase_detail`
--
ALTER TABLE `purchase_detail`
  MODIFY `pdid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `resturants`
--
ALTER TABLE `resturants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
