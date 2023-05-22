-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2023 at 09:14 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopee`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `sender` int(11) NOT NULL,
  `receiver` int(11) NOT NULL,
  `message` text DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`sender`, `receiver`, `message`, `timestamp`) VALUES
(1, 7, 'order of AAAA by Customer #7 made on 2023-05-22 15:33:21 is now accepted', '2023-05-22 15:33:46'),
(7, 1, 'noice', '2023-05-22 15:34:09'),
(1, 7, 'yo', '2023-05-22 15:42:31'),
(7, 1, 'thanks!', '2023-05-22 15:43:11'),
(1, 5, 'order of glasses by Customer #5 made on 2023-05-22 15:44:32 is now accepted', '2023-05-22 15:45:28'),
(5, 1, 'yo', '2023-05-22 15:45:59'),
(1, 5, 'yo', '2023-05-22 15:46:27'),
(1, 8, 'order of phone by Customer #8 made on 2023-05-22 15:50:28 is now accepted', '2023-05-22 15:50:49'),
(1, 8, 'order of headphones by Customer #8 made on 2023-05-22 15:50:28 is now completed', '2023-05-22 15:50:53'),
(1, 8, 'order of Shoes5 by Customer #8 made on 2023-05-22 15:50:28 is now returned', '2023-05-22 15:50:56'),
(8, 1, 'from customer IO', '2023-05-22 15:51:27'),
(1, 8, 'from ADMIN to customer IO', '2023-05-22 15:51:55');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `prodid` int(4) NOT NULL,
  `prodcat` text DEFAULT NULL,
  `productname` text DEFAULT NULL,
  `productdesc` text DEFAULT NULL,
  `productlink` text DEFAULT NULL,
  `productimage` text DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `lastprice` int(11) DEFAULT NULL,
  `ourprice` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`prodid`, `prodcat`, `productname`, `productdesc`, `productlink`, `productimage`, `quantity`, `lastprice`, `ourprice`) VALUES
(1, 'shoes', 'Shoes1', 'sneaker', 'google.com', 'images/shoes1.png', 99, 120, 120),
(2, 'shoes', 'Shoes2', 'sneaker', 'google.com', 'images/shoes2.png', 800, 120, 120),
(3, 'shoes', 'Shoes3', 'sneaker', 'google.com', 'images/shoes3.png', 555, 120, 120),
(4, 'shoes', 'Shoes4', 'sneaker', 'google.com', 'images/shoes4.png', 0, 115, 120),
(5, 'shoes', 'Shoes5', 'sneaker', 'google.com', 'images/shoes5.png', 885, 110, 120),
(6, 'shirt', 'tisat1', 'shirt', 'google.com', 'images/tisat1.png', 199, 75, 80),
(7, 'shirt', 'tisat2', 'shirt', 'google.com', 'images/tisat2.png', 100, 75, 80),
(8, 'shirt', 'tisat3', 'shirt', 'google.com', 'images/tisat3.png', 20, 75, 80),
(9, 'shirt', 'tisat4', 'shirt', 'google.com', 'images/tisat4.png', 40, 75, 80),
(10, 'shirt', 'tisat5', 'shirt', 'google.com', 'images/tisat5.png', 50, 75, 80),
(11, 'other', 'phone', 'phone', 'google.com', 'images/mix1.png', 6, 280, 300),
(12, 'other', 'glasses', 'glasses', 'google.com', 'images/mix2.png', 4, 120, 150),
(13, 'other', 'razor', 'other', 'google.com', 'images/mix3.png', 3, 20, 20),
(14, 'other', 'watch', 'other', 'google.com', 'images/mix4.png', 8, 200, 200),
(15, 'other', 'headphones', 'other', 'google.com', 'images/mix5.png', 6, 125, 130),
(44, 'New Category', 'AAAA', 'AAAAA', 'www.google.com', 'images/grapes.jpg', 110, 1, 1),
(45, 'New Category', 'New Product', 'Product Description', 'www.google.com', 'images/blueberry.jpg', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `userid` int(11) DEFAULT NULL,
  `prodid` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `totalprice` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `status` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`userid`, `prodid`, `quantity`, `totalprice`, `date`, `status`) VALUES
(2, 11, 4, 1200, '2023-05-06 02:47:20', 'accepted'),
(2, 12, 1, 150, '2023-05-06 02:48:01', 'completed'),
(2, 12, 1, 150, '2023-05-06 02:49:21', 'accepted'),
(2, 11, 1, 300, '2023-05-06 02:51:53', 'pending'),
(2, 11, 1, 300, '2023-05-06 03:07:07', 'accepted'),
(2, 12, 1, 150, '2023-05-06 03:07:21', 'completed'),
(2, 13, 1, 20, '2023-05-06 03:07:56', 'refunded'),
(2, 11, 1, 300, '2023-05-06 03:24:24', 'refunded'),
(5, 12, 10, 1500, '2023-05-06 03:33:20', 'refunded'),
(5, 10, 10, 800, '2023-05-06 03:34:14', 'completed'),
(5, 11, 10, 3000, '2023-05-06 03:35:13', 'refunded'),
(5, 5, 1, 120, '2023-05-06 03:35:47', 'accepted'),
(5, 14, 1, 200, '2023-05-06 03:35:47', 'refunded'),
(2, 11, 1, 300, '2023-05-06 03:37:38', 'pending'),
(5, 11, 3, 900, '2023-05-06 03:38:43', 'pending'),
(6, 13, 1, 20, '2023-05-06 03:58:26', 'pending'),
(6, 14, 1, 200, '2023-05-06 03:58:26', 'pending'),
(5, 4, 777, 93240, '2023-05-06 06:16:11', 'pending'),
(5, 15, 1, 130, '2023-05-06 06:17:36', 'pending'),
(5, 11, 1, 300, '2023-05-06 06:35:27', 'pending'),
(5, 12, 1, 150, '2023-05-06 06:35:27', 'pending'),
(5, 5, 1, 120, '2023-05-06 06:35:27', 'pending'),
(5, 6, 1, 80, '2023-05-12 14:52:36', 'pending'),
(5, 11, 1, 300, '2023-05-12 14:55:45', 'accepted'),
(5, 12, 1, 150, '2023-05-12 14:55:45', 'refunded'),
(7, 44, 1, 1, '2023-05-22 15:33:21', 'accepted'),
(5, 12, 1, 150, '2023-05-22 15:44:32', 'accepted'),
(8, 11, 1, 300, '2023-05-22 15:50:28', 'accepted'),
(8, 15, 1, 130, '2023-05-22 15:50:28', 'completed'),
(8, 5, 1, 120, '2023-05-22 15:50:28', 'returned');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` int(4) NOT NULL,
  `email` text DEFAULT NULL,
  `paswrd` text DEFAULT NULL,
  `contact` text DEFAULT NULL,
  `custname` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `usertype` text DEFAULT NULL,
  `user_date` text DEFAULT NULL,
  `user_ip` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `email`, `paswrd`, `contact`, `custname`, `address`, `usertype`, `user_date`, `user_ip`) VALUES
(4, 'a', 'a', 'a', 'a', 'a', 'admin', '2023-05-05 08:32:24', '10.4.44.61'),
(5, 'b', 'b', 'b', 'b', 'b', 'customer', '2023-05-05 08:32:33', '10.4.44.61'),
(6, 'c', 'c', 'c', 'c', 'c', 'customer', '2023-05-05 08:58:06', '10.4.44.61'),
(7, 'tg', 'tg', 'tg', 'tg', 'tg', 'customer', '2023-05-22 08:33:00', '::1'),
(8, 'io', 'io', 'io', 'io', 'io', 'customer', '2023-05-22 08:49:56', '10.4.44.61');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`prodid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `prodid` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
