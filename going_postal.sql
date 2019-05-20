-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2019 at 07:58 PM
-- Server version: 10.1.37-MariaDB
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
-- Database: `going_postal`
--

-- --------------------------------------------------------

--
-- Table structure for table `stamps`
--

CREATE TABLE `stamps` (
  `year_issued` int(4) NOT NULL,
  `collection` varchar(30) NOT NULL,
  `size` double(3,3) NOT NULL,
  `quantity` int(4) NOT NULL,
  `picture` varchar(36) NOT NULL,
  `description` varchar(80) NOT NULL,
  `glued` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

-- Dump data for table stamps
ALTER TABLE `stamps` (`year_issued`, `collection`, `size`, `picture`, `quantity`, `description`,`glued`) VALUES
(1872, 'Presidential', '27,30', '1centstamp.jpg', 3, 'Benjamin Franklin 1 cent stamp.', 0),
(1963, 'Presidential', '27,30', '13centstamp.jpg', 6, 'John F. Kennedy 13 cents stamp.', 1),
(1867, 'Presidential', '27,30', '90centstamp.jpg', 4, '90 cents Abraham Lincoln Stamp.', 0),
(1859, 'Historical', '27,30', 'valuablestamp.jpg', 2, '30 cents Bald Eagle stamp.', 1),
(1922, 'Presidential', '27,30', 'usstamp.jpg', 2, 'George Washington 1 cent stamp', 1),
(2015, 'Historical', '27,30', 'queenstamp.jpg', 1, 'Queen Elizabeth Long Rein Over Us 1 cent stamp.',0),
(1940, 'Historical', '27,30', 'btwstamp.jpg', 1, 'Booker T. Washington 10 cents stamp.', 0),
(1970, 'Historical', '38,30', 'buffalostamp.jpg', 5, 'American Buffalo 6 cents stamp', 1);
--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--


-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
