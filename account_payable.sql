-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Apr 05, 2025 at 03:42 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_payable`
--

CREATE TABLE `account_payable` (
  `invoice_id` int(11) NOT NULL,
  `department` varchar(255) NOT NULL,
  `account_name` varchar(255) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `document` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `bank_account_number` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `amount_paid` int(11) NOT NULL DEFAULT 0,
  `payment_due` datetime NOT NULL,
  `status` varchar(255) DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `account_payable`
--

INSERT INTO `account_payable` (`invoice_id`, `department`, `account_name`, `payment_method`, `document`, `bank_name`, `bank_account_number`, `description`, `amount`, `amount_paid`, `payment_due`, `status`) VALUES
(100600, 'Logistic-1', 'Supplier', 'Bank Transfer', 'Allordo , Juan Carlos Sustituido - student-scores.pdf', 'BDO', '03294924', '5 car bumper', 40000, 40000, '2025-04-30 00:00:00', 'confirmed'),
(246826, 'Human Resource-1', 'John Wick', 'Cash', '', '', '', 'Salaries', 100000, 4000, '2025-04-24 00:00:00', 'confirmed'),
(328931, 'Logistic-1', 'ABC Supplier', 'Cash', '', '', '', 'Basta', 1000, 700, '2025-04-10 00:00:00', 'confirmed'),
(604955, 'Admin', 'April Mae Fernandez', 'Cash', '', '', '', 'Electricity Bills', 12000, 0, '2025-04-16 00:00:00', 'pending'),
(756986, 'Logistic-1', 'Car Supplier', 'Cash', 'HMA Transaction Example (1).pdf', '', '', 'Need na po talaga sir', 10000, 10000, '2025-04-23 00:00:00', 'confirmed'),
(998150, 'Admin', 'PhilBank', 'Cash', 'HMA Transaction Example (1) (1).pdf', '', '', 'Basta', 40000, 5000, '2025-04-10 00:00:00', 'confirmed');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_payable`
--
ALTER TABLE `account_payable`
  ADD PRIMARY KEY (`invoice_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
