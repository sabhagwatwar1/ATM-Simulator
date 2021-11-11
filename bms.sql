-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Nov 11, 2021 at 03:43 PM
-- Server version: 8.0.18
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bms`
--

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

DROP TABLE IF EXISTS `bank`;
CREATE TABLE IF NOT EXISTS `bank` (
  `pin` varchar(10) NOT NULL,
  `date` varchar(40) NOT NULL,
  `mode` varchar(30) NOT NULL,
  `amount` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`pin`, `date`, `mode`, `amount`) VALUES
('2803', 'Thu Nov 11 09:25:58 IST 2021', 'Deposit', '5000'),
('2803', 'Thu Nov 11 09:26:13 IST 2021', 'Withdrawl', '1000'),
('3474', 'Thu Nov 11 17:41:25 IST 2021', 'Deposit', '15000'),
('3474', 'Thu Nov 11 17:41:49 IST 2021', 'Deposit', '1500'),
('3474', 'Thu Nov 11 17:42:10 IST 2021', 'Withdrawl', '1000'),
('3474', 'Thu Nov 11 21:07:58 IST 2021', 'Withdrawl', '2000');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `formno` varchar(20) NOT NULL,
  `cardno` varchar(30) NOT NULL,
  `pin` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`formno`, `cardno`, `pin`) VALUES
('4206', '5040935944567345', '2803'),
('527', '5040935917622593', '3474');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

DROP TABLE IF EXISTS `signup`;
CREATE TABLE IF NOT EXISTS `signup` (
  `formno` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `dob` varchar(20) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `marital` varchar(20) NOT NULL,
  `address` varchar(40) NOT NULL,
  `city` varchar(20) NOT NULL,
  `pincode` varchar(20) NOT NULL,
  `state` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`formno`, `name`, `fname`, `dob`, `gender`, `email`, `marital`, `address`, `city`, `pincode`, `state`) VALUES
('6690', 'Ram', 'Ajay', 'Mar 28, 1996', 'Male', 'neharu chowk', 'Unmarried', 'Talodhi balapur', 'Chandrapur', '441221', 'Maharastra'),
('4206', 'Shriram', 'Ajay', '28/03/1996', 'Male', 'Neharu chowk', 'null', 'Talodhi(Ba.)', 'chandrapur', '441221', 'MH'),
('527', 'Priya', 'Dhyaneswar', '25/06/98', 'Female', 'priya1234@gmail.com', 'Unmarried', 'suraj nagar', 'Nagpur', '440024', 'Maharastra');

-- --------------------------------------------------------

--
-- Table structure for table `signup2`
--

DROP TABLE IF EXISTS `signup2`;
CREATE TABLE IF NOT EXISTS `signup2` (
  `formno` varchar(20) NOT NULL,
  `religion` varchar(20) NOT NULL,
  `category` varchar(30) NOT NULL,
  `income` varchar(30) NOT NULL,
  `education` varchar(20) NOT NULL,
  `occupation` varchar(20) NOT NULL,
  `pan` varchar(20) NOT NULL,
  `aadhar` varchar(20) NOT NULL,
  `scitizen` varchar(40) NOT NULL,
  `eaccount` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `signup2`
--

INSERT INTO `signup2` (`formno`, `religion`, `category`, `income`, `education`, `occupation`, `pan`, `aadhar`, `scitizen`, `eaccount`) VALUES
('6690', 'Hindu', 'General', 'Null', 'Post-Graduate', 'Student', '12345', '152412', 'No', 'Yes'),
('4206', 'Hindu', 'General', 'Null', 'Post-Graduate', 'Retired', '963258', '147852', 'No', 'No'),
('527', 'Hindu', 'General', 'Null', 'Post-Graduate', 'Salaried', '159623', '357421', 'No', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `signup3`
--

DROP TABLE IF EXISTS `signup3`;
CREATE TABLE IF NOT EXISTS `signup3` (
  `formno` varchar(20) NOT NULL,
  `atype` varchar(20) NOT NULL,
  `cardno` varchar(30) NOT NULL,
  `pin` varchar(20) NOT NULL,
  `facility` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `signup3`
--

INSERT INTO `signup3` (`formno`, `atype`, `cardno`, `pin`, `facility`) VALUES
('4206', 'Saving Account', '5040935944567345', '2803', ' ATM Card EMAIL Alerts'),
('527', 'Current Account', '5040935917622593', '3474', ' ATM Card Internet Banking Mobile Banking EMAIL Alerts E-Statement');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
