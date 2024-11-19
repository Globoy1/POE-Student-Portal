-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2024 at 03:28 PM
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
-- Database: `sms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `first_name`, `last_name`, `email`, `password`) VALUES
(1, 'Admin', 'Admin_For_You', 'admin@gmail.com', '$2y$10$GZJ/KMneYYjxvVQ.Ue/nYOs6re32WApgxNk0JR4CBmuVqV24yYZQ.'),
(2, 'Mathew', 'Carla', 'carla@gmail.com', '$2y$10$Sh3uXhxzIsuVzUjt76YA2eWRkbOvHIALv1VGwYctD6/55U34p69Ca');

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `announcement_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`announcement_id`, `title`, `content`, `created_at`) VALUES
(9, 'Intake 2025', 'Registration date on the 05/01/205-25/02/2025', '2024-11-13 01:08:40'),
(10, 'Training', 'Life Orientation', '2024-11-13 01:45:08');

-- --------------------------------------------------------

--
-- Table structure for table `assignments`
--

CREATE TABLE `assignments` (
  `id` int(11) NOT NULL,
  `module_id` int(11) DEFAULT NULL,
  `assignment_description` text DEFAULT NULL,
  `submission_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `calendar`
--

CREATE TABLE `calendar` (
  `event_id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `event_title` varchar(255) DEFAULT NULL,
  `event_date` date DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_id` int(11) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `lecturer_name` varchar(255) DEFAULT NULL,
  `class_date` date DEFAULT NULL,
  `class_time` time DEFAULT NULL,
  `venue_room` varchar(255) DEFAULT NULL,
  `semester` int(11) DEFAULT NULL,
  `class_days` varchar(255) DEFAULT NULL,
  `course_code` varchar(50) DEFAULT NULL,
  `program_id` int(11) DEFAULT NULL,
  `module_overview` text DEFAULT NULL,
  `introduction` text DEFAULT NULL,
  `prescribed_textbook` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_id`, `course_name`, `lecturer_name`, `class_date`, `class_time`, `venue_room`, `semester`, `class_days`, `course_code`, `program_id`, `module_overview`, `introduction`, `prescribed_textbook`) VALUES
(1, 'Introduction to Programming', 'Dr. John Smith', NULL, '10:00:00', 'Room 101', 1, 'Mon & Wed', 'CS101', 1, 'The Graphic Fundamentals ART101 module is designed to introduce students to\r\n the core principles of graphic design. While I couldn’t find a specific course\r\n titled “ART101,” I found a course that covers the fundamentals of graphic \r\ndesign which might align with what you’re looking for. ', 'The Graphic Fundamentals ART101 module is an introductory course that covers the essential \r\nprinciples and elements of graphic design. It’s designed to provide a foundation in the basics of visual\r\n composition, including line, shape, form, texture, and balance.  These elements are crucial as they \r\nmake up the building blocks of all visual designs, from fine art to modern web design, and even in\r\n details like fonts and compositions.\r\n', 'Graphic Design School: The Principles and Practice of Graphic  Design, 8th Edition'),
(2, 'Data Structures and Algorithms', 'Prof. Jane Doe', NULL, '02:00:00', 'Room 102', 1, 'Tue & Thu', 'CS102', 1, NULL, NULL, NULL),
(3, 'Database Systems', 'Dr. Alan Turing', NULL, '09:00:00', 'Room 103', 1, 'Wed & Fri', 'CS103', 1, NULL, NULL, NULL),
(4, 'Web Development Basics', 'Ms. Ada Lovelace', NULL, '11:00:00', 'Room 104', 1, 'Mon & Wed', 'CS104', 2, NULL, NULL, NULL),
(5, 'Networking Fundamentals', 'Dr. Grace Hopper', NULL, '03:00:00', 'Room 105', 1, 'Tue & Thu', 'CS105', 2, NULL, NULL, NULL),
(6, 'Operating Systems', 'Prof. Linus Torvalds', NULL, '01:00:00', 'Room 106', 2, 'Mon & Wed', 'CS201', 2, NULL, NULL, NULL),
(7, 'Introduction to Artificial Intelligence', 'Dr. Marvin Minsky', NULL, '10:00:00', 'Room 107', 2, 'Fri', 'CS202', 3, NULL, NULL, NULL),
(8, 'Computer Graphics', 'Prof. Ivan Sutherland', NULL, '12:00:00', 'Room 108', 2, 'Tue & Thu', 'CS203', 3, NULL, NULL, NULL),
(9, 'Software Engineering Principles', 'Dr. Barbara Liskov', NULL, '09:00:00', 'Room 109', 2, 'Mon & Wed', 'CS204', 3, NULL, NULL, NULL),
(10, 'Human-Computer Interaction', 'Ms. Shneiderman', NULL, '04:00:00', 'Room 110', 2, 'Tue & Fri', 'CS205', NULL, NULL, NULL, NULL),
(11, 'Introduction to Machine Learning', 'Dr. Andrew Ng', NULL, '09:00:00', 'Room 108', 1, 'Mon & Wed', 'CS110', 1, NULL, NULL, NULL),
(12, 'Data Mining and Analysis', 'Prof. Jiawei Han', NULL, '10:00:00', 'Room 109', 2, 'Tue & Thu', 'CS120', 1, NULL, NULL, NULL),
(13, 'Artificial Intelligence', 'Dr. Stuart Russell', NULL, '11:00:00', 'Room 110', 2, 'Wed & Fri', 'CS121', 1, NULL, NULL, NULL),
(14, 'Advanced Algorithms', 'Prof. Thomas H. Cormen', NULL, '12:00:00', 'Room 111', 2, 'Mon & Wed', 'CS122', 1, NULL, NULL, NULL),
(15, 'Cybersecurity Fundamentals', 'Dr. Bruce Schneier', NULL, '02:00:00', 'Room 112', 2, 'Tue & Thu', 'CS123', 1, NULL, NULL, NULL),
(16, 'Introduction to Business', 'Dr. Jane Doe', NULL, '09:00:00', 'Room 201', 1, 'Tue & Thu', 'BM101', 3, NULL, NULL, NULL),
(17, 'Marketing Fundamentals', 'Prof. Michael Lee', NULL, '11:00:00', 'Room 202', 1, 'Mon & Wed', 'BM102', 3, NULL, NULL, NULL),
(18, 'Financial Accounting', 'Dr. Alice Brown', NULL, '13:00:00', 'Room 203', 2, 'Tue & Thu', 'BM103', 3, NULL, NULL, NULL),
(19, 'Human Resource Management', 'Prof. Sarah Green', NULL, '15:00:00', 'Room 204', 2, 'Mon & Wed', 'BM104', 3, NULL, NULL, NULL),
(20, 'Business Ethics', 'Dr. Emma Clark', NULL, '10:00:00', 'Room 205', 1, 'Mon & Wed', 'BM105', 3, NULL, NULL, NULL),
(21, 'Organizational Behavior', 'Prof. Mark Johnson', NULL, '14:00:00', 'Room 206', 1, 'Tue & Thu', 'BM106', 3, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `exam_id` int(11) NOT NULL,
  `course_name` varchar(255) DEFAULT NULL,
  `course_code` varchar(50) NOT NULL,
  `exam_date` date DEFAULT NULL,
  `exam_time` time NOT NULL,
  `venue` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `published` tinyint(1) DEFAULT 0,
  `status` enum('Upcoming','Completed','Cancelled') DEFAULT 'Upcoming'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`exam_id`, `course_name`, `course_code`, `exam_date`, `exam_time`, `venue`, `description`, `published`, `status`) VALUES
(6, 'APPR Exams', 'APPPR10', '2024-11-17', '10:30:00', 'ROOM 4', 'Bring your pen and be ready', 1, 'Upcoming');

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE `fees` (
  `fee_id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `fee_amount` decimal(10,2) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `paid` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fees`
--

INSERT INTO `fees` (`fee_id`, `student_id`, `fee_amount`, `due_date`, `paid`) VALUES
(9, 11, 20000.00, '2024-11-13', 1);

-- --------------------------------------------------------

--
-- Table structure for table `learning_units`
--

CREATE TABLE `learning_units` (
  `unit_id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `activity_count` int(11) DEFAULT NULL,
  `max_time` time DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `learning_units`
--

INSERT INTO `learning_units` (`unit_id`, `course_id`, `title`, `description`, `activity_count`, `max_time`, `file_path`) VALUES
(5, 1, 'Learning unit 1: Information Security', 'Martin Fisher, IT Security Manager at Northside Hospital in Atlanta, believes that enterprise\r\n information security is a “critical business capability that needs to be aligned with corporate\r\n expectations and culture that provides the leadership and insight to identify risks and imple\r\nment effective controls.” He is not alone in his perspective. Many information security practi\r\ntioners recognize that aligning information security needs with business objectives must be the\r\n top priority.\r\n This chapter’s opening scenario illustrates that information risks and controls may not be in\r\n balance at SLS. Though Amy works in a technical support role to help users with their pro\r\nblems, she did not recall her training about malicious e-mail attachments, such as worms or\r\n viruses, and fell victim to this form of attack herself. Understanding how malware might be\r\n the cause of a company’s problems is an important skill for information technology (IT) sup\r\nport staff as well as users. SLS’s management also shows signs of confusion and seems to have\r\n no idea how to contain this kind of incident. If you were in Amy’s place and were faced with\r\n a similar situation, what would you do? How would you react? Would it occur to you that\r\n something far more insidious than a technical malfunction was happening at your company?\r\n As you explore the chapters of this book and learn more about information security, you will\r\n become more capable of answering these questions. But, before you can begin studying details\r\n about the discipline of information security, you must first know its history and evolution.', 5, '22:50:00', 'uploads/Principles of Information Security.pdf'),
(6, 1, 'Introduction learning 2', 'For your good', 5, '17:30:00', 'uploads/Betway_X80EE10BD.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `mark_id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `course_name` varchar(255) DEFAULT NULL,
  `marks_obtained` int(11) DEFAULT NULL,
  `total_marks` int(11) DEFAULT NULL,
  `date_assessed` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `module_id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `module_name` varchar(255) NOT NULL,
  `lecturer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `programs`
--

CREATE TABLE `programs` (
  `program_id` int(11) NOT NULL,
  `program_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `programs`
--

INSERT INTO `programs` (`program_id`, `program_name`) VALUES
(1, 'Computer Science'),
(2, 'Information Technology'),
(3, 'Business Management'),
(4, 'Mechanical Engineering'),
(5, 'Civil Engineering'),
(6, 'Graphic Design'),
(7, 'Accounting'),
(8, 'Nursing'),
(9, 'Software Development'),
(10, 'Electrical Engineering');

-- --------------------------------------------------------

--
-- Table structure for table `resources`
--

CREATE TABLE `resources` (
  `resource_id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `resource_title` varchar(255) DEFAULT NULL,
  `resource_link` varchar(255) DEFAULT NULL,
  `resource_type` varchar(50) DEFAULT NULL,
  `content` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `resources`
--

INSERT INTO `resources` (`resource_id`, `course_id`, `resource_title`, `resource_link`, `resource_type`, `content`) VALUES
(2, 1, 'C# course', 'https://www.youtube.com/watch?v=r3CExhZgZV8&list=PLZPZq0r_RZOPNy28FDBys3GVP2LiaIyP_', 'video', 'Watch this video to complete ice activity 2');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `student_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `mobile_no` varchar(15) NOT NULL,
  `qualification` varchar(100) NOT NULL,
  `intake_year` int(11) NOT NULL,
  `race` varchar(50) NOT NULL,
  `id_number` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `program_id` int(11) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `last_read_notifications` datetime DEFAULT NULL,
  `profile_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `first_name`, `last_name`, `email`, `mobile_no`, `qualification`, `intake_year`, `race`, `id_number`, `address`, `program_id`, `password`, `last_read_notifications`, `profile_image`) VALUES
(11, 'Booma', 'Madesou', 'madesou@gmail.com', '52445226555', 'Diploma', 2025, 'Black', 'OA441153532', 'Parow', 1, '$2y$10$NMTgBgVtzr4BcpQ2KKuMeOSKKTylbswUkoTlM4PVVODfUehZDa05q', '2024-11-19 16:05:58', 'pngtree-casual-man-flat-design-avatar-profile-picture-vector-png-image_15526568.png'),
(12, 'Luis', 'Carmel', 'luis@gmail.com', '+27 63 452 15 2', 'Diploma', 2025, 'Black', '12545552254', 'Cape Town', 3, '$2y$10$JFij9IKJ0JTkzNY9qjqR7.tT/dWk/DbYZVQILfmzFeKqqWVk.4du6', '2024-11-13 01:46:43', '164874.png'),
(13, 'Nate', 'Nate', 'nate@gmail.com', '+27 63 452 15 2', 'Diploma', 2025, 'Black', '12545552254', 'Parow', 1, '$2y$10$qa56ssTl7Cy8CdHtxSV.LOQ2xESKqUcI8I3M.NoNcY.C.wNZ4XOQq', '2024-11-13 11:20:26', '164874.png'),
(14, 'Mathew', 'Carmel', 'david1@gmail.ocm', '+27 63 452 15 2', 'Diploma', 2025, 'Black', '62589745412', '28 stock street', 1, '$2y$10$umBNLfmM.w3MjUk2b57hf.aIrPeEQXntHB287CUhxLmIPxAZvQD2W', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `submissions`
--

CREATE TABLE `submissions` (
  `submission_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `submission_text` varchar(255) DEFAULT NULL,
  `submission_file` varchar(255) NOT NULL,
  `submission_date` datetime DEFAULT current_timestamp(),
  `total_marks` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `submissions`
--

INSERT INTO `submissions` (`submission_id`, `student_id`, `course_id`, `submission_text`, `submission_file`, `submission_date`, `total_marks`) VALUES
(10, 11, 1, 'APPR 1', 'uploads/BirdQuest Android Application Documentation (1).docx', '2024-11-13 03:17:30', 80),
(11, 11, 1, 'this my part one submission', 'uploads/BirdQuest Android Application Documentation (1).docx', '2024-11-13 12:15:15', 50),
(12, 11, 1, 'my pdf', 'uploads/AI tools used.pdf', '2024-11-13 12:16:19', NULL);

--
-- Triggers `submissions`
--
DELIMITER $$
CREATE TRIGGER `enforce_total_marks_limit` BEFORE INSERT ON `submissions` FOR EACH ROW BEGIN
    IF NEW.total_marks > 100 THEN
        SET NEW.total_marks = 100;
    END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `enforce_total_marks_limit_update` BEFORE UPDATE ON `submissions` FOR EACH ROW BEGIN
    IF NEW.total_marks > 100 THEN
        SET NEW.total_marks = 100;
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `task_id` int(11) NOT NULL,
  `task_name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `status` enum('Pending','In Progress','Completed') DEFAULT 'Pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `program_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`task_id`, `task_name`, `description`, `file`, `status`, `created_at`, `updated_at`, `program_id`, `course_id`) VALUES
(18, 'APPR', 'Ice task 1', 'BirdQuest Android Application Documentation (1).docx', 'Pending', '2024-11-13 01:11:25', '2024-11-13 01:11:25', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `task_assignments`
--

CREATE TABLE `task_assignments` (
  `task_assignment_id` int(11) NOT NULL,
  `task_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `status` enum('Pending','In Progress','Completed') DEFAULT 'Pending',
  `submitted_file` varchar(255) DEFAULT NULL,
  `mark` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `task_assignments`
--

INSERT INTO `task_assignments` (`task_assignment_id`, `task_id`, `student_id`, `status`, `submitted_file`, `mark`) VALUES
(15, 18, 11, '', 'Bird App Release Notes (5).rtf', 75);

-- --------------------------------------------------------

--
-- Table structure for table `task_submissions`
--

CREATE TABLE `task_submissions` (
  `submission_id` int(11) NOT NULL,
  `task_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `submission_text` text DEFAULT NULL,
  `submission_file` varchar(255) DEFAULT NULL,
  `submitted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`announcement_id`);

--
-- Indexes for table `assignments`
--
ALTER TABLE `assignments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `module_id` (`module_id`);

--
-- Indexes for table `calendar`
--
ALTER TABLE `calendar`
  ADD PRIMARY KEY (`event_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`exam_id`);

--
-- Indexes for table `fees`
--
ALTER TABLE `fees`
  ADD PRIMARY KEY (`fee_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `learning_units`
--
ALTER TABLE `learning_units`
  ADD PRIMARY KEY (`unit_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `marks`
--
ALTER TABLE `marks`
  ADD PRIMARY KEY (`mark_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `fk_course` (`course_id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`module_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`program_id`);

--
-- Indexes for table `resources`
--
ALTER TABLE `resources`
  ADD PRIMARY KEY (`resource_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `program_id` (`program_id`);

--
-- Indexes for table `submissions`
--
ALTER TABLE `submissions`
  ADD PRIMARY KEY (`submission_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`task_id`);

--
-- Indexes for table `task_assignments`
--
ALTER TABLE `task_assignments`
  ADD PRIMARY KEY (`task_assignment_id`),
  ADD KEY `task_id` (`task_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `task_submissions`
--
ALTER TABLE `task_submissions`
  ADD PRIMARY KEY (`submission_id`),
  ADD KEY `task_id` (`task_id`),
  ADD KEY `student_id` (`student_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `announcement_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `assignments`
--
ALTER TABLE `assignments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `calendar`
--
ALTER TABLE `calendar`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `exam_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `fees`
--
ALTER TABLE `fees`
  MODIFY `fee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `learning_units`
--
ALTER TABLE `learning_units`
  MODIFY `unit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `marks`
--
ALTER TABLE `marks`
  MODIFY `mark_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `programs`
--
ALTER TABLE `programs`
  MODIFY `program_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `resources`
--
ALTER TABLE `resources`
  MODIFY `resource_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `submissions`
--
ALTER TABLE `submissions`
  MODIFY `submission_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `task_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `task_assignments`
--
ALTER TABLE `task_assignments`
  MODIFY `task_assignment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `task_submissions`
--
ALTER TABLE `task_submissions`
  MODIFY `submission_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assignments`
--
ALTER TABLE `assignments`
  ADD CONSTRAINT `assignments_ibfk_1` FOREIGN KEY (`module_id`) REFERENCES `modules` (`module_id`) ON DELETE CASCADE;

--
-- Constraints for table `calendar`
--
ALTER TABLE `calendar`
  ADD CONSTRAINT `calendar_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`);

--
-- Constraints for table `fees`
--
ALTER TABLE `fees`
  ADD CONSTRAINT `fees_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`);

--
-- Constraints for table `learning_units`
--
ALTER TABLE `learning_units`
  ADD CONSTRAINT `learning_units_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`);

--
-- Constraints for table `marks`
--
ALTER TABLE `marks`
  ADD CONSTRAINT `fk_course` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`),
  ADD CONSTRAINT `marks_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`);

--
-- Constraints for table `modules`
--
ALTER TABLE `modules`
  ADD CONSTRAINT `modules_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`) ON DELETE CASCADE;

--
-- Constraints for table `resources`
--
ALTER TABLE `resources`
  ADD CONSTRAINT `resources_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`);

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`program_id`) REFERENCES `programs` (`program_id`);

--
-- Constraints for table `submissions`
--
ALTER TABLE `submissions`
  ADD CONSTRAINT `submissions_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`),
  ADD CONSTRAINT `submissions_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`);

--
-- Constraints for table `task_assignments`
--
ALTER TABLE `task_assignments`
  ADD CONSTRAINT `task_assignments_ibfk_1` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`task_id`),
  ADD CONSTRAINT `task_assignments_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`);

--
-- Constraints for table `task_submissions`
--
ALTER TABLE `task_submissions`
  ADD CONSTRAINT `task_submissions_ibfk_1` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`task_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `task_submissions_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
