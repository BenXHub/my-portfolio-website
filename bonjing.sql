-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2023 at 07:07 AM
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
-- Database: `atmos-db`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_year`
--

CREATE TABLE `academic_year` (
  `id` int(11) NOT NULL,
  `year` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `academic_year`
--

INSERT INTO `academic_year` (`id`, `year`, `created_at`, `updated_at`) VALUES
(1, '2023-2024', '2023-11-25 05:07:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `firstname`, `lastname`, `email`, `username`, `password`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 'Jetro', 'Bagasala', 'jethgen.26@gmail.com', 'admin', 'admin123', 'no-avatar.jpeg', '2023-11-25 05:36:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` int(11) NOT NULL,
  `academic_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `time_in` datetime NOT NULL,
  `time_out` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `course` varchar(100) NOT NULL,
  `course_code` varchar(50) NOT NULL,
  `level` tinyint(1) NOT NULL,
  `section` varchar(12) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course`, `course_code`, `level`, `section`, `created_at`, `updated_at`) VALUES
(1, 'Associate in Computer Technology', 'ACT', 1, NULL, '2023-11-25 04:06:38', NULL),
(2, 'Associate in Computer Technology', 'ACT', 2, NULL, '2023-11-25 04:06:58', NULL),
(3, 'Bachelor of Science in Computer Science', 'BSCS', 1, NULL, '2023-11-25 04:07:43', NULL),
(4, 'Bachelor of Science in Computer Science', 'BSCS', 2, NULL, '2023-11-25 04:07:54', NULL),
(5, 'Bachelor of Science in Computer Science', 'BSCS', 3, NULL, '2023-11-25 04:08:05', NULL),
(6, 'Bachelor of Science in Computer Science', 'BSCS', 4, NULL, '2023-11-25 04:08:14', NULL),
(7, 'Bachelor of Science in Entrepreneurship', 'BSEntrep', 1, NULL, '2023-11-25 04:09:46', NULL),
(8, 'Bachelor of Science in Entrepreneurship', 'BSEntrep', 2, NULL, '2023-11-25 04:09:58', NULL),
(9, 'Bachelor of Science in Entrepreneurship', 'BSEntrep', 3, NULL, '2023-11-25 04:10:25', NULL),
(10, 'Bachelor of Science in Entrepreneurship', 'BSEntrep', 4, NULL, '2023-11-25 04:10:25', NULL),
(11, 'Bachelor of Science in Accounting Information System', 'BSAIS', 1, NULL, '2023-11-25 04:12:32', NULL),
(12, 'Bachelor of Science in Accounting Information System', 'BSAIS', 2, NULL, '2023-11-25 04:12:32', NULL),
(13, 'Bachelor of Science in Accounting Information System', 'BSAIS', 3, NULL, '2023-11-25 04:12:32', NULL),
(14, 'Bachelor of Science in Accounting Information System', 'BSAIS', 4, NULL, '2023-11-25 04:12:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `venue` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `datetime_start` datetime NOT NULL,
  `datetime_end` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `academic_year_id`, `title`, `venue`, `description`, `datetime_start`, `datetime_end`, `created_at`, `updated_at`) VALUES
(1, 1, 'Year End Party', 'Macagang Hotel and Resort Nabua', 'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...', '2023-12-21 08:00:00', '2023-12-21 20:00:00', '2023-11-25 05:56:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `officers`
--

CREATE TABLE `officers` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `officers`
--

INSERT INTO `officers` (`id`, `first_name`, `last_name`, `username`, `password`, `phone`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 'Cedrick', 'Embestro', 'registrar', 'registrar123', '09000000000', 'no-avatar.jpeg', '2023-11-25 05:47:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(11) NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `attendance_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `usn` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `middle_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `course_id` int(11) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `qr_code` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `usn`, `first_name`, `middle_name`, `last_name`, `course_id`, `phone`, `address`, `avatar`, `qr_code`, `created_at`, `updated_at`) VALUES
(3, '200028495000', 'Jetro', 'General', 'Bagasala', 3, '09458514612', 'Polangui, Albay', 'no-avatar.jpeg', '?', '2023-11-25 05:40:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `usn` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `usn`, `password`, `user_type`, `created_at`) VALUES
(1, '20002849500', 'student1', 'student', '2023-11-25 04:43:44'),
(2, 'registrar', 'registrar123', 'registrar', '2023-11-25 04:43:44'),
(3, 'admin', 'admin123', 'administrator', '2023-11-25 04:44:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academic_year`
--
ALTER TABLE `academic_year`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `academic_id` (`academic_id`,`event_id`,`student_id`),
  ADD KEY `event_id` (`event_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `academic_year` (`academic_year_id`),
  ADD KEY `academic_year_id` (`academic_year_id`),
  ADD KEY `academic_year_id_2` (`academic_year_id`);

--
-- Indexes for table `officers`
--
ALTER TABLE `officers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `academic_year_id` (`academic_year_id`,`event_id`,`attendance_id`),
  ADD KEY `event_id` (`event_id`),
  ADD KEY `attendance_id` (`attendance_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academic_year`
--
ALTER TABLE `academic_year`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `officers`
--
ALTER TABLE `officers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendances`
--
ALTER TABLE `attendances`
  ADD CONSTRAINT `attendances_ibfk_1` FOREIGN KEY (`academic_id`) REFERENCES `academic_year` (`id`),
  ADD CONSTRAINT `attendances_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`),
  ADD CONSTRAINT `attendances_ibfk_3` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_ibfk_1` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_year` (`id`);

--
-- Constraints for table `reports`
--
ALTER TABLE `reports`
  ADD CONSTRAINT `reports_ibfk_1` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_year` (`id`),
  ADD CONSTRAINT `reports_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`),
  ADD CONSTRAINT `reports_ibfk_3` FOREIGN KEY (`attendance_id`) REFERENCES `attendances` (`id`);

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
