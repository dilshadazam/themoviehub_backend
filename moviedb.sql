-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 04, 2023 at 10:24 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `moviedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `moviename` varchar(255) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `releasedate` varchar(20) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `moviename`, `rating`, `releasedate`, `createdAt`, `updatedAt`) VALUES
(2, 'JAWAN', 5, '2023-09-07', '2023-10-04 14:14:46', '2023-10-04 14:14:46'),
(3, 'Hacker', 5, '2021-12-13', '2023-10-04 14:16:36', '2023-10-04 14:16:36'),
(4, 'The Kerala Story', 4, ' 2023-May-12', '2023-10-04 19:29:18', '2023-10-04 19:29:18'),
(5, 'Fukrey 3', 3, ' 2023-September-28', '2023-10-04 19:31:29', '2023-10-04 19:31:29'),
(6, 'Singham', 5, ' 2011-July-22', '2023-10-04 19:33:45', '2023-10-04 19:33:45'),
(7, 'Pathaan', 5, ' 2023-January-25', '2023-10-04 19:36:00', '2023-10-04 19:36:00'),
(8, 'Andaz Apna Apna', 5, ' 1989-August-14', '2023-10-04 19:38:32', '2023-10-04 19:38:32'),
(9, 'Fanaa', 5, ' 2006-May-26', '2023-10-04 19:39:27', '2023-10-04 19:39:27'),
(10, 'The Mimic', 4, ' 2004-January-11', '2023-10-04 19:42:21', '2023-10-04 19:42:21'),
(11, 'Dilwale', 5, ' 2010-September-25', '2023-10-04 19:42:52', '2023-10-04 19:42:52'),
(12, 'Namaste London', 3, ' 2016-August-11', '2023-10-04 19:43:26', '2023-10-04 19:43:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
