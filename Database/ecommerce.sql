-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2024 at 04:39 PM
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
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `type` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `type`, `name`, `email`, `address`) VALUES
(1, 'admin', '123', 'Admin', 'admin', 'admin@plantstore.com', 'varshi'),
(4, 'jay', '123', 'Employee', 'jay', 'jayeshwagh665@gmail.com', 'varshi');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `c_id` int(11) NOT NULL,
  `c_name` varchar(20) NOT NULL,
  `c_status` enum('Yes','No') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`c_id`, `c_name`, `c_status`) VALUES
(8, 'PLANTS', 'Yes'),
(9, 'SEEDS', 'Yes'),
(10, 'POTS & PLANTERS', 'No'),
(11, 'PLANT CARE TOOLS', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(200) NOT NULL,
  `p_title` varchar(100) NOT NULL,
  `p_status` enum('Yes','No') NOT NULL,
  `p_price` int(11) NOT NULL,
  `p_discount` int(11) NOT NULL,
  `p_quantity` int(11) NOT NULL,
  `p_earning` int(11) NOT NULL,
  `p_sales` int(11) NOT NULL,
  `cat_name` varchar(50) NOT NULL,
  `p_image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`p_id`, `p_name`, `p_title`, `p_status`, `p_price`, `p_discount`, `p_quantity`, `p_earning`, `p_sales`, `cat_name`, `p_image`) VALUES
(66, 'Peace Lily Plant', 'Peace Lily Plant', 'Yes', 239, 5, 100, 0, 0, '8', '../admin/images/product/GroPot (3).jpg'),
(67, 'Jade Plant Mini', 'Jade Plant Mini', 'Yes', 549, 5, 100, 0, 0, '8', '../admin/images/product/Jade Plant Mini.jpg'),
(68, '5 Best Fragrant Plants', '5 Best Fragrant Plants', 'Yes', 999, 8, 60, 0, 0, '8', '../admin/images/product/5 Best Fragrant Plants.jpg'),
(69, 'Lily plant ', 'Lily plant ', 'Yes', 300, 5, 100, 0, 0, '8', '../admin/images/product/lily.jpg'),
(70, 'Miniature Rose, Button Rose (Pink)', 'Miniature Rose, Button Rose (Pink)', 'Yes', 499, 5, 99, 0, 0, '8', '../admin/images/product/Miniature Rose, Button Rose (Pink).jpg'),
(71, 'Nelumbo Nucifera, Lotus ( Mix Colors) - 0.5 kg Seeds', 'Nelumbo Nucifera, Lotus ( Mix Colors) - 0.5 kg Seeds', 'Yes', 599, 15, 20, 0, 0, '9', '../admin/images/product/Nelumbo Nucifera, Lotus ( Mix Colors) - 0.5 kg Seeds.jpg'),
(72, 'elephant-bush-portulacaria jade green plant', 'elephant-bush-portulacaria jade green plant', 'Yes', 399, 4, 99, 383, 1, '8', '../admin/images/product/nurserylive-g-plant-elephant-bush-portulacaria-afra-jade-green-plant-in-4.5-inch-11-cm-ronda-No-1110-round-plastic-green-planter-558634_463x463.jpg'),
(73, 'Pack of 75 Native Tree Seeds of India', 'Pack of 75 Native Tree Seeds of India', 'Yes', 699, 7, 60, 0, 0, '9', '../admin/images/product/Pack of 75 Native Tree Seeds of India.jpg'),
(74, 'Parijat Tree, Parijatak, Night Flowering Jasmine - Plant', 'Parijat Tree, Parijatak, Night Flowering Jasmine - Plant', 'Yes', 399, 2, 49, 391, 1, '8', '../admin/images/product/Parijat Tree, Parijatak, Night Flowering Jasmine - Plant.jpg'),
(75, 'Transplanting Trowel No. MMI 83 - Gardening Tool', 'Transplanting Trowel No. MMI 83 - Gardening Tool', 'Yes', 599, 9, 60, 0, 0, '11', '../admin/images/product/Transplanting Trowel No. MMI 83 - Gardening Tool.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `s_id` int(11) NOT NULL,
  `s_firstname` varchar(150) NOT NULL,
  `s_lastname` varchar(150) NOT NULL,
  `s_email` varchar(150) NOT NULL,
  `s_phone` varchar(50) NOT NULL,
  `s_address` varchar(250) NOT NULL,
  `city` varchar(50) NOT NULL,
  `s_cost` int(11) NOT NULL,
  `shipment_status` varchar(50) DEFAULT 'Unseen'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`s_id`, `s_firstname`, `s_lastname`, `s_email`, `s_phone`, `s_address`, `city`, `s_cost`, `shipment_status`) VALUES
(43, 'jayesh ', 'wagh', 'jayeshwagh665@gmail.com', '8600535312', 'A/P Varshi,Mali Galli', 'dhule', 774, 'Product Recieved');

-- --------------------------------------------------------

--
-- Table structure for table `sales_info`
--

CREATE TABLE `sales_info` (
  `id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `cost` int(11) NOT NULL,
  `p_option` varchar(200) NOT NULL,
  `bkash` varchar(200) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sales_info`
--

INSERT INTO `sales_info` (`id`, `s_id`, `p_id`, `quantity`, `cost`, `p_option`, `bkash`, `date`) VALUES
(62, 43, 74, 1, 391, 'Cash', 'Not Needed', '2023-11-04'),
(63, 43, 72, 1, 774, 'Cash', 'Not Needed', '2023-11-04');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `u_id` int(11) NOT NULL,
  `username` varchar(150) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(25) NOT NULL,
  `f_name` varchar(30) NOT NULL,
  `l_name` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`u_id`, `username`, `email`, `password`, `f_name`, `l_name`, `phone`) VALUES
(58, 'jayesh', 'jayeshwagh665@gmail.com', 'jay@wagh', 'jayesh ', 'wagh', '8600535312');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `sales_info`
--
ALTER TABLE `sales_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`u_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `sales_info`
--
ALTER TABLE `sales_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
