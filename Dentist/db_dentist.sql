-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 12, 2020 at 05:40 PM
-- Server version: 5.7.15-log
-- PHP Version: 5.6.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_dentist`
--

-- --------------------------------------------------------

--
-- Table structure for table `db_dentist`
--

CREATE TABLE `db_dentist` (
  `CustomerID` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Tel` varchar(50) NOT NULL,
  `Age` int(20) NOT NULL,
  `Address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_dentist`
--

INSERT INTO `db_dentist` (`CustomerID`, `Name`, `Tel`, `Age`, `Address`) VALUES
(1, 'frongza', '063', 18, '5000'),
(2, 'gus', '088', 63, 'll'),
(3, 'aom', '088', 20, 'tkkk'),
(4, 'ff', '22', 33, 'fffff'),
(5, 'fronghh', '06300', 21, '52/555'),
(6, 'rr', '33', 22, 'ff'),
(8, 'frongz', '025663', 18, 'dasdsada');

-- --------------------------------------------------------

--
-- Table structure for table `db_order`
--

CREATE TABLE `db_order` (
  `ID` int(20) NOT NULL,
  `Fill_teeth` int(20) NOT NULL DEFAULT '0',
  `Tooth_extraction` int(20) NOT NULL DEFAULT '0',
  `Wisdom_tooth` int(20) NOT NULL DEFAULT '0',
  `Scaling` varchar(20) NOT NULL DEFAULT 'NO',
  `CustomerID` int(20) DEFAULT NULL,
  `Datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `db_order`
--

INSERT INTO `db_order` (`ID`, `Fill_teeth`, `Tooth_extraction`, `Wisdom_tooth`, `Scaling`, `CustomerID`, `Datetime`) VALUES
(1, 0, 0, 0, 'NO', 1, '2019-11-07 13:13:55'),
(2, 0, 0, 0, 'NO', 1, '2019-11-07 13:13:55'),
(3, 1, 0, 0, 'NO', NULL, '2019-11-07 13:13:55'),
(4, 0, 1, 0, 'NO', NULL, '2019-11-07 13:13:55'),
(5, 0, 0, 1, 'NO', NULL, '2019-11-07 13:13:55'),
(6, 0, 0, 0, '1', NULL, '2019-11-07 13:13:55'),
(7, 1, 0, 0, 'NO', NULL, '2019-11-07 13:13:55'),
(8, 0, 1, 0, 'NO', NULL, '2019-11-07 13:13:55'),
(9, 0, 0, 1, 'NO', NULL, '2019-11-07 13:13:55'),
(10, 1, 0, 0, 'NO', NULL, '2019-11-07 13:13:55'),
(11, 0, 1, 0, 'NO', NULL, '2019-11-07 13:13:55'),
(12, 0, 0, 1, 'NO', NULL, '2019-11-07 13:13:55'),
(13, 1, 0, 0, 'NO', NULL, '2019-11-07 13:13:55'),
(14, 0, 1, 0, 'NO', NULL, '2019-11-07 13:13:55'),
(15, 0, 0, 1, 'NO', NULL, '2019-11-07 13:13:55'),
(16, 0, 0, 0, 'NO', 1, '2019-11-07 13:13:55'),
(17, 1, 1, 1, 'YES', NULL, '2019-11-07 13:13:55'),
(18, 2, 3, 4, 'YES', 1, '2019-11-07 13:13:55'),
(19, 2, 2, 5, 'YES', 1, '2019-11-07 13:13:55'),
(20, 2, 1, 4, 'YES', 1, '2019-11-07 13:13:55'),
(21, 1, 1, 1, 'YES', 1, '2019-11-07 13:13:55'),
(22, 1, 2, 0, 'No', 2, '2019-11-07 13:13:55'),
(23, 1, 1, 0, 'YES', 2, '2019-11-07 13:13:55'),
(24, 1, 1, 1, 'YES', 0, '2019-11-07 13:13:55'),
(25, 1, 1, 1, 'YES', 2, '2019-11-07 13:13:55'),
(26, 1, 1, 1, 'YES', 2, '2019-11-07 13:13:55'),
(27, 2, 3, 0, 'YES', 1, '2019-11-07 13:13:55'),
(28, 2, 3, 0, 'YES', 1, '2019-11-07 13:13:55'),
(29, 1, 1, 0, 'No', 4, '2019-11-07 13:13:55'),
(30, 5, 0, 2, 'No', 3, '2019-11-07 13:13:55'),
(31, 1, 1, 1, 'YES', 1, '2019-11-07 13:13:55'),
(32, 2, 2, 2, 'YES', 3, '2019-11-07 13:16:10'),
(33, 5, 5, 0, 'No', 3, '2019-11-07 13:19:45'),
(34, 5, 1, 0, 'YES', 3, '2019-11-07 13:21:03'),
(35, 0, 1, 4, 'No', 3, '2019-11-07 13:23:52'),
(36, 1, 1, 0, 'No', 3, '2019-11-07 13:32:24'),
(37, 2, 2, 1, 'YES', 5, '2019-11-07 14:42:58'),
(38, 3, 2, 0, 'No', 5, '2019-11-21 16:39:00'),
(39, 1, 1, 1, 'No', 6, '2019-11-21 16:41:55'),
(40, 2, 0, 0, 'YES', 7, '2019-11-22 06:13:40'),
(41, 0, 2, 0, 'No', 1, '2019-11-22 06:14:58'),
(42, 2, 0, 0, 'No', 1, '2019-11-22 07:05:40'),
(43, 2, 3, 0, 'No', 1, '2019-11-22 07:08:55'),
(44, 1, 1, 0, 'No', 7, '2019-11-22 07:13:38'),
(45, 3, 2, 0, 'No', 8, '2019-11-22 07:15:20'),
(46, 3, 2, 1, 'No', 8, '2019-11-22 07:15:39'),
(47, 1, 0, 0, 'No', 8, '2019-11-22 07:15:54'),
(48, 3, 2, 0, 'No', 8, '2019-11-22 09:27:09'),
(49, 4, 2, 0, 'No', 2, '2020-02-17 07:16:43'),
(50, 1, 0, 0, 'No', 1, '2020-02-21 11:01:11'),
(51, 2, 2, 0, 'No', 5, '2020-02-21 11:03:33'),
(52, 1, 0, 2, 'No', 2, '2020-02-22 13:32:46');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `admin` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `admin`) VALUES
(3, 'frong', '1234', 'ADFrong'),
(4, 'gus', '1234', 'ADGus'),
(5, 'aom', '1234', 'ADAOM');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `db_dentist`
--
ALTER TABLE `db_dentist`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `db_order`
--
ALTER TABLE `db_order`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `db_order`
--
ALTER TABLE `db_order`
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
