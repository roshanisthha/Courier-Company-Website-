-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2023 at 03:54 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `courier`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(24) NOT NULL,
  `destination` varchar(30) NOT NULL,
  `people` int(11) NOT NULL,
  `arrival` varchar(51) NOT NULL,
  `departure` varchar(51) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `name`, `email`, `phone`, `address`, `destination`, `people`, `arrival`, `departure`) VALUES
(1, 'Pradip Upreti', 'upreti16@gmail.com', '9812345678', 'Narayantar', 'Pokhara', 2, '2022-07-05', '2022-07-11'),
(2, 'Prem Kumar Jha', 'jhaprem17@gmail.com', '9812345689', 'Kumrintar', 'Lumbini', 3, '2022-07-01', '2022-07-05'),
(4, 'Pritam Acharya', 'acharyapritam18@gmail.com', '9801234567', 'Bhedetar', 'Janakpur', 4, '2022-07-20', '2022-07-21'),
(5, 'Sushant Khatri ', 'khatrasushant19@gmail.com', '9876543210', 'Udaypur', 'Manag & Mustang', 5, '2022-08-02', '2022-08-12'),
(6, 'Subodh Ghimire', 'ghimiresubodh20@gmail.com', '9800000001', 'Bhaisepati', 'Lumbini', 3, '2022-07-18', '2022-07-22'),
(7, 'Rohan Thapa', 'thaparohan16@gmail.com', '9800000002', 'Dhadhing', 'Pokhara', 4, '2022-08-04', '2022-08-08'),
(8, 'Nitin Rai ', 'nitinraai@gmail.com', '9801020304', 'Dharan', 'Manag & Mustang', 2, '2022-07-14', '2022-07-17'),
(9, 'Roshani Shrestha', 'frawg@gmail.com', '9869834343', 'ewat', 'lamjung', 45, '2023-01-24', '2023-01-26'),
(10, 'Roshani Shrestha', 'roshanishrestha2002@gmail.com', '', '102 manchester dr apt 20', 'lamjung', 2, '2023-01-13', '2023-01-19'),
(11, 'parbati shrestha', 'roshanishrestha2002@gmail.com', '9869834343', '102 manchester dr apt 20', 'lamjung', 1, '2023-01-07', '2023-01-26'),
(12, '', '', '', '', '', 0, '', ''),
(13, '', '', '', '', '', 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `email` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `repassword` varchar(40) NOT NULL,
  `usertype` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `username`, `email`, `password`, `repassword`, `usertype`) VALUES
(7, 'hacker', 'hacker@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', '1a1dc91c907325c69271ddf0c944bc72', 'user'),
(8, 'admin@admin.com', 'admin@admin.com', '0192023a7bbd73250516f069df18b500', '0192023a7bbd73250516f069df18b500', 'admin'),
(9, 'roshani', 'roshanishrestha2002@gmail.com', 'df23a65a4c4ee9e29ef2bcba94d70874', 'df23a65a4c4ee9e29ef2bcba94d70874', 'user'),
(10, 'sarina', 'sarina@gmail.com', '66af49bb7e75e8b32b7fe106023331ea', '66af49bb7e75e8b32b7fe106023331ea', 'user'),
(11, 'roshanistha', 'roshanishrestha2002@gmail.com', 'afe90bf33acd9e2f271f0996b8f86637', 'afe90bf33acd9e2f271f0996b8f86637', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
