-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2020 at 04:08 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `protibeshi`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookmark_profile`
--

CREATE TABLE `bookmark_profile` (
  `bp_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `bookmark_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookmark_profile`
--

INSERT INTO `bookmark_profile` (`bp_id`, `u_id`, `bookmark_id`) VALUES
(1, 8, 70);

-- --------------------------------------------------------

--
-- Table structure for table `bookmark_service`
--

CREATE TABLE `bookmark_service` (
  `bs_id` int(11) NOT NULL,
  `us_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookmark_service`
--

INSERT INTO `bookmark_service` (`bs_id`, `us_id`, `u_id`) VALUES
(1, 1, 4),
(2, 2, 72);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `us_id` int(11) NOT NULL,
  `bill` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `u_id`, `us_id`, `bill`) VALUES
(1, 8, 2, 1200);

-- --------------------------------------------------------

--
-- Table structure for table `catagory`
--

CREATE TABLE `catagory` (
  `c_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `details` varchar(400) NOT NULL,
  `flag` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `catagory`
--

INSERT INTO `catagory` (`c_id`, `name`, `details`, `flag`) VALUES
(1, 'Home', 'gffgh', 0),
(2, 'Hotel', 'gffgh', 0),
(3, 'Office', 'gffgh', 0),
(4, 'Tv mounting', 'LED TV 55\"', 0);

-- --------------------------------------------------------

--
-- Table structure for table `coupon`
--

CREATE TABLE `coupon` (
  `coupon_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `percentage` float NOT NULL,
  `expiredate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coupon`
--

INSERT INTO `coupon` (`coupon_id`, `name`, `percentage`, `expiredate`) VALUES
(2, 'fhyjh', 0.5, '2021-06-16'),
(9, 'Anis jh', 0.1, '2020-09-16');

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `f_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `ans` varchar(400) NOT NULL,
  `date` date NOT NULL,
  `flag` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`f_id`, `name`, `ans`, `date`, `flag`) VALUES
(1, 'why', 'thats why', '0000-00-00', 0),
(8, 'how about', 'here is', '2020-09-02', 0),
(9, 'g', 'jgfjjgh', '2020-10-09', 0);

-- --------------------------------------------------------

--
-- Table structure for table `leaderboard`
--

CREATE TABLE `leaderboard` (
  `u_id` int(11) NOT NULL,
  `income` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `leaderboard`
--

INSERT INTO `leaderboard` (`u_id`, `income`) VALUES
(4, 5600),
(5, 5000),
(6, 8600),
(8, 3600);

-- --------------------------------------------------------

--
-- Table structure for table `request_bookmark_profile`
--

CREATE TABLE `request_bookmark_profile` (
  `rbp_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `bookmark_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `request_bookmark_profile`
--

INSERT INTO `request_bookmark_profile` (`rbp_id`, `u_id`, `bookmark_id`) VALUES
(1, 6, 4),
(5, 8, 4),
(10, 4, 4),
(12, 4, 70);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `s_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `details` varchar(50) NOT NULL,
  `flag` int(11) NOT NULL DEFAULT 0,
  `c_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`s_id`, `name`, `details`, `flag`, `c_id`) VALUES
(24, 'Plumbing', 'dfhdfhdfh', 0, 3),
(33, 'Electrical', 'gfjfj', 0, 2),
(34, 'Painting', 'hjgfj', 0, 2),
(37, 'Furniture Assembly', 'dfhh', 0, 2),
(39, 'Office Cleaning', 'jhp', 0, 3),
(41, 'Tv mounting', 'gjgjfj', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `t_id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `buyer_id` int(11) NOT NULL,
  `us_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `bill` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`t_id`, `seller_id`, `buyer_id`, `us_id`, `coupon_id`, `bill`) VALUES
(1, 8, 70, 10, 2, 400),
(2, 8, 70, 14, 2, 700),
(3, 8, 70, 15, 0, 1200),
(4, 4, 5, 15, 0, 2000),
(5, 4, 5, 10, 0, 100),
(6, 4, 5, 14, 0, 800);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `pass` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `admin` int(11) NOT NULL DEFAULT 0,
  `work` varchar(30) NOT NULL,
  `pnumber` varchar(15) NOT NULL,
  `address` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `bio` varchar(400) NOT NULL,
  `picture` varchar(50) NOT NULL,
  `flag` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `name`, `pass`, `email`, `admin`, `work`, `pnumber`, `address`, `dob`, `bio`, `picture`, `flag`) VALUES
(4, 'nahid ahmed', '12345678', 'nahid@gmail.com', 0, 'student', '01598546568', '', '0000-00-00', '', '', 0),
(5, 'shojibur rahman', '123456789', 'shojib@gmail.com', 1, 'student', '1827058898', 'uttara', '1998-06-30', 'lorem ipsum', 'microsoft.png', 0),
(6, 'shajid', '123456789', 'shajid@gmail.com', 3, 'home', '1827056645', 'dhaka', '0000-00-00', 'child', 'cartton-shojib3.png', 0),
(8, 'pabel', '123456789', 'pabel@gmail.com', 2, 'student', '0125228', 'uttara', '0000-00-00', '', 'pabel.jpg', 0),
(70, 'rahman', '1234567', 'rahman@gmail.com', 0, 'student', '', '', '2020-09-16', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui', '', 0),
(78, 'ghghg ghghgh', '12345678', 'nur@gmail.com', 0, '', '', '', '0000-00-00', '', '', 0),
(79, 'juhan nur', '123456789', 'juhan@gmail.com', 1, '', '', '', '0000-00-00', '', '', 0),
(80, 'rfh thth', '12345678', 'tuhin@gmail.com', 2, '', '', '', '0000-00-00', '', '', 0),
(83, 'gfhjg dgfh', '689 5668gju', 'gh@gmail.coi', 0, '', '', '', '0000-00-00', '', '', 0),
(85, 'jgfj yjjgj', 'thtthtghj', 'dfdg@fgf.hhgh', 1, '', '', '', '0000-00-00', '', '', 0),
(86, 'sho rfegfg', 'ghgfutyyjyghkji', 'fdgg@gdfsgg.co', 2, '', '', '', '0000-00-00', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `us_services`
--

CREATE TABLE `us_services` (
  `us_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `price` float NOT NULL,
  `details` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `us_services`
--

INSERT INTO `us_services` (`us_id`, `u_id`, `s_id`, `price`, `details`) VALUES
(1, 4, 24, 200, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui'),
(2, 70, 33, 500, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui'),
(3, 70, 39, 100, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui'),
(4, 70, 41, 150, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui'),
(5, 4, 33, 300, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui'),
(6, 4, 39, 600, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui'),
(8, 4, 37, 800, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui'),
(10, 70, 33, 200, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui'),
(14, 70, 37, 858, 'gfgg'),
(15, 70, 39, 2435, 'hdftuthbdfhyf ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookmark_profile`
--
ALTER TABLE `bookmark_profile`
  ADD PRIMARY KEY (`bp_id`);

--
-- Indexes for table `bookmark_service`
--
ALTER TABLE `bookmark_service`
  ADD PRIMARY KEY (`bs_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `catagory`
--
ALTER TABLE `catagory`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `coupon`
--
ALTER TABLE `coupon`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `leaderboard`
--
ALTER TABLE `leaderboard`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `request_bookmark_profile`
--
ALTER TABLE `request_bookmark_profile`
  ADD PRIMARY KEY (`rbp_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`t_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `us_services`
--
ALTER TABLE `us_services`
  ADD PRIMARY KEY (`us_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookmark_profile`
--
ALTER TABLE `bookmark_profile`
  MODIFY `bp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bookmark_service`
--
ALTER TABLE `bookmark_service`
  MODIFY `bs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `catagory`
--
ALTER TABLE `catagory`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `coupon`
--
ALTER TABLE `coupon`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `leaderboard`
--
ALTER TABLE `leaderboard`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `request_bookmark_profile`
--
ALTER TABLE `request_bookmark_profile`
  MODIFY `rbp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `t_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `us_services`
--
ALTER TABLE `us_services`
  MODIFY `us_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
