-- phpMyAdmin SQL Dump
-- version 5.0.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 05, 2020 at 05:11 PM
-- Server version: 5.7.14
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tenancy`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_1`
--

DROP TABLE IF EXISTS `tbl_1`;
CREATE TABLE `tbl_1` (
  `_id` int(11) NOT NULL,
  `_name` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_1`
--

INSERT INTO `tbl_1` (`_id`, `_name`) VALUES
(1, 'Generating an entire tenancy schema with all tables and data'),
(2, 'Generating an entire tenancy schema with only some tables and data'),
(3, 'Generating an entire tenancy schema with only some tables, no data and specified tenancy name');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_2`
--

DROP TABLE IF EXISTS `tbl_2`;
CREATE TABLE `tbl_2` (
  `_id` int(11) NOT NULL,
  `_name` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_2`
--

INSERT INTO `tbl_2` (`_id`, `_name`) VALUES
(1, 'Generating an entire tenancy schema with all tables and data'),
(2, 'Generating an entire tenancy schema with only some tables and data'),
(3, 'Generating an entire tenancy schema with only some tables, no data and specified tenancy name');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_3`
--

DROP TABLE IF EXISTS `tbl_3`;
CREATE TABLE `tbl_3` (
  `_id` int(11) NOT NULL,
  `_name` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_3`
--

INSERT INTO `tbl_3` (`_id`, `_name`) VALUES
(1, 'Generating an entire tenancy schema with all tables and data'),
(2, 'Generating an entire tenancy schema with only some tables and data'),
(3, 'Generating an entire tenancy schema with only some tables, no data and specified tenancy name');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_1`
--
ALTER TABLE `tbl_1`
  ADD PRIMARY KEY (`_id`);

--
-- Indexes for table `tbl_2`
--
ALTER TABLE `tbl_2`
  ADD PRIMARY KEY (`_id`);

--
-- Indexes for table `tbl_3`
--
ALTER TABLE `tbl_3`
  ADD PRIMARY KEY (`_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_1`
--
ALTER TABLE `tbl_1`
  MODIFY `_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_2`
--
ALTER TABLE `tbl_2`
  MODIFY `_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_3`
--
ALTER TABLE `tbl_3`
  MODIFY `_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

