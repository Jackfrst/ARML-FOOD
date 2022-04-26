-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2022 at 07:16 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `arml-foods`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `full_name`, `username`, `password`) VALUES
(37, 'ARML TECH', 'armltech', '81dc9bdb52d04dc20036dbd8313ed055');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `title`, `image_name`, `featured`, `active`) VALUES
(6, 'Pizza', 'Food_Category_167.jpg', 'Yes', 'Yes'),
(7, 'Burger', 'Food_Category_921.jpg', 'Yes', 'Yes'),
(8, 'MOMO', 'Food_Category_627.jpg', 'Yes', 'Yes'),
(9, 'SET-MENU', 'Food_Category_84.jpg', 'No', 'Yes'),
(10, 'Filler', 'Food_Category_52.jpg', 'No', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_food`
--

CREATE TABLE `tbl_food` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img_name` varchar(255) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_food`
--

INSERT INTO `tbl_food` (`id`, `title`, `description`, `price`, `img_name`, `category_id`, `featured`, `active`) VALUES
(4, 'Chicken PIzza', '9 Inc PIzza for family.\r\nMade with Italian Sauce, Chicken, and organice vegetables.', '300.00', 'Food-Name-6093.jpg', 6, 'Yes', 'Yes'),
(5, 'Pizza Italia', '12 Inc full family Pizza.\r\nMade with Italian Sauce, Beef, and organice vegetables.', '475.00', 'Food-Name-4479.jpg', 6, 'Yes', 'Yes'),
(6, 'Chaw Mein', 'Does GO with taste buds of any type.\r\nMade with Italian Sauce, Chicken, and organice vegetables.', '180.00', 'Food-Name-7141.jpg', 10, 'Yes', 'Yes'),
(7, 'Chocolate Milk Shake', 'Mae with Australian Cow milk , Italian Chocolate and secret ingredient . ', '180.00', 'Food-Name-9554.jpg', 10, 'No', 'Yes'),
(8, 'Fries', ' Fries are served with mayonnaise or a lower-fat version called fritessaus (fries sauce).', '120.00', 'Food-Name-611.jpg', 10, 'Yes', 'Yes'),
(9, 'Chicken Wings', 'Made with Italian Sauce, Chicken, and organice vegetables.Comes with chili sauce. ', '160.00', 'Food-Name-6719.jpg', 10, 'Yes', 'Yes'),
(10, 'Pasta Europa', 'Made with Italian Sauce, Chicken, and organice vegetables. Comes with Italian Sauce.', '220.00', 'Food-Name-3006.jpg', 10, 'Yes', 'Yes'),
(11, 'Chicken SetUp', 'Made with Italian Sauce, Chicken, and organice vegetables. Comes with Italian Sauce.', '210.00', 'Food-Name-4139.jpg', 9, 'No', 'Yes'),
(12, 'BBQ Chicken SET UP', 'Made with Italian Sauce, Chicken, and organice vegetables. Comes with Italian Sauce.', '260.00', 'Food-Name-6083.jpg', 9, 'No', 'Yes'),
(13, 'Kacchi', 'Made with Italian Sauce, Chicken, and organice vegetables. Comes with Italian Sauce.(1:1)', '130.00', 'Food-Name-5104.jpg', 9, 'No', 'Yes'),
(14, 'Best BBQ', 'Made with Italian Sauce, Chicken, and organice vegetables. Comes with Italian Sauce.', '260.00', 'Food-Name-3259.jpg', 9, 'No', 'Yes'),
(15, 'DIS Pasta', 'Made with Italian Sauce, Chicken, and organice vegetables. Comes with Italian Sauce.', '220.00', 'Food-Name-9824.jpg', 10, 'No', 'Yes'),
(16, 'MOMO INC', 'Made with Italian Sauce, Chicken, and organice vegetables. Comes with Italian Sauce.', '230.00', 'Food-Name-7019.jpg', 8, 'No', 'Yes'),
(17, 'Burger De Float', 'Made with Italian Sauce, Chicken, and organice vegetables. Comes with Italian Sauce.', '350.00', 'Food-Name-6835.jpg', 7, 'No', 'Yes'),
(18, 'Crispy Chicken ', 'Made with Italian Sauce, Chicken, and organice vegetables. Comes with Italian Sauce.', '120.00', 'Food-Name-6951.jpg', 10, 'No', 'Yes'),
(19, 'Italian Soup', 'Made with Italian Sauce, Chicken, and organice vegetables. Comes with Italian Sauce.', '210.00', 'Food-Name-5111.jpg', 10, 'No', 'Yes'),
(20, 'Chicken Brusate', 'Made with Italian Sauce, Chicken, and organice vegetables. Comes with Italian Sauce.', '250.00', 'Food-Name-5536.jpg', 9, 'No', 'Yes'),
(21, 'Roast SETUP', 'Made with Italian Sauce, Chicken, and organice vegetables. Comes with Italian Sauce.', '230.00', 'Food-Name-45.jpg', 9, 'No', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `food` varchar(150) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(100) NOT NULL,
  `customer_name` varchar(150) NOT NULL,
  `customer_contact` varchar(20) NOT NULL,
  `customer_email` varchar(150) NOT NULL,
  `customer_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_order`
--


--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_food`
--
ALTER TABLE `tbl_food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_food`
--
ALTER TABLE `tbl_food`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
