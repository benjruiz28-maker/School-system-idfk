-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 31, 2026 at 07:43 AM
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
-- Database: `school_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `student_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `gender` (),
  `dob` date NOT NULL,
  `email` varchar(100) NOT NULL,
  `class` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `first_name`, `last_name`, `gender`, `dob`, `email`, `class`) VALUES
(1, 'James', 'Smith' , '2005-03-12', 'james.smith1@school.edu', 'Information Technology 1'),
(2, 'Maria', 'Garcia', '2004-11-23', 'maria.garcia2@school.edu', 'Tourism 1'),
(3, 'Robert', 'Johnson', '2005-07-08', 'robert.johnson3@school.edu', 'Business Administration 1'),
(4, 'Patricia', 'Miller', '2006-01-15', 'patricia.miller4@school.edu', 'Computer Science 1'),
(5, 'John', 'Davis', '2005-09-30', 'john.davis5@school.edu', 'Hospitality Management 1'),
(6, 'Michael', 'Rodriguez', '2004-05-18', 'michael.rodriguez6@school.edu', 'Information Technology 1'),
(7, 'Linda', 'Martinez', '2005-12-04', 'linda.martinez7@school.edu', 'Tourism 1'),
(8, 'William', 'Hernandez', '2006-02-19', 'william.hernandez8@school.edu', 'Business Administration 1'),
(9, 'Elizabeth', 'Lopez', '2005-08-11', 'elizabeth.lopez9@school.edu', 'Computer Science 1'),
(10, 'David', 'Gonzalez', '2004-10-25', 'david.gonzalez10@school.edu', 'Hospitality Management 1'),
(11, 'Barbara', 'Wilson', '2005-04-03', 'barbara.wilson11@school.edu', 'Information Technology 1'),
(12, 'Richard', 'Anderson', '2006-06-21', 'richard.anderson12@school.edu', 'Tourism 1'),
(13, 'Susan', 'Thomas', '2005-01-09', 'susan.thomas13@school.edu', 'Business Administration 1'),
(14, 'Joseph', 'Taylor', '2004-08-14', 'joseph.taylor14@school.edu', 'Computer Science 1'),
(15, 'Jessica', 'Moore', '2005-11-27', 'jessica.moore15@school.edu', 'Hospitality Management 1'),
(16, 'Thomas', 'Jackson', '2006-03-05', 'thomas.jackson16@school.edu', 'Information Technology 1'),
(17, 'Sarah', 'Martin', '2005-02-17', 'sarah.martin17@school.edu', 'Tourism 1'),
(18, 'Charles', 'Lee', '2004-12-01', 'charles.lee18@school.edu', 'Business Administration 1'),
(19, 'Karen', 'Perez', '2005-06-13', 'karen.perez19@school.edu', 'Computer Science 1'),
(20, 'Christopher', 'Thompson', '2006-05-29', 'christopher.thompson20@school.edu', 'Hospitality Management 1'),
(21, 'Nancy', 'White', '2005-10-08', 'nancy.white21@school.edu', 'Information Technology 1'),
(22, 'Daniel', 'Harris', '2004-07-22', 'daniel.harris22@school.edu', 'Tourism 1'),
(23, 'Lisa', 'Sanchez', '2005-04-16', 'lisa.sanchez23@school.edu', 'Business Administration 1'),
(24, 'Matthew', 'Clark', '2006-08-02', 'matthew.clark24@school.edu', 'Computer Science 1'),
(25, 'Betty', 'Ramirez', '2005-03-24', 'betty.ramirez25@school.edu', 'Hospitality Management 1'),
(26, 'Anthony', 'Lewis', '2004-09-10', 'anthony.lewis26@school.edu', 'Information Technology 1'),
(27, 'Margaret', 'Robinson', '2005-12-19', 'margaret.robinson27@school.edu', 'Tourism 1'),
(28, 'Mark', 'Walker', '2006-01-31', 'mark.walker28@school.edu', 'Business Administration 1'),
(29, 'Sandra', 'Young', '2005-05-07', 'sandra.young29@school.edu', 'Computer Science 1'),
(30, 'Donald', 'Allen', '2004-04-14', 'donald.allen30@school.edu', 'Hospitality Management 1'),
(31, 'Ashley', 'King', '2005-08-28', 'ashley.king31@school.edu', 'Information Technology 1'),
(32, 'Steven', 'Wright', '2006-02-11', 'steven.wright32@school.edu', 'Tourism 1'),
(33, 'Kimberly', 'Scott', '2005-09-03', 'kimberly.scott33@school.edu', 'Business Administration 1'),
(34, 'Paul', 'Torres', '2004-11-05', 'paul.torres34@school.edu', 'Computer Science 1'),
(35, 'Emily', 'Nguyen', '2005-07-19', 'emily.nguyen35@school.edu', 'Hospitality Management 1'),
(36, 'Andrew', 'Hill', '2006-04-12', 'andrew.hill36@school.edu', 'Information Technology 1'),
(37, 'Donna', 'Flores', '2005-01-26', 'donna.flores37@school.edu', 'Tourism 1'),
(38, 'Joshua', 'Green', '2004-06-30', 'joshua.green38@school.edu', 'Business Administration 1'),
(39, 'Michelle', 'Adams', '2005-10-14', 'michelle.adams39@school.edu', 'Computer Science 1'),
(40, 'Kenneth', 'Nelson', '2006-07-21', 'kenneth.nelson40@school.edu', 'Hospitality Management 1'),
(41, 'Carol', 'Baker', '2005-03-09', 'carol.baker41@school.edu', 'Information Technology 1'),
(42, 'Kevin', 'Hall', '2004-08-22', 'kevin.hall42@school.edu', 'Tourism 1'),
(43, 'Amanda', 'Rivera', '2005-11-11', 'amanda.rivera43@school.edu', 'Business Administration 1'),
(44, 'Brian', 'Campbell', '2006-05-03', 'brian.campbell44@school.edu', 'Computer Science 1'),
(45, 'Melissa', 'Mitchell', '2005-02-28', 'melissa.mitchell45@school.edu', 'Hospitality Management 1'),
(46, 'George', 'Carter', '2004-12-16', 'george.carter46@school.edu', 'Information Technology 1'),
(47, 'Deborah', 'Roberts', '2005-06-08', 'deborah.roberts47@school.edu', 'Tourism 1'),
(48, 'Edward', 'Gomez', '2006-09-17', 'edward.gomez48@school.edu', 'Business Administration 1'),
(49, 'Stephanie', 'Phillips', '2005-04-25', 'stephanie.phillips49@school.edu', 'Computer Science 1'),
(50, 'Ronald', 'Evans', '2004-10-02', 'ronald.evans50@school.edu', 'Hospitality Management 1'),
(51, 'Rebecca', 'Turner', '2005-08-06', 'rebecca.turner51@school.edu', 'Information Technology 1'),
(52, 'Timothy', 'Diaz', '2006-03-19', 'timothy.diaz52@school.edu', 'Tourism 1'),
(53, 'Sharon', 'Parker', '2005-01-04', 'sharon.parker53@school.edu', 'Business Administration 1'),
(54, 'Jason', 'Cruz', '2004-05-23', 'jason.cruz54@school.edu', 'Computer Science 1'),
(55, 'Laura', 'Edwards', '2005-09-12', 'laura.edwards55@school.edu', 'Hospitality Management 1'),
(56, 'Jeffrey', 'Collins', '2006-06-27', 'jeffrey.collins56@school.edu', 'Information Technology 1'),
(57, 'Cynthia', 'Reyes', '2005-02-14', 'cynthia.reyes57@school.edu', 'Tourism 1'),
(58, 'Ryan', 'Stewart', '2004-07-09', 'ryan.stewart58@school.edu', 'Business Administration 1'),
(59, 'Kathleen', 'Morris', '2005-11-30', 'kathleen.morris59@school.edu', 'Computer Science 1'),
(60, 'Jacob', 'Morales', '2006-04-18', 'jacob.morales60@school.edu', 'Hospitality Management 1'),
(61, 'Amy', 'Murphy', '2005-10-22', 'amy.murphy61@school.edu', 'Information Technology 1'),
(62, 'Gary', 'Cook', '2004-03-15', 'gary.cook62@school.edu', 'Tourism 1'),
(63, 'Angela', 'Rogers', '2005-05-01', 'angela.rogers63@school.edu', 'Business Administration 1'),
(64, 'Nicholas', 'Gutierrez', '2006-01-08', 'nicholas.gutierrez64@school.edu', 'Computer Science 1'),
(65, 'Shirley', 'Ortiz', '2005-07-26', 'shirley.ortiz65@school.edu', 'Hospitality Management 1'),
(66, 'Eric', 'Morgan', '2004-09-04', 'eric.morgan66@school.edu', 'Information Technology 1'),
(67, 'Emma', 'Cooper', '2005-12-13', 'emma.cooper67@school.edu', 'Tourism 1'),
(68, 'Stephen', 'Peterson', '2006-02-22', 'stephen.peterson68@school.edu', 'Business Administration 1'),
(69, 'Brenda', 'Bailey', '2005-06-17', 'brenda.bailey69@school.edu', 'Computer Science 1'),
(70, 'Larry', 'Reed', '2004-04-29', 'larry.reed70@school.edu', 'Hospitality Management 1'),
(71, 'Pamela', 'Kelly', '2005-08-15', 'pamela.kelly71@school.edu', 'Information Technology 1'),
(72, 'Justin', 'Howard', '2006-05-11', 'justin.howard72@school.edu', 'Tourism 1'),
(73, 'Nicole', 'Ramos', '2005-01-20', 'nicole.ramos73@school.edu', 'Business Administration 1'),
(74, 'Scott', 'Kim', '2004-10-31', 'scott.kim74@school.edu', 'Computer Science 1'),
(75, 'Samantha', 'Cox', '2005-03-07', 'samantha.cox75@school.edu', 'Hospitality Management 1'),
(76, 'Brandon', 'Ward', '2006-07-04', 'brandon.ward76@school.edu', 'Information Technology 1'),
(77, 'Katherine', 'Richardson', '2005-09-25', 'katherine.richardson77@school.edu', 'Tourism 1'),
(78, 'Benjamin', 'Watson', '2004-12-09', 'benjamin.watson78@school.edu', 'Business Administration 1'),
(79, 'Christine', 'Brooks', '2005-04-11', 'christine.brooks79@school.edu', 'Computer Science 1'),
(80, 'Samuel', 'Chavez', '2006-08-16', 'samuel.chavez80@school.edu', 'Hospitality Management 1'),
(81, 'Debra', 'Wood', '2005-02-02', 'debra.wood81@school.edu', 'Information Technology 1'),
(82, 'Gregory', 'James', '2004-06-18', 'gregory.james82@school.edu', 'Tourism 1'),
(83, 'Rachel', 'Bennett', '2005-11-20', 'rachel.bennett83@school.edu', 'Business Administration 1'),
(84, 'Alexander', 'Gray', '2006-03-28', 'alexander.gray84@school.edu', 'Computer Science 1'),
(85, 'Janet', 'Mendoza', '2005-07-01', 'janet.mendoza85@school.edu', 'Hospitality Management 1'),
(86, 'Patrick', 'Ruiz', '2004-05-06', 'patrick.ruiz86@school.edu', 'Information Technology 1'),
(87, 'Carolyn', 'Hughes', '2005-10-18', 'carolyn.hughes87@school.edu', 'Tourism 1'),
(88, 'Frank', 'Price', '2006-01-24', 'frank.price88@school.edu', 'Business Administration 1'),
(89, 'Maria', 'Alvarez', '2005-04-07', 'maria.alvarez89@school.edu', 'Computer Science 1'),
(90, 'Raymond', 'Castillo', '2004-08-30', 'raymond.castillo90@school.edu', 'Hospitality Management 1'),
(91, 'Heather', 'Sanders', '2005-12-25', 'heather.sanders91@school.edu', 'Information Technology 1'),
(92, 'Jack', 'Patel', '2006-06-02', 'jack.patel92@school.edu', 'Tourism 1'),
(93, 'Diane', 'Myers', '2005-03-18', 'diane.myers93@school.edu', 'Business Administration 1'),
(94, 'Dennis', 'Long', '2004-11-14', 'dennis.long94@school.edu', 'Computer Science 1'),
(95, 'Julie', 'Ross', '2005-09-08', 'julie.ross95@school.edu', 'Hospitality Management 1'),
(96, 'Jerry', 'Foster', '2006-02-05', 'jerry.foster96@school.edu', 'Information Technology 1'),
(97, 'Teresa', 'Jimenez', '2005-05-21', 'teresa.jimenez97@school.edu', 'Tourism 1'),
(98, 'Tyler', 'Powell', '2004-07-16', 'tyler.powell98@school.edu', 'Business Administration 1'),
(99, 'Doris', 'Jenkins', '2005-10-29', 'doris.jenkins99@school.edu', 'Computer Science 1'),
(100, 'Aaron', 'Perry', '2006-04-03', 'aaron.perry100@school.edu', 'Hospitality Management 1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
