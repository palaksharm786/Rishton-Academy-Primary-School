-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2023 at 08:58 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school_record`
--

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `Class_ID` int(4) NOT NULL,
  `Teacher_ID` int(4) UNSIGNED ZEROFILL NOT NULL,
  `Name` varchar(35) NOT NULL,
  `Capacity` int(5) UNSIGNED ZEROFILL NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`Class_ID`, `Teacher_ID`, `Name`, `Capacity`) VALUES
(1, 0101, 'Nisha', 00030),
(2, 0102, 'Jyoti', 00035),
(3, 0105, 'Yash', 00025),
(4, 0789, 'abcd', 00567),
(5, 0103, 'John', 00045);

-- --------------------------------------------------------

--
-- Table structure for table `parents`
--

CREATE TABLE `parents` (
  `Parent_ID` int(4) NOT NULL,
  `First_Name` varchar(35) NOT NULL,
  `Last_Name` varchar(35) NOT NULL,
  `Gender` varchar(15) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Telephone` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pupil`
--

CREATE TABLE `pupil` (
  `Pupil_ID` int(4) NOT NULL,
  `First_Name` varchar(35) NOT NULL,
  `Last_Name` varchar(35) NOT NULL,
  `Gender` varchar(15) NOT NULL,
  `DOB` date NOT NULL,
  `Medical_Info` varchar(255) NOT NULL,
  `Class_ID` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pupil_parents`
--

CREATE TABLE `pupil_parents` (
  `Pupil_ID` int(4) NOT NULL,
  `Parent_ID` int(4) NOT NULL,
  `Relationship_Type` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `Salary_ID` int(4) NOT NULL,
  `Teacher_ID` int(4) NOT NULL,
  `Salary_Amount` int(10) NOT NULL,
  `Salary_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `Teacher_ID` int(4) NOT NULL,
  `First_Name` varchar(35) NOT NULL,
  `Last_Name` varchar(35) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Telephone` int(10) NOT NULL,
  `Salary_ID` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_class`
--

CREATE TABLE `teacher_class` (
  `Teacher_ID` int(4) NOT NULL,
  `Class_ID` int(4) NOT NULL,
  `Start_Date` date NOT NULL,
  `End_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`Class_ID`);

--
-- Indexes for table `parents`
--
ALTER TABLE `parents`
  ADD PRIMARY KEY (`Parent_ID`);

--
-- Indexes for table `pupil`
--
ALTER TABLE `pupil`
  ADD PRIMARY KEY (`Pupil_ID`);

--
-- Indexes for table `pupil_parents`
--
ALTER TABLE `pupil_parents`
  ADD PRIMARY KEY (`Pupil_ID`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`Salary_ID`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`Teacher_ID`);

--
-- Indexes for table `teacher_class`
--
ALTER TABLE `teacher_class`
  ADD PRIMARY KEY (`Teacher_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `Class_ID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `parents`
--
ALTER TABLE `parents`
  MODIFY `Parent_ID` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pupil`
--
ALTER TABLE `pupil`
  MODIFY `Pupil_ID` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pupil_parents`
--
ALTER TABLE `pupil_parents`
  MODIFY `Pupil_ID` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salary`
--
ALTER TABLE `salary`
  MODIFY `Salary_ID` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `Teacher_ID` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teacher_class`
--
ALTER TABLE `teacher_class`
  MODIFY `Teacher_ID` int(4) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pupil_parents`
--
ALTER TABLE `pupil_parents`
  ADD CONSTRAINT `pupil_parents_ibfk_1` FOREIGN KEY (`Pupil_ID`) REFERENCES `pupil` (`Pupil_ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
