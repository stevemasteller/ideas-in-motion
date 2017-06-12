-- phpMyAdmin SQL Dump
-- version 4.4.15.5
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1:8889
-- Generation Time: Jun 11, 2017 at 07:55 PM
-- Server version: 5.6.34-log
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ideas-in-motion-test`
--

-- --------------------------------------------------------

--
-- Table structure for table `form`
--

CREATE TABLE IF NOT EXISTS `form` (
  `address` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  `news[0]` tinyint(1) NOT NULL DEFAULT '0',
  `news[1]` tinyint(1) NOT NULL DEFAULT '0',
  `news[2]` tinyint(1) NOT NULL DEFAULT '0',
  `news[3]` tinyint(1) NOT NULL DEFAULT '0',
  `format[0]` tinyint(1) NOT NULL DEFAULT '0',
  `format[1]` tinyint(1) NOT NULL DEFAULT '0',
  `format[2]` tinyint(1) NOT NULL DEFAULT '0',
  `format[3]` tinyint(1) NOT NULL DEFAULT '0',
  `other` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `form`
--

INSERT INTO `form` (`address`, `city`, `state`, `news[0]`, `news[1]`, `news[2]`, `news[3]`, `format[0]`, `format[1]`, `format[2]`, `format[3]`, `other`) VALUES
('626 Rivers Edge Ct', 'Mishawaka', 'IN', 1, 1, 1, 1, 1, 1, 1, 1, 'test other'),
('626 Rivers Edge Ct', 'Mishawaka', NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
('626 Rivers Edge Ct.', 'Mishawaka', 'IN', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
('626 Some Street', 'Mishawaka', 'IN', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
('626 Some Street', 'MIshawaka', 'IN', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
('626 Rivers Edge Ct.', 'MIshawaka', 'IN', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
('626 Rivers Edge Ct.', 'MIshawaka', 'IN', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
('626 Rivers Edge Ct.', 'Valpo', 'IN', 1, 0, 0, 0, 0, 0, 0, 0, NULL),
('626 Rivers Edge Ct.', 'Valpo', 'IN', 1, 1, 1, 1, 0, 0, 0, 0, NULL),
('', '', '', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
('asf', 'sadf', 'AL', 1, 0, 1, 0, 0, 0, 1, 0, NULL),
('', '', 'Ch', 0, 0, 0, 0, 0, 0, 0, 0, NULL),
('626 Rivers Edge Ct.', 'MIshawaka', 'IN', 0, 1, 1, 0, 1, 0, 0, 1, 'test text box');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
