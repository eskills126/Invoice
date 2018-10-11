-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 11, 2018 at 08:17 PM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testing4`
--

-- --------------------------------------------------------

--
-- Table structure for table `stockqty`
--

CREATE TABLE `stockqty` (
  `id` int(11) NOT NULL,
  `item_name` varchar(250) NOT NULL,
  `item_qty` int(50) NOT NULL,
  `item_price` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stockqty`
--

INSERT INTO `stockqty` (`id`, `item_name`, `item_qty`, `item_price`) VALUES
(1, 'HP', 5, 200),
(2, 'Dell', 10, 300),
(3, 'IBM', 25, 50),
(4, 'Asus', 70, 20);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(11) NOT NULL,
  `order_no` int(50) NOT NULL,
  `order_date` varchar(250) NOT NULL,
  `order_receiver_name` varchar(250) NOT NULL,
  `order_receiver_remarks` varchar(500) NOT NULL,
  `order_total_before_discount_freight` decimal(10,2) NOT NULL,
  `order_total_discount_percentage` decimal(10,2) NOT NULL,
  `order_total_discount_value` decimal(10,2) NOT NULL,
  `order_total_freight` decimal(10,2) NOT NULL,
  `order_total_after_discount_freight` decimal(10,2) NOT NULL,
  `order_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `order_no`, `order_date`, `order_receiver_name`, `order_receiver_remarks`, `order_total_before_discount_freight`, `order_total_discount_percentage`, `order_total_discount_value`, `order_total_freight`, `order_total_after_discount_freight`, `order_datetime`) VALUES
(3, 1, '20/01/2092', 'Naeem Ahmed', 'Lalazar Colony', '0.00', '0.00', '0.00', '0.00', '0.00', '2018-09-22 00:00:00'),
(5, 2, '03/10/2018', 'Moin', 'Lalazar', '0.00', '5.00', '0.00', '0.00', '0.00', '2018-09-29 00:00:00'),
(6, 4, '29/09/2018', 'Amjad', '220KV Grid Station', '500.00', '5.00', '250.00', '250.00', '500.00', '2018-09-29 00:00:00'),
(11, 5, '05/10/2018', 'Naeem', 'no', '21.00', '0.00', '0.00', '0.00', '21.00', '2018-10-05 00:00:00'),
(12, 6, '06/10/2018', 'Jamal Ahmed', 'no', '72.00', '0.00', '0.00', '0.00', '72.00', '2018-10-06 00:00:00'),
(13, 7, '07/10/2018', 'Jutt', '', '64.00', '0.00', '0.00', '0.00', '64.00', '2018-10-07 00:00:00'),
(14, 8, '07/10/2018', 'Jut2', 'no', '106.00', '0.00', '0.00', '0.00', '106.00', '2018-10-07 00:00:00'),
(21, 10, '08/10/2018', 'Imran', 'No', '25.00', '0.00', '0.00', '0.00', '25.00', '2018-10-08 00:00:00'),
(23, 11, '08/10/2018', 'Imran khan', '', '41.00', '0.00', '0.00', '0.00', '41.00', '2018-10-08 00:00:00'),
(24, 12, '08/10/2018', 'Jamal', '', '41.00', '0.00', '0.00', '0.00', '41.00', '2018-10-08 00:00:00'),
(27, 15, '11/10/2018', 'Ghs 567', 'govt high school', '3550.00', '0.00', '20.00', '200.00', '3730.00', '2018-10-11 00:00:00'),
(28, 16, '11/10/2018', 'Asad Umar', 'Address', '19200.00', '1.00', '200.00', '200.00', '19200.00', '2018-10-11 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_item`
--

CREATE TABLE `tbl_order_item` (
  `order_item_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `item_name` varchar(250) NOT NULL,
  `order_item_whname` varchar(250) NOT NULL,
  `order_item_quantity` decimal(10,2) NOT NULL,
  `order_item_squantity` decimal(10,2) NOT NULL,
  `order_item_prate` decimal(10,2) NOT NULL,
  `order_item_grate` decimal(10,2) NOT NULL,
  `order_item_gamount` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_order_item`
--

INSERT INTO `tbl_order_item` (`order_item_id`, `order_id`, `item_name`, `order_item_whname`, `order_item_quantity`, `order_item_squantity`, `order_item_prate`, `order_item_grate`, `order_item_gamount`) VALUES
(390, 6, 'Fan', 'Shop1', '5.00', '5.00', '5.00', '100.00', '500.00'),
(404, 10, 'Cup', 'Shop', '5.00', '5.00', '5.00', '5.00', '25.00'),
(405, 11, 'no', 'no', '3.00', '7.00', '7.00', '7.00', '21.00'),
(406, 12, 'i', 'i', '8.00', '9.00', '8.00', '9.00', '72.00'),
(407, 13, 'Cup', 'cup', '8.00', '8.00', '8.00', '8.00', '64.00'),
(433, 33, '5', '5', '5.00', '5.00', '5.00', '5.00', '25.00'),
(434, 33, 'no', 'no', '5.00', '5.00', '5.00', '55.00', '275.00'),
(435, 21, 'item', 'no', '5.00', '5.00', '5.00', '5.00', '25.00'),
(438, 23, 't', 't', '5.00', '5.00', '5.00', '5.00', '25.00'),
(439, 23, 'r', 'r', '4.00', '4.00', '4.00', '4.00', '16.00'),
(440, 24, 'g', 'g', '5.00', '5.00', '5.00', '5.00', '25.00'),
(441, 24, 'fg', 'fg', '4.00', '4.00', '4.00', '4.00', '16.00'),
(457, 14, 'mug', 'mug', '9.00', '9.00', '9.00', '9.00', '81.00'),
(458, 14, 'Cup', 'shop', '5.00', '5.00', '5.00', '5.00', '25.00'),
(461, 27, '2-Dell', 'No', '5.00', '10.00', '0.00', '300.00', '1500.00'),
(462, 27, '4-Asus', 'Shop 2', '50.00', '70.00', '0.00', '20.00', '1000.00'),
(463, 27, '3-IBM', 'No', '5.00', '25.00', '0.00', '50.00', '250.00'),
(464, 27, '1-HP', 'N0', '4.00', '5.00', '0.00', '200.00', '800.00'),
(472, 28, '2-Dell', 'Shop 2', '60.00', '10.00', '500.00', '300.00', '18000.00'),
(473, 28, '1-HP', 'Shop 2', '6.00', '5.00', '0.00', '200.00', '1200.00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `stockqty`
--
ALTER TABLE `stockqty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `tbl_order_item`
--
ALTER TABLE `tbl_order_item`
  ADD PRIMARY KEY (`order_item_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `stockqty`
--
ALTER TABLE `stockqty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tbl_order_item`
--
ALTER TABLE `tbl_order_item`
  MODIFY `order_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=474;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
