-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 10, 2021 at 06:43 PM
-- Server version: 5.7.36
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `develope_clirnet3`
--

-- --------------------------------------------------------

--
-- Table structure for table `user_detail_test`
--

CREATE TABLE `user_detail_test` (
  `user_detail_id` int(11) NOT NULL,
  `user_master_id` int(11) NOT NULL COMMENT 'FK_from_user_master',
  `first_name` varchar(20) NOT NULL,
  `middle_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) NOT NULL,
  `phone` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_detail_test`
--

INSERT INTO `user_detail_test` (`user_detail_id`, `user_master_id`, `first_name`, `middle_name`, `last_name`, `phone`) VALUES
(1, 1, 'Pranabesh', NULL, 'Biswas', '9674539790');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user_detail_test`
--
ALTER TABLE `user_detail_test`
  ADD PRIMARY KEY (`user_detail_id`),
  ADD KEY `FK_from_user_master` (`user_master_id`),
  ADD KEY `first_name` (`first_name`),
  ADD KEY `last_name` (`last_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user_detail_test`
--
ALTER TABLE `user_detail_test`
  MODIFY `user_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
