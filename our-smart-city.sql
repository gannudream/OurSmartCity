-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 23, 2021 at 02:39 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `our-smart-city`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Sanitization(Public)'),
(2, 'Sanitization(Private)'),
(3, 'Home voilence'),
(4, 'Crime'),
(5, 'Electriciy(Public)'),
(6, 'Electricity(Private)'),
(7, 'Drinking water(Public)'),
(8, 'Drinking waer(Private)'),
(9, 'Road and transoport');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `employee_id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `contact` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employee_id`, `name`, `email`, `contact`, `category`, `password`) VALUES
(1, 'Yaseer', 'yaseer.shaik@gmail.com', '6376376376', 'Sanitization(Public)', '4f4f507eb72c85646d4a10be2b20906e');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `report_id` int(11) NOT NULL,
  `category` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `problem` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(100) COLLATE utf8_unicode_ci DEFAULT 'Problem queued',
  `reportedDate` date NOT NULL,
  `user_id` int(50) NOT NULL,
  `employee_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`report_id`, `category`, `problem`, `status`, `reportedDate`, `user_id`, `employee_id`) VALUES
(7, 'Sanitization(Public)', 'Huge pipeline is leaking from days. Facing serious issues by it. Transportation is also blocked.', 'Will be solved by tomorrow evening', '2021-05-22', 25, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `contact` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `email`, `contact`, `password`) VALUES
(1, 'Yaseer', 'r161637@gmail.com', '6376376376', ''),
(25, 'Mohan', 'mohanragam456@gmail.com', '7093957199', '1a2cfe9b15157ac4fbd1061dd6b1cb63');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employee_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `contact` (`contact`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`report_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `contact` (`contact`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `report_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
