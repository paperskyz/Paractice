-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 21, 2021 at 01:03 PM
-- Server version: 10.3.28-MariaDB-cll-lve
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mwhrskay_Health415`
--
CREATE DATABASE IF NOT EXISTS `mwhrskay_Health415` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `mwhrskay_Health415`;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `first_name` varchar(230) NOT NULL,
  `last_name` varchar(230) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`first_name`, `last_name`, `username`, `password`) VALUES
('Mohammed', 'Al-Shalchy', 'blake1@gmail.com', 'du9UhfbJU6%W+Y{P');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_name` varchar(230) NOT NULL,
  `product_price` int(30) NOT NULL,
  `product_quantity` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `product_image` varchar(230) NOT NULL,
  `product_desc` varchar(230) NOT NULL,
  `product_category` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_name`, `product_price`, `product_quantity`, `product_id`, `product_image`, `product_desc`, `product_category`) VALUES
('1Product', 5, 5, 1, 'https://images.unsplash.com/photo-1584362917165-526a968579e8?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=2164&q=80', '1Product cool', 'category1'),
('2Product', 3, 10, 2, 'https://images.unsplash.com/photo-1584308666744-24d5c474f2ae?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1915&q=80', '2Product cool', 'category1'),
('3Product', 4, 14, 3, 'https://images.unsplash.com/photo-1607619056574-7b8d3ee536b2?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2220&q=80', '3Product cool', 'category1'),
('4Product', 10, 4, 4, 'https://images.unsplash.com/photo-1581159186721-b68b78da4ec9?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1534&q=80', '4Product cool', 'category1'),
('5Product', 20, 4, 5, 'https://images.unsplash.com/photo-1555633514-abcee6ab92e1?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1400&q=80', '5Product cool', 'category1'),
('6Product', 10, 2, 6, 'https://images.unsplash.com/photo-1562243061-204550d8a2c9?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1534&q=80', '6Product cool', 'category2'),
('7Product', 15, 3, 7, 'https://images.unsplash.com/photo-1573883431205-98b5f10aaedb?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1950&q=80', '7Product cool', 'category2'),
('8Product', 2, 20, 8, 'https://images.unsplash.com/photo-1512069772995-ec65ed45afd6?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1277&q=80', '8Product cool', 'category2'),
('9Product', 4, 10, 9, 'https://images.unsplash.com/photo-1577563782818-f7067373326c?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=2955&q=80', '9Product cool', 'category2'),
('10Product', 1, 15, 10, 'https://images.unsplash.com/photo-1471864190281-a93a3070b6de?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1950&q=80', '10Product cool', 'category2'),
('11Product', 4, 9, 11, 'https://images.unsplash.com/photo-1523243319451-54b60322f948?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80', '11Product cool', 'category3'),
('12Product', 5, 10, 12, 'https://images.unsplash.com/photo-1583088580067-16d1109aeacb?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1535&q=80', '12Product cool', 'category3'),
('13Product', 5, 7, 13, 'https://images.unsplash.com/photo-1584017911766-d451b3d0e843?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1949&q=80', '13Product cool', 'category3'),
('14Product', 3, 8, 14, 'https://images.unsplash.com/photo-1543709533-c032159da7b0?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80', '14Product cool', 'category3'),
('15Product', 10, 3, 15, 'https://images.unsplash.com/photo-1523245332310-ff40ff34a419?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1950&q=80', '15Product cool', 'category3'),
('16Product', 7, 8, 16, 'https://images.unsplash.com/photo-1584308878768-57d3387b1882?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1960&q=80', '16Product cool', 'category4'),
('17Product', 3, 6, 17, 'https://images.unsplash.com/photo-1612869746134-bd7f98a33812?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1867&q=80', '17Product cool', 'category4'),
('18Product', 10, 7, 18, 'https://images.unsplash.com/photo-1610542443439-279b81fba808?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1296&q=80', '18Product cool', 'category4'),
('19Product', 5, 6, 19, 'https://images.unsplash.com/photo-1544991936-9464fa9919d2?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1050&q=80', '19Product cool', 'category4'),
('20Product', 4, 8, 20, 'https://images.unsplash.com/photo-1565071783280-719b01b29912?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80', '20Product cool', 'category5'),
('21Product', 8, 3, 21, 'https://images.unsplash.com/photo-1573207185685-5109f337fdf6?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NzJ8fG1lZGljaW5lfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1200&q=60', '21Product cool', 'category5'),
('22Product', 1, 10, 22, 'https://images.unsplash.com/photo-1558956397-24d60741abc2?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1267&q=80', '22Product cool', 'category5'),
('23Product', 5, 5, 23, 'https://images.unsplash.com/photo-1544829885-9a58b457fd5a?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1050&q=80', '23Product cool', 'category5'),
('24Product', 3, 10, 24, 'https://images.unsplash.com/photo-1584017911766-d451b3d0e843?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1949&q=80', '24Product cool', 'category5'),
('25product', 9, 6, 25, 'https://images.unsplash.com/photo-1563213126-a4273aed2016?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1050&q=80', '25Product cool', 'category5'),
('26Product', 4, 9, 26, 'https://images.unsplash.com/photo-1576073218292-976931ec70ca?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1265&q=80', '26Product cool', 'category6'),
('27Product', 10, 11, 27, 'https://images.unsplash.com/photo-1558956397-1826756a58dd?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1267&q=80', '27Product cool', 'category6'),
('28Product', 5, 17, 28, 'https://images.unsplash.com/photo-1587370560942-ad2a04eabb6d?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1050&q=80', '28Product cool', 'category6'),
('29Product', 10, 30, 29, 'https://images.unsplash.com/photo-1544965367-91d108669d2d?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80', '29Product cool', 'category6'),
('30Product', 5, 30, 30, 'https://images.unsplash.com/photo-1567333971983-7ba18485eaad?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1267&q=80', '30Product cool', 'category6'),
('changed', 200, 200, 100, 'changed', 'changed', 'changed');

-- --------------------------------------------------------

--
-- Table structure for table `receipt`
--

CREATE TABLE `receipt` (
  `username` varchar(230) NOT NULL,
  `order_number` int(30) NOT NULL,
  `total` int(30) NOT NULL,
  `shipment_status` varchar(30) NOT NULL,
  `cancel_request` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `receipt`
--

INSERT INTO `receipt` (`username`, `order_number`, `total`, `shipment_status`, `cancel_request`) VALUES
('kiddo123@gmail.com', 4280, 6, 'ready', 'no'),
('kiddo123@gmail.com', 27655, 6, 'ready', 'yes'),
('momo@gmail.com', 16120, 20, 'shipped', 'yes'),
('MomoMomo', 14035, 15, 'ready', ''),
('momo@gmail.com', 31824, 3, 'cancelled', 'yes'),
('MomoMomo', 32020, 3, 'ready', 'no'),
('demo@gmail.com', 15900, 20, 'cancelled', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `first_name` varchar(230) NOT NULL,
  `last_name` varchar(230) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`first_name`, `last_name`, `username`, `password`) VALUES
('Mohammed', 'Al-Shalchy', 'momo@gmail.com', '$2y$10$6HQBUh0AhOpr5qzLgPRtWu9qaxozPSXnqhFUq9rqQJBete0191y1u'),
('test', 'demo', 'demo@gmail.com', '$2y$10$TCYkLUXziD59tp9M7FvX7uPKUl6fJg7ldkv9VVVObVeqDecf42Hou'),
('Mohammed', 'Al-Shalchy', 'Alshalchy@gmail.com', '$2y$10$DvJ5YaQh.r3SjzaR0du4JOP/ERv25yad7IyK3lSZuUl4yKcHGFvsm'),
('hello', 'cool', 'kiddo123@gmail.com', '$2y$10$iP3UtRmRs0HK0z19KWAy0OQuLAs0Nr1DZZUwTTC3YHrBjGqH0DB.O'),
('Mohammed', 'test', 'MomoMomo', '$2y$10$lTebdwrXbfSDDgboimxlvelzyFBKX.nP3MzQB61jVZ.cQ.COdPWKa'),
('Bryan', 'Vincello', 'bryan@gmail.com', '$2y$10$XjSn7QoR38vm9r/S7xYp/.Z9QxdqOKjkNhq0oUw14gAi7cqhK1qT.'),
('Britnie', 'Moodie', 'coolkid@gmail.com', '$2y$10$VUlL..Y6oYtZOmGdEaPBmex0bi8N19G3UX8/9xo.swr67L40EmQ4O'),
('Edwin', 'Edwin', 'Edwin@gmail.com', '$2y$10$Q5Q6xcHK4qNva9abw4n9Pu8vcEhX9zUAP/O0vrWfMEXtroWk0lcTG');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `receipt`
--
ALTER TABLE `receipt`
  ADD PRIMARY KEY (`order_number`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
