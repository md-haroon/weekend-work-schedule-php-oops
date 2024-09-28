-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2019 at 10:45 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `scheduler`
--

-- --------------------------------------------------------

--
-- Table structure for table `interview_summary`
--

CREATE TABLE `interview_summary` (
  `id` int(11) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `mobile_no` varchar(15) NOT NULL,
  `interview_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `interview_skills` varchar(70) NOT NULL,
  `interview_location` varchar(70) NOT NULL,
  `interview_city` varchar(70) NOT NULL,
  `interview_address` varchar(70) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `interview_summary`
--

INSERT INTO `interview_summary` (`id`, `first_name`, `last_name`, `email`, `mobile_no`, `interview_date`, `interview_skills`, `interview_location`, `interview_city`, `interview_address`, `created_at`, `updated_at`) VALUES
(1, 'Haroon', 'Jabarulla', '9597733997', 'haroon.attur@gm', '2019-01-06 18:30:00', 'php', 'kattu kottai pudur', 'attur', '123/5 main street, post office(po)', '2019-01-14 16:16:30', '2019-01-14 16:16:30'),
(2, 'Haroon', 'Jabarulla', '9597733997', 'haroon.attur@gm', '2019-01-06 18:30:00', 'php', 'kattu kottai pudur', 'attur', '123/5 main street, post office(po)', '2019-01-14 16:24:48', '2019-01-14 16:24:48'),
(3, 'Haroon', 'Jabarulla', '9597733997', 'akcomrtzone@gma', '2019-01-06 18:30:00', 'php', 'kattu kottai pudur', 'attur', '123/5 main street, post office(po)', '2019-01-14 16:30:31', '2019-01-14 16:30:31'),
(4, 'Haroon', 'Jabarulla', '9597733997', 'haroon.attur@gm', '2019-01-06 18:30:00', 'php', 'kattu kottai pudur', 'attur', '123/5 main street, post office(po)', '2019-01-14 16:31:10', '2019-01-14 16:31:10'),
(5, 'Haroon', 'Jabarulla', '9597733997', 'haroon.attur@gm', '2019-01-08 18:30:00', 'php', 'kattu kottai pudur', 'attur', '123/5 main street, post office(po)', '2019-01-14 21:07:10', '2019-01-14 21:07:10'),
(6, 'Haroon', 'Jabarulla', '9597733997', 'haroon.attur@gm', '2019-01-16 18:30:00', 'php', 'kattu kottai pudur', 'attur', '123/5 main street, post office(po)', '2019-01-14 21:08:23', '2019-01-14 21:08:23'),
(7, 'Haroon', 'Jabarulla', '9597733997', 'akcomrtzone@gma', '2019-01-08 18:30:00', 'php', 'kattu kottai pudur', 'attur', '123/5 main street, post office(po)', '2019-01-14 21:09:13', '2019-01-14 21:09:13'),
(8, 'Haroon', 'Jabarulla', '9597733997', 'akcomrtzone@gma', '2019-01-15 18:30:00', 'php', 'kattu kottai pudur', 'attur', '123/5 main street, post office(po)', '2019-01-14 21:10:07', '2019-01-14 21:10:07'),
(9, 'Haroon', 'Jabarulla', '9597733997', 'akcomrtzone@gma', '2019-01-08 18:30:00', 'php', 'kattu kottai pudur', 'attur', '123/5 main street, post office(po)', '2019-01-14 21:11:12', '2019-01-14 21:11:12'),
(10, 'Haroon', 'Jabarulla', '9597733997', 'akcomrtzone@gma', '2019-01-09 18:30:00', 'php', 'kattu kottai pudur', 'attur', '123/5 main street, post office(po)', '2019-01-14 21:11:59', '2019-01-14 21:11:59');

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `id` int(11) NOT NULL,
  `position` varchar(70) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`id`, `position`, `created_at`, `updated_at`) VALUES
(1, 'php web developer', '2019-01-14 08:05:12', '2019-01-14 08:05:28'),
(3, 'ASP.Net web developer', '2019-01-14 08:05:53', '2019-01-14 08:05:53');

-- --------------------------------------------------------

--
-- Table structure for table `postion_details`
--

CREATE TABLE `postion_details` (
  `id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  `skills` varchar(50) NOT NULL,
  `total_experience` int(11) NOT NULL,
  `location` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `postion_details`
--

INSERT INTO `postion_details` (`id`, `position_id`, `skills`, `total_experience`, `location`, `city`, `address`, `created_at`, `updated_at`) VALUES
(1, 1, 'php', 3, 'kattu kottai pudur', 'attur', '123/5 main street, post office(po)', '2019-01-14 08:08:54', '2019-01-14 08:08:54'),
(2, 3, 'ASP.Net', 4, 'Velachery', 'chennai', '96/95 ', '2019-01-14 08:10:28', '2019-01-14 21:14:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `interview_summary`
--
ALTER TABLE `interview_summary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `postion_details`
--
ALTER TABLE `postion_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `interview_summary`
--
ALTER TABLE `interview_summary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `postion_details`
--
ALTER TABLE `postion_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
