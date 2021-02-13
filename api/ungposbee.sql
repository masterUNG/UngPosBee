-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 13, 2021 at 04:18 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ungposbee`
--

-- --------------------------------------------------------

--
-- Table structure for table `catigory`
--

CREATE TABLE `catigory` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `url` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `catigory`
--

INSERT INTO `catigory` (`id`, `name`, `url`) VALUES
(1, 'กลุ่มที่ 1', '/ungposbee/catigory/cat1.png'),
(2, 'กลุ่มที่ 2', '/ungposbee/catigory/cat2.png'),
(3, 'กลุ่มที่ 3', '/ungposbee/catigory/cat3.png'),
(4, 'กลุ่มที่ 4', '/ungposbee/catigory/cat4.png'),
(5, 'กลุ่มที่ 5', '/ungposbee/catigory/cat5.png'),
(6, 'กลุ่มที่ 5', '/ungposbee/catigory/cat5.png'),
(7, 'กลุ่มที่ 4', '/ungposbee/catigory/cat4.png'),
(8, 'กลุ่มที่ 2', '/ungposbee/catigory/cat2.png');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `user` text COLLATE utf8_unicode_ci NOT NULL,
  `password` text COLLATE utf8_unicode_ci NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `user`, `password`, `name`) VALUES
(1, 'master', '123456', 'มาสเตอร์ อึ่ง');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `catigory`
--
ALTER TABLE `catigory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `catigory`
--
ALTER TABLE `catigory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
