-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2021 at 05:52 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `course_management`
--
CREATE SCHEMA course_management;
USE course_management;
SET AUTOCOMMIT=0;
-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `ID` int(11) NOT NULL,
  `Code` varchar(255) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Program` varchar(255) NOT NULL,
  `Semester` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`ID`, `Code`, `Title`, `Program`, `Semester`) VALUES
(1, 'IC110', 'Engineering Mathematics', 'B.Tech Computer Science and Engineering', 1),
(2, 'IC152', 'Computing and Data Science', 'B.Tech Computer Science and Engineering', 1),
(3, 'IC140', 'Graphics For Design', 'B.Tech Computer Science and Engineering', 1),
(4, 'IC160', 'Electrical System Around Us', 'B.Tech Computer Science and Engineering', 1),
(5, 'IC101P', 'Reverse Engineering', 'B.Tech Computer Science and Engineering', 1),
(6, 'IC110', 'Engineering Mathematics', 'B.Tech Electrical Engineering', 1),
(7, 'IC140', 'Graphics For Design', 'B.Tech Electrical Engineering', 1),
(8, 'IC152', 'Computing And Data Science', 'B.Tech Electrical Engineering', 1),
(9, 'IC160', 'Electrical System Around Us', 'B.Tech Electrical Engineering', 1),
(10, 'IC101P', 'Reverse Engineering', 'B.Tech Electrical Engineering', 1),
(11, 'IC110', 'Engineering Mathematics', 'B.Tech Mechanical Engineering', 1),
(12, 'IC140', 'Graphics for Design', 'B.Tech Mechanical Engineering', 1),
(13, 'IC152', 'Computing For Data Science', 'B.Tech Mechanical Engineering', 1),
(14, 'IC160', 'Electrical System Around Us', 'B.Tech Mechanical Engineering', 1),
(15, 'IC101P', 'Reverse Engineering', 'B.Tech Mechanical Engineering', 1),
(16, 'IC160', 'Electrical System Around Us', 'B.Tech Civil Engineering', 1),
(17, 'IC152', 'Computing and Data Science', 'B.Tech Civil Engineering', 1),
(18, 'IC110', 'Engineering Mathematics', 'B.Tech Civil Engineering', 1),
(19, 'IC140', 'Graphics for Design', 'B.Tech Civil Engineering', 1),
(20, 'IC101P', 'Reverse Engineering', 'B.Tech Civil Engineering', 1),
(21, 'CE555', 'Advanced Design of Structures', 'M.Tech Structural Engineering', 1),
(22, 'CE557', 'Solid Mechanics in Structural Engineering', 'M.Tech Structural Engineering', 1),
(23, 'CE504', 'Slope Stability and Retaining Structures', 'M.Tech Structural Engineering', 1),
(24, 'CE511', 'Structural Dynamics with Application to Earthquake Engineering', 'M.Tech Structural Engineering', 1),
(25, 'EE552', 'CMOS analog IC design', 'M.Tech Communications and Signal Processing', 1),
(26, 'EE520', 'Microelectronics Devices and Modelling', 'M.Tech Communications and Signal Processing', 1),
(27, 'CS571', 'Programming Practicum', 'M.Tech Communications and Signal Processing', 1),
(28, 'EE534', 'Probability and Random Processes', 'M.Tech Communications and Signal Processing', 1),
(29, 'IC111', 'Linear Algebra', 'B.Tech Computer Science And Engineering', 2),
(30, 'IC252', 'Data Science II', 'B.Tech Computer Science And Engineering', 2),
(31, 'IC141', 'Product Realization Technology', 'B.Tech Computer Science And Engineering', 2),
(32, 'IC161', 'Applied Electronics', 'B.Tech Computer Science And Engineering', 2),
(33, 'IC142', 'Engineering Thermodynamics', 'B.Tech Computer Science And Engineering', 2),
(34, 'IC141', 'Product Realization Technology', 'B.Tech Civil Engineering', 2),
(35, 'IC111', 'Linear Algebra', 'B.Tech Civil Engineering', 2),
(36, 'IC252', 'Data Science II', 'B.Tech Civil Engineering', 2),
(37, 'IC161', 'Applied Electronics', 'B.Tech Civil Engineering', 2),
(38, 'IC142', 'Engineering Thermodynamics', 'B.Tech Civil Engineering', 2),
(39, 'IC252', 'Data Science II', 'B.Tech Electrical Engineering', 2),
(40, 'IC111', 'Linear Algebra', 'B.Tech Electrical Engineering', 2),
(41, 'IC141', 'Product Realization Technology', 'B.Tech Electrical Engineering', 2),
(42, 'IC161', 'Applied Electronics', 'B.Tech Electrical Engineering', 2),
(43, 'IC142', 'Engineering Thermodynamics', 'B.Tech Electrical Engineering', 2),
(44, 'IC141', 'Product Realization Technology', 'B.Tech Mechanical Engineering', 2),
(45, 'IC111', 'Linear Algebra', 'B.Tech Mechanical Engineering', 2),
(46, 'IC252', 'Data Science II', 'B.Tech Mechanical Engineering', 2),
(47, 'IC161', 'Applied Electronics', 'B.Tech Mechanical Engineering', 2),
(48, 'IC142', 'Engineering Thermodynamics', 'B.Tech Mechanical Engineering', 2),
(49, 'CE512', 'Advanced Soil Mechanics', 'M.Tech Structural Engineering', 2),
(50, 'CE552', 'Concrete Technology', 'M.Tech Structural Engineering', 2),
(51, 'ME617', 'Mechanics of Composite Materials', 'M.Tech Structural Engineering', 2),
(52, 'CE612', 'Theory of Plates and Shells', 'M.Tech Structural Engineering', 2),
(53, 'EE619', 'Mixed Signal VLSI Design', 'M.Tech Communications and Signal Processing', 2),
(54, 'EE623P', 'Practicum on Digital Control of Power Electronics and Drives', 'M.Tech Communications and Signal Processing', 2),
(55, 'CS549', 'Computer Network Analysis', 'M.Tech Communications and Signal Processing', 2),
(56, 'EE529', 'Embedded Systems', 'M.Tech Communications and Signal Processing', 2),
(57, 'CS207', 'Applied Database Practicm', 'B.Tech Computer Science And Engineering', 3),
(58, 'CS202', 'Data Structures And Algorithms', 'B.Tech Computer Science And Engineering', 3),
(59, 'IC272', 'Data Science 3', 'B.Tech Computer Science And Engineering', 3),
(60, 'IC240', 'Mechanics of Rigid Bodies', 'B.Tech Computer Science And Engineering', 3),
(61, 'CS208', 'Mathematical Foundations of Computer Science', 'B.Tech Computer Science And Engineering', 3),
(62, 'EE203', 'Network Theory', 'B.Tech Electrical Engineering', 3),
(63, 'IC272', 'Data Science 3', 'B.Tech Electrical Engineering', 3),
(64, 'IC260', 'Signals and Systems', 'B.Tech Electrical Engineering', 3),
(65, 'IC240', 'Mechanics of Rigid Bodies', 'B.Tech Electrical Engineering', 3),
(66, 'EE210', 'Digital Systems Design', 'B.Tech Electrical Engineering', 3),
(67, 'IC240', 'Mechanics of Rigid Bodies', 'B.Tech Mechanical Engineering', 3),
(68, 'ME205', 'Machine Drawing', 'B.Tech Mechanical Engineering', 3),
(69, 'ME351', 'Management of Manufacturing and Logistics Systems (NKN)', 'B.Tech Mechanical Engineering', 3),
(70, 'IC272', 'Data Science 3', 'B.Tech Mechanical Engineering', 3),
(71, 'IC121', 'Mechanics of Particles and Waves', 'B.Tech Mechanical Engineering', 3),
(72, 'CE251', 'Hydraulics Engineering', 'B.Tech Civil Engineering', 3),
(73, 'CE201', 'Surveying:Traditional and Digital', 'B.Tech Civil Engineering', 3),
(74, 'IC241', 'Materials Science for Engineers', 'B.Tech Civil Engineering', 3),
(75, 'IC240', 'Mechanics of Rigid Bodies', 'B.Tech Civil Engineering', 3),
(76, 'ME504', 'Numerical Methods for Engineering Computation', 'M.Tech Structural Engineering', 3),
(77, 'ME517', 'Advanced Analytical Techniques for Engineers', 'M.Tech Structural Engineering', 3),
(78, 'CE688P', 'Post Graduate Project-1 (STE)', 'M.Tech Structural Engineering', 3),
(79, 'EM651', 'Photovoltaic Materials and Fabrication', 'M.Tech Communications and Signal Processing', 3),
(80, 'EE615', 'Nano-electronics and Nano-Microfabrication', 'M.Tech Communications and Signal Processing', 3),
(81, 'EE528', 'Modeling and Analysis of Electrical Machines', 'M.Tech Communications and Signal Processing', 3),
(82, 'EE527', 'Analysis and Design of Power Electronic Converters', 'M.Tech Communications and Signal Processing', 3),
(83, 'CS304', 'Formal Language and Automata Theory', 'B.Tech Computer Science and Engineering', 4),
(84, 'CS507', 'Computer Architecture', 'B.Tech Computer Science and Engineering', 4),
(85, 'CS309', 'Information and Database Systems', 'B.Tech Computer Science and Engineering', 4),
(86, 'IC136', 'Understanding Biotechnology and its Applications', 'B.Tech Computer Science and Engineering', 4),
(87, 'IC201P', 'Design Practicum', 'B.Tech Computer Science and Engineering', 4),
(88, 'CE505', 'Engineering of Ground Modification', 'B.Tech Civil Engineering', 4),
(89, 'CE506', 'Analysis of Indeterminate Structures', 'B.Tech Civil Engineering', 4),
(90, 'CE561', 'Science of Climate Change', 'B.Tech Civil Engineering', 4),
(91, 'IC136', 'Understanding Biotechnology and its Applications', 'B.Tech Civil Engineering', 4),
(92, 'IC201P', 'Design Practicum', 'B.Tech Civil Engineering', 4),
(93, 'ME620', 'Modelling and Simulations', 'B.Tech Mechanical Engineering', 4),
(94, 'ME310P', 'Thermo-Fluids Laboratory', 'B.Tech Mechanical Engineering', 4),
(95, 'ME451', 'Refrigeration and Air Conditioning', 'B.Tech Mechanical Engineering', 4),
(96, 'IC136', 'Understanding Biotechnology and its Applications', 'B.Tech Mechanical Engineering', 4),
(97, 'IC201P', 'Design Practicum', 'B.Tech Mechanical Engineering', 4),
(98, 'EE513', 'Special Electrical Machines', 'B.Tech Electrical Engineering', 4),
(99, 'EE506', 'Solar Photovoltaic Energy Systems', 'B.Tech Electrical Engineering', 4),
(100, 'EE309', 'Power Electronics', 'B.Tech Electrical Engineering', 4),
(101, 'IC136', 'Understanding Biotechnology and its Applications', 'B.Tech Electrical Engineering', 4),
(102, 'IC201P', 'Design Practicum', 'B.Tech Electrical Engineering', 4),
(103, 'CE605', 'Engineering Seismology and Seismic Hazard Assessment', 'M.Tech Structural Engineering', 4),
(104, 'CE610', 'Analysis and Design for Earthquake Resistant Structures', 'M.Tech Structural Engineering', 4),
(105, 'CE612', 'Theory of Plates and ShellS', 'M.Tech Structural Engineering', 4),
(106, 'HS541', 'Technical Communication', 'M.Tech Structural Engineering', 4),
(107, 'EE604', 'Advanced Electric Drives', 'M.Tech Communications and Signal Processing', 4),
(108, 'EE518', 'Information Theory', 'M.Tech Communications and Signal Processing', 4),
(109, 'EE531', 'Estimation and Detection theory', 'M.Tech Communications and Signal Processing', 4),
(110, 'EE530', 'Applied Optimization', 'M.Tech Communications and Signal Processing', 4),
(111, 'CS308', 'Large Applications Practicum', 'B.Tech Computer Science and Engineering', 5),
(112, 'CS502', 'Compiler Design', 'B.Tech Computer Science and Engineering', 5),
(113, 'CS310', 'Introduction to Communicating Distributed Processes', 'B.Tech Computer Science and Engineering', 5),
(114, 'CS611', 'Program Analysis', 'B.Tech Computer Science and Engineering', 5),
(115, 'CS514', 'Data Structure and Algorithm - II', 'B.Tech Computer Science and Engineering', 5),
(116, 'EE304', 'Communication Theory', 'B.Tech Electrical Engineering', 5),
(117, 'EE211', 'Analog Circuit Design', 'B.Tech Electrical Engineering', 5),
(118, 'EE509', 'Linear Dynamical Systems', 'B.Tech Electrical Engineering', 5),
(119, 'CS310', 'Introduction to Communicating Distributed Processes', 'B.Tech Electrical Engineering', 5),
(120, 'CS451', 'Computer Graphics and Game Design', 'B.Tech Electrical Engineering', 5),
(121, 'ME613', 'Heat Transfer and Fluid Flow in Energy Systems', 'B.Tech Mechanical Engineering', 5),
(122, 'ME452', 'Robotics and Control', 'B.Tech Mechanical Engineering', 5),
(123, 'ME310P', 'Thermo-Fluids Laboratory', 'B.Tech Mechanical Engineering', 5),
(124, 'CS310', 'Introduction to Communicating Distributed Processes', 'B.Tech Mechanical Engineering', 5),
(125, 'CS451', 'Computer Graphics and Game Design', 'B.Tech Mechanical Engineering', 5),
(126, 'CE605', 'Engineering Seismology and Seismic Hazard Assessment', 'B.Tech Civil Engineering', 5),
(127, 'CE401', 'Design of Steel Structures', 'B.Tech Civil Engineering', 5),
(128, 'CE403', 'Wastewater Engineering', 'B.Tech Civil Engineering', 5),
(129, 'CS310', 'Introduction to Communicating Distributed Processes', 'B.Tech Civil Engineering', 5),
(130, 'CS451', 'Computer Graphics and Game Design', 'B.Tech Civil Engineering', 5),
(131, 'CS307', 'Systems Practicum', 'B.Tech Computer Science and Engineering', 6),
(132, 'CS302', 'Paradigms of Programming', 'B.Tech Computer Science and Engineering', 6),
(133, 'IC242', 'Continuum Mechanics', 'B.Tech Computer Science and Engineering', 6),
(134, 'IC230', 'Environmental Sciences', 'B.Tech Computer Science and Engineering', 6),
(135, 'CS550', 'Computer Graphics and Geometric Design', 'B.Tech Computer Science and Engineering', 6),
(136, 'CE401', 'Design of Steel Structures', 'B.Tech Civil Engineering', 6),
(137, 'CE552', 'Concrete Technology', 'B.Tech Civil Engineering', 6),
(138, 'CE586P', 'Mini Project', 'B.Tech Civil Engineering', 6),
(139, 'IC230', 'Environmental Sciences', 'B.Tech Civil Engineering', 6),
(140, 'IC242', 'Continuum Mechanics', 'B.Tech Civil Engineering', 6),
(141, 'EE304P', 'Communication Theory Lab', 'B.Tech Electrical Engineering', 6),
(142, 'EE201P', 'Electromechanics Lab', 'B.Tech Electrical Engineering', 6),
(143, 'EE201', 'Electromechanics', 'B.Tech Electrical Engineering', 6),
(144, 'IC230', 'Environmental Sciences', 'B.Tech Electrical Engineering', 6),
(145, 'IC242', 'Continuum Mechanics', 'B.Tech Electrical Engineering', 6),
(146, 'ME513', 'Finite Element Methods in Engineering', 'B.Tech Mechanical Engineering', 6),
(147, 'ME636', 'Combustion Technology', 'B.Tech Mechanical Engineering', 6),
(148, 'ME307', 'Energy Conversion Devices', 'B.Tech Mechanical Engineering', 6),
(149, 'IC230', 'Environmental Sciences', 'B.Tech Mechanical Engineering', 6),
(150, 'IC242', 'Continuum Mechanics', 'B.Tech Mechanical Engineering', 6),
(151, 'CS502', 'Compiler Design', 'B.Tech Computer Science and Engineering', 7),
(152, 'CS310', 'Introduction to Communicating Distributed Processes', 'B.Tech Computer Science and Engineering', 7),
(153, 'CS308', 'Large Applications Practicum', 'B.Tech Computer Science and Engineering', 7),
(154, 'CS561', 'Map Reduce and Big Data', 'B.Tech Computer Science and Engineering', 7),
(155, 'DP401P', 'Major Technical Project (CSE)', 'B.Tech Computer Science and Engineering', 7),
(156, 'EE503', 'Advanced Communication Theory', 'B.Tech Electrical Engineering', 7),
(157, 'EE301P', 'Control Systems LAB', 'B.Tech Electrical Engineering', 7),
(158, 'EE301', 'Control Systems', 'B.Tech Electrical Engineering', 7),
(159, 'EE305', 'Digital Signal Processing', 'B.Tech Electrical Engineering', 7),
(160, 'DP401P', 'Major Technical Project (EE)', 'B.Tech Electrical Engineering', 7),
(161, 'ME516', 'Polymer Technology for Engineers', 'B.Tech Mechanical Engineering', 7),
(162, 'ME515', 'Carbon Materials and Technology', 'B.Tech Mechanical Engineering', 7),
(163, 'ME305', 'Design of Machine Elements', 'B.Tech Mechanical Engineering', 7),
(164, 'ME312P', 'Design Lab -II', 'B.Tech Mechanical Engineering', 7),
(165, 'DP401P', 'Major Technical Project (ME)', 'B.Tech Mechanical Engineering', 7),
(166, 'CE504', 'Slope Stability and Retaining Structures', 'B.Tech Civil Engineering', 7),
(167, 'CE558', 'Air Pollution and its Mitigation', 'B.Tech Civil Engineering', 7),
(168, 'CE601', 'Geo-Informatics', 'B.Tech Civil Engineering', 7),
(169, 'CE305P', 'Environment and Earth Science Lab', 'B.Tech Civil Engineering', 7),
(170, 'DP401P', 'Major Technical Project (CE)', 'B.Tech Civil Engineering', 7),
(171, 'CS669', 'Pattern Recognition', 'B.Tech Computer Science and Engineering', 8),
(172, 'CS563', 'Scalable Data Science', 'B.Tech Computer Science and Engineering', 8),
(173, 'CS561', 'Map Reduce and Big Data', 'B.Tech Computer Science and Engineering', 8),
(174, 'CS672', 'Advanced Topics in Deep Learning', 'B.Tech Computer Science and Engineering', 8),
(175, 'CS304', 'Formal Language and Automata Theory', 'B.Tech Computer Science and Engineering', 8),
(176, 'EE303', 'Power Systems', 'B.Tech Electrical Engineering', 8),
(177, 'EE534', 'Probability and Random Processes', 'B.Tech Electrical Engineering', 8),
(178, 'EE524', 'Digital MOS LSI Circuits', 'B.Tech Electrical Engineering', 8),
(179, 'EE522', 'Matrix Theory', 'B.Tech Electrical Engineering', 8),
(180, 'EE591', 'Selected Topics in Resonant and Soft-switched DC-DC Converters', 'B.Tech Electrical Engineering', 8),
(181, 'ME518', 'Conduction and Radiation', 'B.Tech Mechanical Engineering', 8),
(182, 'ME620', 'Modelling and Simulations', 'B.Tech Mechanical Engineering', 8),
(183, 'ME351', 'Management of Manufacturing and Logistics Systems (NKN)', 'B.Tech Mechanical Engineering', 8),
(184, 'ME305', 'Design of Machine Elements', 'B.Tech Mechanical Engineering', 8),
(185, 'ME610', 'Advanced Thermodynamics', 'B.Tech Mechanical Engineering', 8),
(186, 'CE305P', 'Environment and Earth Science Lab', 'B.Tech Civil Engineering', 8),
(187, 'CE505', 'Engineering of Ground Modification', 'B.Tech Civil Engineering', 8),
(188, 'CE353P', 'Civil Engineering Drawing', 'B.Tech Civil Engineering', 8),
(189, 'CE402', 'Geotechnical Engineering II', 'B.Tech Civil Engineering', 8),
(190, 'CE601', 'Geo-Informatics', 'B.Tech Civil Engineering', 8);

-- --------------------------------------------------------

--
-- Table structure for table `registered_courses`
--

CREATE TABLE `registered_courses` (
  `ID` int(11) NOT NULL,
  `Student` varchar(255) NOT NULL,
  `Course` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `Roll_No` varchar(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Program` varchar(255) NOT NULL,
  `Current_semester` int(11) NOT NULL,
  `Password` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `registered_courses`
--
ALTER TABLE `registered_courses`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Student` (`Student`),
  ADD KEY `Course` (`Course`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`Roll_No`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;

--
-- AUTO_INCREMENT for table `registered_courses`
--
ALTER TABLE `registered_courses`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `registered_courses`
--
ALTER TABLE `registered_courses`
  ADD CONSTRAINT `registered_courses_ibfk_1` FOREIGN KEY (`Student`) REFERENCES `students` (`Roll_No`),
  ADD CONSTRAINT `registered_courses_ibfk_2` FOREIGN KEY (`Course`) REFERENCES `courses` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
