-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2024 at 09:07 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `attendance_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance_details`
--

CREATE TABLE `attendance_details` (
  `faculty_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `on_date` date NOT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance_details`
--

INSERT INTO `attendance_details` (`faculty_id`, `course_id`, `session_id`, `student_id`, `on_date`, `status`) VALUES
(1, 1, 2, 1, '2024-11-27', 'YES'),
(1, 1, 2, 3, '2024-11-27', 'YES'),
(1, 1, 2, 3, '2024-11-28', 'YES'),
(1, 1, 2, 3, '2024-11-29', 'YES'),
(1, 1, 2, 4, '2024-11-06', 'YES'),
(1, 1, 2, 4, '2024-11-21', 'YES'),
(1, 1, 2, 4, '2024-11-27', 'YES'),
(1, 1, 2, 4, '2024-11-28', 'YES'),
(1, 1, 2, 4, '2024-11-29', 'YES'),
(1, 1, 2, 8, '2024-11-06', 'YES'),
(1, 1, 2, 8, '2024-11-21', 'YES'),
(1, 1, 2, 8, '2024-11-27', 'YES'),
(1, 1, 2, 9, '2024-11-06', 'YES'),
(1, 1, 2, 9, '2024-11-21', 'YES'),
(1, 1, 2, 9, '2024-11-27', 'YES'),
(1, 1, 2, 9, '2024-11-28', 'YES'),
(1, 1, 2, 9, '2024-11-29', 'YES'),
(1, 1, 2, 10, '2024-11-21', 'NO'),
(1, 1, 2, 10, '2024-11-27', 'YES'),
(1, 1, 2, 10, '2024-11-28', 'YES'),
(1, 1, 2, 10, '2024-11-29', 'YES'),
(1, 1, 2, 13, '2024-11-27', 'YES'),
(1, 1, 2, 13, '2024-11-28', 'YES'),
(1, 1, 2, 13, '2024-11-29', 'YES'),
(1, 1, 2, 17, '2024-11-06', 'YES'),
(1, 1, 2, 17, '2024-11-28', 'YES'),
(1, 1, 2, 17, '2024-11-29', 'YES'),
(1, 1, 2, 20, '2024-11-06', 'YES'),
(1, 3, 1, 2, '2024-11-27', 'YES'),
(1, 3, 1, 5, '2024-11-27', 'YES'),
(1, 3, 1, 7, '2024-11-27', 'YES'),
(1, 3, 1, 9, '2024-11-27', 'YES'),
(1, 3, 1, 10, '2024-11-27', 'YES'),
(3, 1, 3, 3, '2024-11-30', 'YES'),
(3, 1, 3, 5, '2024-11-30', 'YES'),
(3, 1, 3, 11, '2024-11-30', 'YES'),
(3, 1, 3, 12, '2024-11-30', 'YES');

-- --------------------------------------------------------

--
-- Table structure for table `course_allotment`
--

CREATE TABLE `course_allotment` (
  `faculty_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_allotment`
--

INSERT INTO `course_allotment` (`faculty_id`, `course_id`, `session_id`) VALUES
(1, 1, 2),
(1, 2, 2),
(1, 2, 3),
(1, 3, 1),
(1, 5, 3),
(2, 1, 3),
(2, 2, 1),
(2, 3, 1),
(2, 4, 2),
(2, 4, 3),
(2, 5, 2),
(3, 1, 1),
(3, 1, 3),
(3, 2, 1),
(3, 3, 2),
(3, 5, 3),
(3, 6, 2),
(4, 2, 2),
(4, 3, 1),
(4, 3, 3),
(4, 5, 1),
(4, 5, 3),
(4, 6, 2),
(5, 1, 3),
(5, 4, 1),
(5, 4, 2),
(5, 5, 1),
(5, 5, 2),
(6, 1, 3),
(6, 2, 2),
(6, 3, 1),
(6, 4, 3),
(6, 5, 1),
(6, 6, 2);

-- --------------------------------------------------------

--
-- Table structure for table `course_details`
--

CREATE TABLE `course_details` (
  `id` int(11) NOT NULL,
  `code` varchar(20) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `credit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_details`
--

INSERT INTO `course_details` (`id`, `code`, `title`, `credit`) VALUES
(1, 'CO321', 'Database management system lab', 2),
(2, 'CO215', 'Pattern Recognition', 3),
(3, 'CS112', 'Data Mining & Data Warehousing', 4),
(4, 'CS670', 'ARTIFICIAL INTELLIGENCE', 4),
(5, 'CO432', 'THEORY OF COMPUTATION ', 3),
(6, 'CS673', 'DEMYSTIFYING NETWORKING ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `course_registration`
--

CREATE TABLE `course_registration` (
  `student_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_registration`
--

INSERT INTO `course_registration` (`student_id`, `course_id`, `session_id`) VALUES
(1, 1, 2),
(1, 3, 3),
(1, 4, 3),
(1, 5, 2),
(1, 5, 3),
(1, 6, 1),
(2, 2, 1),
(2, 2, 3),
(2, 3, 1),
(2, 3, 3),
(2, 5, 2),
(2, 6, 1),
(2, 6, 2),
(2, 6, 3),
(3, 1, 2),
(3, 1, 3),
(3, 2, 1),
(3, 4, 2),
(3, 4, 3),
(3, 5, 1),
(3, 6, 1),
(3, 6, 2),
(3, 6, 3),
(4, 1, 2),
(4, 3, 2),
(4, 4, 2),
(4, 4, 3),
(4, 5, 1),
(4, 6, 1),
(4, 6, 3),
(5, 1, 3),
(5, 2, 2),
(5, 3, 1),
(5, 4, 1),
(5, 4, 2),
(5, 4, 3),
(5, 5, 2),
(5, 6, 3),
(6, 1, 1),
(6, 2, 3),
(6, 3, 2),
(6, 4, 1),
(6, 4, 3),
(6, 5, 1),
(6, 5, 3),
(6, 6, 2),
(7, 2, 1),
(7, 3, 1),
(7, 4, 3),
(7, 5, 1),
(7, 5, 2),
(7, 5, 3),
(7, 6, 2),
(7, 6, 3),
(8, 1, 2),
(8, 3, 3),
(8, 4, 2),
(8, 5, 1),
(8, 5, 2),
(8, 5, 3),
(8, 6, 1),
(8, 6, 3),
(9, 1, 2),
(9, 2, 1),
(9, 2, 2),
(9, 3, 1),
(9, 3, 3),
(9, 4, 2),
(9, 4, 3),
(9, 5, 1),
(10, 1, 1),
(10, 1, 2),
(10, 3, 1),
(10, 3, 3),
(10, 5, 1),
(10, 5, 2),
(10, 6, 3),
(11, 1, 1),
(11, 1, 3),
(11, 2, 2),
(11, 3, 2),
(11, 4, 3),
(11, 5, 1),
(11, 5, 2),
(11, 6, 3),
(12, 1, 3),
(12, 2, 1),
(12, 4, 2),
(12, 4, 3),
(12, 5, 1),
(12, 5, 3),
(12, 6, 2),
(13, 1, 1),
(13, 1, 2),
(13, 3, 1),
(13, 3, 3),
(13, 4, 2),
(13, 4, 3),
(13, 5, 1),
(13, 6, 2),
(14, 3, 1),
(14, 4, 1),
(14, 4, 3),
(14, 5, 2),
(14, 5, 3),
(14, 6, 1),
(14, 6, 2),
(15, 1, 1),
(15, 1, 3),
(15, 2, 1),
(15, 2, 2),
(15, 3, 1),
(15, 3, 2),
(15, 5, 2),
(16, 2, 3),
(16, 3, 2),
(16, 5, 1),
(16, 5, 2),
(16, 5, 3),
(16, 6, 1),
(16, 6, 3),
(17, 1, 2),
(17, 1, 3),
(17, 2, 1),
(17, 2, 2),
(17, 2, 3),
(17, 3, 1),
(17, 3, 2),
(17, 3, 3),
(17, 6, 1),
(18, 1, 3),
(18, 2, 1),
(18, 2, 2),
(18, 4, 2),
(18, 5, 1),
(18, 5, 3),
(18, 6, 1),
(18, 6, 3),
(19, 1, 1),
(19, 1, 3),
(19, 3, 1),
(19, 4, 1),
(19, 4, 2),
(19, 5, 2),
(19, 5, 3),
(19, 6, 2),
(20, 1, 1),
(20, 1, 2),
(20, 1, 3),
(20, 2, 2),
(20, 3, 1),
(20, 3, 2),
(20, 4, 3),
(20, 5, 1),
(20, 6, 3),
(21, 1, 1),
(21, 2, 1),
(21, 2, 2),
(21, 3, 3),
(21, 4, 2),
(21, 5, 3),
(21, 6, 1),
(22, 1, 2),
(22, 1, 3),
(22, 2, 1),
(22, 2, 2),
(22, 2, 3),
(22, 3, 1),
(22, 3, 3),
(22, 6, 1),
(23, 2, 1),
(23, 2, 2),
(23, 2, 3),
(23, 3, 1),
(23, 4, 3),
(23, 5, 2),
(23, 6, 1),
(23, 6, 2),
(24, 2, 3),
(24, 3, 1),
(24, 3, 3),
(24, 5, 2),
(24, 5, 3),
(24, 6, 1),
(24, 6, 2);

-- --------------------------------------------------------

--
-- Table structure for table `faculty_details`
--

CREATE TABLE `faculty_details` (
  `id` int(11) NOT NULL,
  `user_name` varchar(20) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty_details`
--

INSERT INTO `faculty_details` (`id`, `user_name`, `name`, `password`) VALUES
(1, 'rcb', 'Ram Charan Baishya', '123'),
(2, 'arindam', 'Arindam Karmakar', '123'),
(3, 'pal', 'Pallabi', '123'),
(4, 'anuj', 'Anuj Agarwal', '123'),
(5, 'mriganka', 'Mriganka Sekhar', '123'),
(6, 'manooj', 'Manooj Hazarika', '123');

-- --------------------------------------------------------

--
-- Table structure for table `sent_email_details`
--

CREATE TABLE `sent_email_details` (
  `faculty_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `on_date` date DEFAULT NULL,
  `id` int(11) NOT NULL,
  `message` varchar(200) DEFAULT NULL,
  `to_email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `session_details`
--

CREATE TABLE `session_details` (
  `id` int(11) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `term` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `session_details`
--

INSERT INTO `session_details` (`id`, `year`, `term`) VALUES
(2, 2023, 'AUTUMN SEMESTER'),
(1, 2023, 'SPRING SEMESTER'),
(3, 2024, 'SPRING SEMESTER');

-- --------------------------------------------------------

--
-- Table structure for table `student_details`
--

CREATE TABLE `student_details` (
  `id` int(11) NOT NULL,
  `roll_no` varchar(20) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email_id` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_details`
--

INSERT INTO `student_details` (`id`, `roll_no`, `name`, `email_id`) VALUES
(1, 'CSB21001', 'Alexy Johnson', 'abc@gmail.com'),
(2, 'CSB21002', 'Emily Smith', 'abc@gmail.com'),
(3, 'CSB21003', 'Ryan Thompson', 'abc@gmail.com'),
(4, 'CSB21004', 'Sophia Williams', 'abc@gmail.com'),
(5, 'CSB21005', 'Daniel Brown', 'abc@gmail.com'),
(6, 'CSB21006', 'Olivia Jones', 'abc@gmail.com'),
(7, 'CSB21007', 'Matthew Davis', 'abc@gmail.com'),
(8, 'CSB21008', 'Emma Miller', 'abc@gmail.com'),
(9, 'CSB21009', 'David Wilson', 'abc@gmail.com'),
(10, 'CSB21010', 'Sarah Taylor', 'abc@gmail.com'),
(11, 'CSB21011', 'Michael Martinez', 'abc@gmail.com'),
(12, 'CSB21012', 'Ava Anderson', 'abc@gmail.com'),
(13, 'CSM21001', 'Liam Garcia', 'abc@gmail.com'),
(14, 'CSM21002', 'Isabella Rodriguez', 'abc@gmail.com'),
(15, 'CSM21003', 'Ethan Martinez', 'abc@gmail.com'),
(16, 'CSM21004', 'Olivia Hernandez', 'abc@gmail.com'),
(17, 'CSM21005', 'Mason Lopez', 'abc@gmail.com'),
(18, 'CSM21006', 'Sophia Perez', 'abc@gmail.com'),
(19, 'CSM21007', 'Alexander Gonzalez', 'abc@gmail.com'),
(20, 'CSM21008', 'Ava Johnson', 'abc@gmail.com'),
(21, 'CSM21009', 'William Martinez', 'abc@gmail.com'),
(22, 'CSM21010', 'Emily Brown', 'abc@gmail.com'),
(23, 'CSM21011', 'James Rodriguez', 'abc@gmail.com'),
(24, 'CSM21012', 'Emma Hernandez', 'abc@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance_details`
--
ALTER TABLE `attendance_details`
  ADD PRIMARY KEY (`faculty_id`,`course_id`,`session_id`,`student_id`,`on_date`);

--
-- Indexes for table `course_allotment`
--
ALTER TABLE `course_allotment`
  ADD PRIMARY KEY (`faculty_id`,`course_id`,`session_id`);

--
-- Indexes for table `course_details`
--
ALTER TABLE `course_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `course_registration`
--
ALTER TABLE `course_registration`
  ADD PRIMARY KEY (`student_id`,`course_id`,`session_id`);

--
-- Indexes for table `faculty_details`
--
ALTER TABLE `faculty_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_name` (`user_name`);

--
-- Indexes for table `sent_email_details`
--
ALTER TABLE `sent_email_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `session_details`
--
ALTER TABLE `session_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `year` (`year`,`term`);

--
-- Indexes for table `student_details`
--
ALTER TABLE `student_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roll_no` (`roll_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course_details`
--
ALTER TABLE `course_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `faculty_details`
--
ALTER TABLE `faculty_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sent_email_details`
--
ALTER TABLE `sent_email_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `session_details`
--
ALTER TABLE `session_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student_details`
--
ALTER TABLE `student_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
