-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Feb 21, 2023 at 11:12 PM
-- Server version: 5.7.34
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_tattoo_team`
--

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `id` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `story` text NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`id`, `fname`, `lname`, `title`, `story`, `image`) VALUES
(1, 'John', 'Smith', 'Artist', 'John is a tattoo artist and illustrator based in London ON. John’s passion for drawing emerged when he was very young through a love of comic books and fantasy art\r\n', 'person-1.jpg'),
(2, 'Ann ', 'Brown', 'Artist', 'Ann has spent 10 years working as a professional artist, and has been tattooing is 2015. His background is in illustration, technical, and graphic design, and these disciplines inform how he approaches her work as a tattoo artist.\r\n', 'person-2.jpg'),
(3, 'Mary', 'Doe', '', 'Mary Doe, originally a Boston-based artist now tattooing at the world\'s famous Royal Tattoo in Helsingr, Denmark. Mary is an artist of great talent and imagination and is one of the new generations of Realist painters that are the new avant-garde in the art world\r\n', 'person-3.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
