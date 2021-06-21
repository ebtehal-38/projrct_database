-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2021 at 10:03 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rebortdata`
--

-- --------------------------------------------------------

--
-- Table structure for table `motors_value`
--

CREATE TABLE `motors_value` (
  `op_id` int(11) NOT NULL,
  `motor1` int(11) NOT NULL,
  `motor2` int(11) NOT NULL,
  `motor3` int(11) NOT NULL,
  `motor4` int(11) NOT NULL,
  `motor5` int(11) NOT NULL,
  `motor6` int(11) NOT NULL,
  `Running` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `motors_value`
--

INSERT INTO `motors_value` (`op_id`, `motor1`, `motor2`, `motor3`, `motor4`, `motor5`, `motor6`, `Running`) VALUES
(1, 130, 37, 90, 90, 90, 90, 0),
(2, 130, 37, 90, 90, 90, 90, 0),
(3, 43, 41, 40, 39, 38, 37, 0),
(4, 43, 41, 40, 39, 38, 37, 0),
(5, 133, 139, 140, 143, 147, 150, 0),
(6, 64, 116, 66, 104, 90, 80, 0);

-- --------------------------------------------------------

--
-- Table structure for table `running`
--

CREATE TABLE `running` (
  `on` varchar(16) NOT NULL,
  `of` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `motors_value`
--
ALTER TABLE `motors_value`
  ADD PRIMARY KEY (`op_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `motors_value`
--
ALTER TABLE `motors_value`
  MODIFY `op_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
