-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2019 at 07:23 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotelsscr`
--

-- --------------------------------------------------------

--
-- Table structure for table `busses`
--

CREATE TABLE `busses` (
  `id` int(11) NOT NULL,
  `model` varchar(255) DEFAULT NULL,
  `plate_number` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `seats` int(11) DEFAULT NULL,
  `registered_at` datetime DEFAULT NULL,
  `image` text,
  `arrival` varchar(20) DEFAULT NULL,
  `departure` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `busses`
--

INSERT INTO `busses` (`id`, `model`, `plate_number`, `type`, `seats`, `registered_at`, `image`, `arrival`, `departure`) VALUES
(17, 'Inova', 'QWE123', 2, 50, '0000-00-00 00:00:00', '', NULL, NULL),
(18, '12', '123', 131, 155, '2018-08-11 12:22:00', '', NULL, NULL),
(22, 'Kawas', '', 0, 0, '0000-00-00 00:00:00', '', NULL, NULL),
(23, 'honda', '3456', 0, 36, '2017-08-23 14:59:00', '', NULL, NULL),
(24, 'Innova', '1234', 0, 45, '2017-08-23 13:00:00', '', NULL, NULL),
(25, 'honda', '12345', 0, 45, '2017-08-17 13:59:00', '', 'pasay', 'Tanza'),
(26, 'honda', '67543', 0, 36, '2018-08-16 13:01:00', '', 'pasay', 'baguio'),
(27, 'Mio', '5432', 0, 60, '1975-08-16 16:58:00', '', 'Noveleta', 'Baguio'),
(28, 'bkvkbvkhb', '767hjbk', 0, 45, '2018-08-24 14:00:00', '', 'pasay', 'Tanza'),
(29, 'honda', 'NJ8787', 0, 56, '2017-08-22 13:00:00', '', 'Cavite', 'Lawton');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `reserve_id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `mode` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `email`, `password`) VALUES
(6, 'randelle1234', 'randelle1234'),
(7, 'randelle12', 'randelle12'),
(8, 'randelle123', '$5$rounds=535000$DCuTECYu2PGe0Fov$TcE8rPjQGn7jO3jH6GAkGfwE/QRB5jWMiDyN6Gg8rO0'),
(9, 'randelle2103@gmail.com', '$5$rounds=535000$ZZt0WaWB4GWiN2rQ$KAX6WnF4JWONBrh1isLGNNb0W7j8kesoAsAXOBSgJR6'),
(10, 'tagis2103@yahoo.com', '$5$rounds=535000$WWo5zlt9cBAF3fff$gCIPC4kqMnZYcfgdU/DAOJriqeiuuv3QIc1wdjGjVw0'),
(11, 'loko@gmail.com', '$5$rounds=535000$n2er68PV/ChNj5rr$/xLeVXEr5WSLuAPR3yy2hjvfxKN1PLPRV8RG2bfhgg0');

-- --------------------------------------------------------

--
-- Table structure for table `repairs`
--

CREATE TABLE `repairs` (
  `id` int(11) NOT NULL,
  `mechanic_id` int(11) NOT NULL,
  `bus_id` int(11) NOT NULL,
  `longitude` varchar(255) NOT NULL,
  `latitude` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `type` int(11) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `repairs`
--

INSERT INTO `repairs` (`id`, `mechanic_id`, `bus_id`, `longitude`, `latitude`, `description`, `type`, `status`, `created_at`, `updated_at`) VALUES
(1, 17, 17, '', 'rwerw', 'rwerwerwerwer', 0, 'Reserved', '2018-08-06 05:56:27', '0000-00-00 00:00:00'),
(2, 17, 17, '', '1', '', 0, 'Pending', '2018-08-03 09:29:38', '0000-00-00 00:00:00'),
(3, 17, 17, '1', '2', '3', 4, '0', '2018-08-03 06:17:47', '0000-00-00 00:00:00'),
(4, 17, 17, '4', '5', '6', 77777, 'Pending', '2018-08-03 06:31:09', '0000-00-00 00:00:00'),
(5, 17, 17, '', '11', '', 0, 'Reserved', '2018-08-03 09:29:58', '0000-00-00 00:00:00'),
(6, 17, 17, '1', '12', '3', 3, 'Reserved', '2018-08-06 06:38:26', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `id` int(11) NOT NULL,
  `schedule_id` int(11) NOT NULL,
  `passenger_id` int(11) NOT NULL,
  `route_id` int(11) NOT NULL,
  `datetime` datetime DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `amount` decimal(5,2) NOT NULL,
  `discount` int(11) NOT NULL,
  `status` varchar(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`id`, `schedule_id`, `passenger_id`, `route_id`, `datetime`, `quantity`, `amount`, `discount`, `status`, `created_at`, `updated_at`) VALUES
(5, 7, 17, 0, '0000-00-00 00:00:00', 546456, '12.00', 12, 'Pending', '2018-08-03 09:08:29', NULL),
(6, 0, 17, 0, '0000-00-00 00:00:00', 0, '0.00', 0, '0', '2018-08-03 05:13:29', NULL),
(7, 0, 17, 0, '2018-08-23 00:00:00', 1, '3.00', 4, 'Reserved', '2018-08-06 07:10:19', NULL),
(8, 0, 17, 0, '0000-00-00 00:00:00', 12, '0.00', 0, 'Pending', '2018-08-08 08:29:17', NULL),
(9, 13, 28, 0, '2018-08-17 15:02:00', 0, '0.00', 0, 'Pending', '2018-08-09 06:27:34', NULL),
(10, 0, 0, 0, '2018-08-23 14:00:00', 1, '0.00', 0, 'Pending', '2018-08-14 07:14:13', NULL),
(11, 22, 29, 0, '2018-08-17 14:00:00', 1, '0.00', 0, 'Pending', '2018-08-14 07:15:18', NULL),
(12, 8, 17, 0, '2018-08-23 14:00:00', 1, '0.00', 0, 'Pending', '2018-08-14 07:48:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(2, 'Superadmin', '                Admin\r\n              ', '2018-08-03 07:41:02', '0000-00-00 00:00:00'),
(3, 'Drivers', '                driver\r\n              ', '2019-01-20 16:57:20', '0000-00-00 00:00:00'),
(4, 'Conductor', 'conductor', '2018-07-27 05:34:47', '0000-00-00 00:00:00'),
(5, 'Passenger', 'Sasakay', '2018-07-27 05:34:47', '0000-00-00 00:00:00'),
(6, 'Mechanical', 'Repair', '2018-07-27 05:34:47', '0000-00-00 00:00:00'),
(7, 'Super duper adminssss', '                The head \r\n              ', '2018-08-23 02:14:07', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) NOT NULL,
  `longitude` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `address`, `latitude`, `longitude`, `created_at`, `updated_at`) VALUES
(1, 'Ordinary ', 'Caloocan city', '1', '12', '2019-01-20 17:01:58', '0000-00-00 00:00:00'),
(3, 'hsdgjsd', 'Test', '123', '123', '2019-01-20 17:03:09', '0000-00-00 00:00:00'),
(4, 'Test', 'Test', '1', '1', '2018-08-06 06:38:05', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` int(11) NOT NULL,
  `departured_at` datetime NOT NULL,
  `arrived_at` datetime NOT NULL,
  `driver_id` int(11) NOT NULL,
  `bus_id` int(11) NOT NULL,
  `conductor_id` int(11) NOT NULL,
  `origin` varchar(255) DEFAULT NULL,
  `destination` varchar(255) DEFAULT NULL,
  `amount` float NOT NULL,
  `duration` varchar(50) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`id`, `departured_at`, `arrived_at`, `driver_id`, `bus_id`, `conductor_id`, `origin`, `destination`, `amount`, `duration`, `status`, `created_at`, `updated_at`) VALUES
(8, '2018-08-20 00:00:00', '2018-08-14 00:00:00', 17, 17, 17, 'Manila', 'Manila', 0, '', 'On going', '2018-08-03 03:43:47', '0000-00-00 00:00:00'),
(12, '2018-08-21 00:00:00', '2018-08-10 00:00:00', 17, 17, 17, 'Manila', 'Cavite', 0, '', 'Standby', '2018-08-03 05:42:38', '0000-00-00 00:00:00'),
(13, '2018-08-21 00:00:00', '2018-08-10 00:00:00', 17, 17, 17, 'Manila', 'Cavite', 0, '', 'Standby', '2018-08-03 05:42:56', '0000-00-00 00:00:00'),
(21, '2018-08-29 00:00:00', '2018-08-23 00:00:00', 17, 17, 17, 'Manila', 'Cavite', 50000, '', 'Standby', '2018-08-07 08:03:50', '0000-00-00 00:00:00'),
(22, '2018-08-15 12:00:00', '2018-08-15 00:00:00', 27, 17, 27, '-Select-', '-Select-', 300000, '12H', 'Select', '2018-08-07 08:15:15', '0000-00-00 00:00:00'),
(23, '2018-08-24 00:12:00', '0000-00-00 00:00:00', 0, 0, 0, '-Select-', '-Select-', 0, '', 'Select', '2018-08-08 09:08:49', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `middlename` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `mobile` int(12) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `password` varchar(150) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `middlename`, `address`, `mobile`, `email`, `role`, `password`, `created_at`, `updated_at`) VALUES
(28, 'Jaebhy Rhoze', 'Baculto', 'Abad', 'Tagumpay St.', 2147483647, 'bacultojaebhyrhoze@yahoo.com', 'Cavite', '$5$rounds=535000$8YhvZ9qGaoUmTPgO$2dt5ZqBkIVRQZSKrqs8B9iym8NWgzJiibHkaIDONgRA', '2018-08-09 06:05:25', '2018-08-09 06:05:25'),
(37, 'Jp', 'trias', 'abueg', '45 ghfhfuytyutyu', 999999999, 'jptrias@yahoo.com', 'cashier', '$5$rounds=535000$C1xUNb7bsO..CYxr$3efan1MPVbqRm1N1a/6M05scUaQfMKtqzRpqbzaKaE7', '2019-01-20 16:44:39', '2019-01-20 16:44:39'),
(38, 'marian', 'ljsgdksaug', 'uuyiutuit', 'iuutiytty', 76767675, 'bahjafjhf@yahoo.com', 'cashier', '$5$rounds=535000$aWSjJmUzdcnZ1Gvp$PQe.pwVt2My11oZZVWG1l0h21.0AQVMRZ9M5DWrBRu.', '2019-01-21 01:35:04', '2019-01-21 01:35:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `busses`
--
ALTER TABLE `busses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `repairs`
--
ALTER TABLE `repairs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `busses`
--
ALTER TABLE `busses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `repairs`
--
ALTER TABLE `repairs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
