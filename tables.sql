-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2018 at 07:12 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `brilliant_directories_security`
--

-- --------------------------------------------------------

--
-- Table structure for table `widgets_clients`
--

CREATE TABLE `widgets_clients` (
  `id` int(11) NOT NULL,
  `client_name` varchar(255) NOT NULL,
  `client_url` varchar(255) NOT NULL,
  `client_email` varchar(255) NOT NULL,
  `status` tinyint(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `widgets_clients`
--

INSERT INTO `widgets_clients` (`id`, `client_name`, `client_url`, `client_email`, `status`) VALUES
(1, 'Ricardo Rios', 'localhost:8080', 'ricardojriosr@gmail.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `widgets_clients_pivot`
--

CREATE TABLE `widgets_clients_pivot` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `widget_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `widgets_clients_pivot`
--

INSERT INTO `widgets_clients_pivot` (`id`, `client_id`, `widget_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `widgets_production`
--

CREATE TABLE `widgets_production` (
  `id` int(11) NOT NULL,
  `widget_name` varchar(255) NOT NULL,
  `widget_code` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `widgets_production`
--

INSERT INTO `widgets_production` (`id`, `widget_name`, `widget_code`) VALUES
(1, 'test', '<?php\r\necho "<h1>HOLA MUNDO 2</h1>";\r\n?>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `widgets_clients`
--
ALTER TABLE `widgets_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `widgets_clients_pivot`
--
ALTER TABLE `widgets_clients_pivot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `widgets_production`
--
ALTER TABLE `widgets_production`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `widget_name` (`widget_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `widgets_clients`
--
ALTER TABLE `widgets_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `widgets_clients_pivot`
--
ALTER TABLE `widgets_clients_pivot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `widgets_production`
--
ALTER TABLE `widgets_production`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
