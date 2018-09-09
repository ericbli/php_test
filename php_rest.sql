-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 02, 2018 at 09:59 PM
-- Server version: 5.7.19
-- PHP Version: 7.1.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php_rest`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `created_at`, `updated_at`) VALUES
(1, 'Codeigniter Rest API', 'Momo Baruno', '2015-12-26 09:17:14', '2015-12-26 09:17:14');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`) VALUES
(1, 'Technology', '2018-08-12 09:22:03'),
(2, 'Gaming', '2018-08-12 09:22:03'),
(3, 'Auto', '2018-08-12 09:22:03'),
(4, 'Entertainment', '2018-08-12 09:22:03'),
(5, 'Books', '2018-08-12 09:22:03');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `gender` varchar(10) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `age` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `name`, `address`, `gender`, `designation`, `age`) VALUES
(1, 'John Smith', '656 Edsel Road\r\nSherman Oaks, CA 91403', 'Male', 'Manager', 40),
(5, 'Clara Berry', '63 Woodridge Lane\r\nMemphis, TN 38138', 'Male', 'Programmer', 22),
(6, 'Barbra K. Hurley', '1241 Canis Heights Drive\r\nLos Angeles, CA 90017', 'Female', 'Service technician', 26),
(7, 'Antonio J. Forbes', '403 Snyder Avenue\r\nCharlotte, NC 28208', 'Male', 'Falling', 32),
(8, 'Charles D. Horst', '1636 Walnut Hill Drive\r\nCincinnati, OH 45202', 'Male', 'Financial investigator', 29),
(9, 'Beau L. Clayton', '3588 Karen Lane\r\nLouisville, KY 40223', 'Male', 'Extractive metallurgical engin', 33),
(10, 'Ramona W. Burns', '2170 Ocala Street\r\nOrlando, FL 32801', 'Female', 'Electronic typesetting machine operator', 27),
(11, 'Jennifer A. Morrison', '2135 Lakeland Terrace\r\nPlymouth, MI 48170', 'Female', 'Rigging chaser', 29),
(12, 'Susan Juarez', '3177 Horseshoe Lane\r\nNorristown, PA 19403', 'Male', 'Control and valve installe', 52),
(13, 'Ellan D. Downie', '384 Flynn Street\r\nStrongsville, OH 44136', 'Female', 'Education and training manager', 26),
(14, 'Larry T. Williamson', '1424 Andell Road\r\nBrentwood, TN 37027', 'Male', 'Teaching assistant', 30),
(15, 'Lauren M. Reynolds', '4798 Echo Lane\r\nKentwood, MI 49512', 'Female', 'Internet developer', 22),
(16, 'Joseph L. Judge', '3717 Junkins Avenue\r\nMoultrie, GA 31768', 'Male', 'Refrigeration mechanic', 35),
(17, 'Eric C. Lavelle', '1120 Whitetail Lane\r\nDallas, TX 75207', 'Male', 'Model', 21),
(18, 'Cheryl T. Smithers', '1203 Abia Martin Drive\r\nCommack, NY 11725', 'Female', 'Personal banker', 23),
(19, 'Tonia Diaz', '4724 Rocky Road\r\nPhiladelphia, PA 19107', 'Female', 'Facilitator', 29),
(20, 'Stephanie P. Lederman', '2117 Larry Street\r\nWaukesha, WI 53186', 'Female', 'Mental health aide', 27),
(21, 'Edward F. Sanchez', '2313 Elliott Street\r\nManchester, NH 03101', 'Male', 'Marine oilerp', 28),
(25, 'Peter Parker', '403 Snyder Avenue Charlotte, NC 28208', 'Male', 'Programmer', 28),
(27, 'John Smith', '384 Flynn Street Strongsville, OH 44136', 'Male', 'Web Developer', 25),
(28, 'Mark Boucher', '256, Olive Street, NY', 'Male', 'Techbical Assistance', 23);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `author` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `title`, `body`, `author`, `created_at`) VALUES
(1, 1, 'Technology Post One', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut interdum est nec lorem mattis interdum. Cras augue est, interdum eu consectetur et, faucibus vel turpis. Etiam pulvinar, enim quis elementum iaculis, tortor sapien eleifend eros, vitae rutrum augue quam sed leo. Vivamus fringilla, diam sit amet vestibulum vulputate, urna risus hendrerit arcu, vitae fringilla odio justo vulputate neque. Nulla a massa sed est vehicula rhoncus sit amet quis libero. Integer euismod est quis turpis hendrerit, in feugiat mauris laoreet. Vivamus nec laoreet neque. Cras condimentum aliquam nunc nec maximus. Cras facilisis eros quis leo euismod pharetra sed cursus orci.', 'Sam Smith', '2018-08-12 09:22:03'),
(2, 2, 'Gaming Post One', 'Adipiscing elit. Ut interdum est nec lorem mattis interdum. Cras augue est, interdum eu consectetur et, faucibus vel turpis. Etiam pulvinar, enim quis elementum iaculis, tortor sapien eleifend eros, vitae rutrum augue quam sed leo. Vivamus fringilla, diam sit amet vestibulum vulputate, urna risus hendrerit arcu, vitae fringilla odio justo vulputate neque. Nulla a massa sed est vehicula rhoncus sit amet quis libero. Integer euismod est quis turpis hendrerit, in feugiat mauris laoreet. Vivamus nec laoreet neque.', 'Kevin Williams', '2018-08-12 09:22:03'),
(3, 1, 'Technology Post Two', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut interdum est nec lorem mattis interdum. Cras augue est, interdum eu consectetur et, faucibus vel turpis. Etiam pulvinar, enim quis elementum iaculis, tortor sapien eleifend eros, vitae rutrum augue quam sed leo. Vivamus fringilla, diam sit amet vestibulum vulputate, urna risus hendrerit arcu, vitae fringilla odio justo vulputate neque. Nulla a massa sed est vehicula rhoncus sit amet quis libero. Integer euismod est quis turpis hendrerit, in feugiat mauris laoreet. Vivamus nec laoreet neque. Cras condimentum aliquam nunc nec maximus. Cras facilisis eros quis leo euismod pharetra sed cursus orci.', 'Sam Smith', '2018-08-12 09:22:03'),
(4, 4, 'Entertainment Post One', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut interdum est nec lorem mattis interdum. Cras augue est, interdum eu consectetur et, faucibus vel turpis. Etiam pulvinar, enim quis elementum iaculis, tortor sapien eleifend eros, vitae rutrum augue quam sed leo. Vivamus fringilla, diam sit amet vestibulum vulputate, urna risus hendrerit arcu, vitae fringilla odio justo vulputate neque. Nulla a massa sed est vehicula rhoncus sit amet quis libero. Integer euismod est quis turpis hendrerit, in feugiat mauris laoreet. Vivamus nec laoreet neque. Cras condimentum aliquam nunc nec maximus. Cras facilisis eros quis leo euismod pharetra sed cursus orci.', 'Mary Jackson', '2018-08-12 09:22:03'),
(5, 4, 'Entertainment Post Two', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut interdum est nec lorem mattis interdum. Cras augue est, interdum eu consectetur et, faucibus vel turpis. Etiam pulvinar, enim quis elementum iaculis, tortor sapien eleifend eros, vitae rutrum augue quam sed leo. Vivamus fringilla, diam sit amet vestibulum vulputate, urna risus hendrerit arcu, vitae fringilla odio justo vulputate neque. Nulla a massa sed est vehicula rhoncus sit amet quis libero. Integer euismod est quis turpis hendrerit, in feugiat mauris laoreet. Vivamus nec laoreet neque. Cras condimentum aliquam nunc nec maximus. Cras facilisis eros quis leo euismod pharetra sed cursus orci.', 'Mary Jackson', '2018-08-12 09:22:03'),
(6, 1, 'Technology Post Three', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut interdum est nec lorem mattis interdum. Cras augue est, interdum eu consectetur et, faucibus vel turpis. Etiam pulvinar, enim quis elementum iaculis, tortor sapien eleifend eros, vitae rutrum augue quam sed leo. Vivamus fringilla, diam sit amet vestibulum vulputate, urna risus hendrerit arcu, vitae fringilla odio justo vulputate neque. Nulla a massa sed est vehicula rhoncus sit amet quis libero. Integer euismod est quis turpis hendrerit, in feugiat mauris laoreet. Vivamus nec laoreet neque. Cras condimentum aliquam nunc nec maximus. Cras facilisis eros quis leo euismod pharetra sed cursus orci.', 'Sam Smith', '2018-08-12 09:22:03');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(20) NOT NULL,
  `product_name` varchar(120) NOT NULL,
  `product_brand` varchar(100) NOT NULL,
  `product_price` decimal(8,2) NOT NULL,
  `product_ram` char(5) NOT NULL,
  `product_storage` varchar(50) NOT NULL,
  `product_camera` varchar(20) NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `product_quantity` mediumint(5) NOT NULL,
  `product_status` enum('0','1') NOT NULL COMMENT '0-active,1-inactive'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_brand`, `product_price`, `product_ram`, `product_storage`, `product_camera`, `product_image`, `product_quantity`, `product_status`) VALUES
(1, 'Honor 9 Lite (Sapphire Blue, 64 GB)  (4 GB RAM)', 'Honor', '14499.00', '4', '64', '13', 'image-1.jpeg', 10, '1'),
(2, '\r\nInfinix Hot S3 (Sandstone Black, 32 GB)  (3 GB RAM)', 'Infinix', '8999.00', '3', '32', '13', 'image-2.jpeg', 10, '1'),
(3, 'VIVO V9 Youth (Gold, 32 GB)  (4 GB RAM)', 'VIVO', '16990.00', '4', '32', '16', 'image-3.jpeg', 10, '1'),
(4, 'Moto E4 Plus (Fine Gold, 32 GB)  (3 GB RAM)', 'Moto', '11499.00', '3', '32', '8', 'image-4.jpeg', 10, '1'),
(5, 'Lenovo K8 Plus (Venom Black, 32 GB)  (3 GB RAM)', 'Lenevo', '9999.00', '3', '32', '13', 'image-5.jpg', 10, '1'),
(6, 'Samsung Galaxy On Nxt (Gold, 16 GB)  (3 GB RAM)', 'Samsung', '10990.00', '3', '16', '13', 'image-6.jpeg', 10, '1'),
(7, 'Moto C Plus (Pearl White, 16 GB)  (2 GB RAM)', 'Moto', '7799.00', '2', '16', '8', 'image-7.jpeg', 10, '1'),
(8, 'Panasonic P77 (White, 16 GB)  (1 GB RAM)', 'Panasonic', '5999.00', '1', '16', '8', 'image-8.jpeg', 10, '1'),
(9, 'OPPO F5 (Black, 64 GB)  (6 GB RAM)', 'OPPO', '19990.00', '6', '64', '16', 'image-9.jpeg', 10, '1'),
(10, 'Honor 7A (Gold, 32 GB)  (3 GB RAM)', 'Honor', '8999.00', '3', '32', '13', 'image-10.jpeg', 10, '1'),
(11, 'Asus ZenFone 5Z (Midnight Blue, 64 GB)  (6 GB RAM)', 'Asus', '29999.00', '6', '128', '12', 'image-12.jpeg', 10, '1'),
(12, 'Redmi 5A (Gold, 32 GB)  (3 GB RAM)', 'MI', '5999.00', '3', '32', '13', 'image-12.jpeg', 10, '1'),
(13, 'Intex Indie 5 (Black, 16 GB)  (2 GB RAM)', 'Intex', '4999.00', '2', '16', '8', 'image-13.jpeg', 10, '1'),
(14, 'Google Pixel 2 XL (18:9 Display, 64 GB) White', 'Google', '61990.00', '4', '64', '12', 'image-14.jpeg', 10, '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee`
--

CREATE TABLE `tbl_employee` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `designation` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_employee`
--

INSERT INTO `tbl_employee` (`id`, `name`, `gender`, `designation`) VALUES
(1, 'Michael Bruce', 'Male', 'System Architect'),
(2, 'Jennifer Winters', 'Female', 'Senior Programmer'),
(3, 'Donna Fox', 'Female', 'Office Manager'),
(4, 'Howard Hatfield', 'Male', 'Customer Support'),
(5, 'Eric', 'Male', 'Shanghai'),
(6, 'John', 'male', 'Stockholm'),
(7, 'Eric', 'Male', 'Shanghai'),
(8, 'John', 'male', 'Stockholm');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(11) NOT NULL,
  `order_customer_name` varchar(255) NOT NULL,
  `order_item` varchar(255) NOT NULL,
  `order_value` double(12,2) NOT NULL,
  `order_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `order_customer_name`, `order_item`, `order_value`, `order_date`) VALUES
(1, 'David E. Gary', 'Shuttering Plywood', 1500.00, '2016-10-14'),
(2, 'Eddie M. Douglas', 'Aluminium Heavy Windows', 2000.00, '2016-10-08'),
(3, 'Oscar D. Scoggins', 'Plaster Of Paris', 150.00, '2016-09-29'),
(4, 'Clara C. Kulik', 'Spin Driller Machine', 350.00, '2016-09-30'),
(5, 'Christopher M. Victory', 'Shopping Trolley', 100.00, '2016-10-01'),
(6, 'Jessica G. Fischer', 'CCTV Camera', 800.00, '2016-10-02'),
(7, 'Roger R. White', 'Truck Tires', 2000.00, '2016-09-28'),
(8, 'Susan C. Richardson', 'Glass Block', 200.00, '2016-10-04'),
(9, 'David C. Jury', 'Casing Pipes', 500.00, '2016-09-27'),
(10, 'Lori C. Skinner', 'Glass PVC Rubber', 1800.00, '2016-09-30'),
(11, 'Shawn S. Derosa', 'Sony HTXT1 2.1-Channel TV', 180.00, '2016-10-03'),
(12, 'Karen A. McGee', 'Over-the-Ear Stereo Headphones ', 25.00, '2016-10-01'),
(13, 'Kristine B. McGraw', 'Tristar 10\" Round Copper Chef Pan with Glass Lid', 20.00, '2016-09-30'),
(14, 'Gary M. Porter', 'ROBO 3D R1 Plus 3D Printer', 600.00, '2016-10-02'),
(15, 'Sarah D. Hunter', 'Westinghouse Select Kitchen Appliances', 35.00, '2016-09-29'),
(16, 'Diane J. Thomas', 'SanDisk Ultra 32GB microSDHC', 12.00, '2016-10-05'),
(17, 'Helena J. Quillen', 'TaoTronics Dimmable Outdoor String Lights', 16.00, '2016-10-04'),
(18, 'Arlette G. Nathan', 'TaoTronics Bluetooth in-Ear Headphones', 25.00, '2016-10-03'),
(19, 'Ronald S. Vallejo', 'Scotchgard Fabric Protector, 10-Ounce, 2-Pack', 20.00, '2016-10-03'),
(20, 'Felicia L. Sorensen', 'Anker 24W Dual USB Wall Charger with Foldable Plug', 12.00, '2016-10-04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `last_login` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `name`, `last_login`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$1$Dtqyvz7/$wZSaZbfHgn0UbLlVi1HHp0', 'Admin', '2018-09-01 21:57:53', '2015-12-25 10:35:16', '2015-12-25 10:35:16');

-- --------------------------------------------------------

--
-- Table structure for table `users_authentication`
--

CREATE TABLE `users_authentication` (
  `id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `expired_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_authentication`
--

INSERT INTO `users_authentication` (`id`, `users_id`, `token`, `expired_at`, `created_at`, `updated_at`) VALUES
(1, 1, '$1$6fjNSBRR$7lx.mxo/q1LbNO7f5.7w8.', '2018-12-27 23:28:00', '2015-12-27 11:28:00', '2015-12-27 11:28:00'),
(2, 1, '$1$HY2H7rB0$2U.dlCsoHX21s/gvjCypG/', '2018-12-27 23:28:10', '2015-12-27 11:28:10', '2015-12-27 11:28:10'),
(3, 1, '$1$Mf8RmY6l$jfimxiQd2nw0Iq6lsc4WT1', '2018-09-02 09:02:20', '2018-09-01 16:02:20', '2018-09-01 16:02:20'),
(4, 1, '$1$BdQlgJyx$Zo2CtrIENUefl5rZSlw4q/', '2018-09-02 09:02:23', '2018-09-01 16:02:23', '2018-09-01 16:02:23'),
(5, 1, '$1$aRjyZvt6$LDwMoeDBt20eFSewQv6hO/', '2018-09-02 09:10:10', '2018-09-01 16:10:10', '2018-09-01 16:10:10'),
(6, 1, '$1$WRxUT3C8$t3IY2cZxs1uPJsta.2QkE.', '2018-09-02 09:30:19', '2018-09-01 16:30:19', '2018-09-01 16:30:19'),
(7, 1, '$1$3la3ozxQ$lXIBHIL8XMvb.5JmIEQ0s1', '2018-09-02 09:37:13', '2018-09-01 16:37:13', '2018-09-01 16:37:13'),
(8, 1, '$1$H/6v8PID$Ux7aeOxnsS14wmXVFyJXc.', '2018-09-02 09:42:30', '2018-09-01 16:42:30', '2018-09-01 16:42:30'),
(9, 1, '$1$x0cWPJH/$8Ifdwmn/nH8Vnm7vj4ixs0', '2018-09-02 09:42:56', '2018-09-01 16:42:56', '2018-09-01 16:42:56'),
(10, 1, '$1$5FWVd0qG$2Y9i.WILdML7fdXEVQbF5/', '2018-09-02 09:44:55', '2018-09-01 16:44:55', '2018-09-01 16:44:55'),
(11, 1, '$1$u5rGC0HC$k6PVNyPZUChLrYD4wKd8D/', '2018-09-02 09:46:21', '2018-09-01 16:46:21', '2018-09-01 16:46:21'),
(12, 1, '$1$3XAWwMmk$nE0tmfXjoE.TlRTV7yv/5.', '2018-09-02 09:46:27', '2018-09-01 16:46:27', '2018-09-01 16:46:27'),
(13, 1, '$1$RxbCDjkv$PKhYfs4AjLeZ5hHJu25OT.', '2018-09-02 09:48:21', '2018-09-01 16:48:21', '2018-09-01 16:48:21'),
(14, 1, '$1$NFr8x.Io$dTYhK9iQ.2pKjO3p134PO0', '2018-09-02 09:53:42', '2018-09-01 16:53:42', '2018-09-01 16:53:42'),
(15, 1, '$1$VnnKrbp7$prS1KYag8.tWy6ej87OBD.', '2018-09-02 09:57:04', '2018-09-01 16:57:04', '2018-09-01 16:57:04'),
(16, 1, '$1$y83C2bE0$5RyjTG6VcRGd47dTufU3q0', '2018-09-02 09:57:53', '2018-09-01 16:57:53', '2018-09-01 16:57:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `users_authentication`
--
ALTER TABLE `users_authentication`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users_authentication`
--
ALTER TABLE `users_authentication`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
