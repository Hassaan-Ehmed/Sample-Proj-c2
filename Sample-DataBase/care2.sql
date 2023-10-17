-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2023 at 03:37 PM
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
-- Database: `care2`
--

-- --------------------------------------------------------

--
-- Table structure for table `appoinment`
--

CREATE TABLE `appoinment` (
  `Id` int(11) NOT NULL,
  `doc_id_FK` int(11) NOT NULL,
  `user_id_FK` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `statuss` varchar(100) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appoinment`
--

INSERT INTO `appoinment` (`Id`, `doc_id_FK`, `user_id_FK`, `date`, `time`, `statuss`, `message`) VALUES
(54, 37, 51, '2023-08-31', '20:12:00', 'Declined', 'sdcsz'),
(55, 36, 51, '2023-08-31', '19:12:00', 'Accepted', 'dfd'),
(60, 41, 78, '2023-10-05', '19:59:00', 'pending', 'fdb'),
(61, 41, 78, '2023-10-05', '19:59:00', 'pending', 'fdb'),
(62, 41, 78, '2023-10-05', '19:59:00', 'pending', 'fdb'),
(63, 41, 78, '2023-10-05', '19:59:00', 'pending', 'fdb'),
(64, 37, 92, '2023-10-10', '24:30:41', 'Accepted', 'fvvgdfg'),
(73, 41, 92, '2023-10-11', '20:40:00', 'pending', 'sdcsd'),
(74, 40, 92, '2023-10-17', '20:40:00', 'pending', 'vdfvdfv'),
(75, 40, 83, '2023-10-07', '19:58:00', 'pending', 'tfhgyuhjgy');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `Id` int(11) NOT NULL,
  `cat_name` varchar(50) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`Id`, `cat_name`, `status`) VALUES
(15, 'Dentistses', 0),
(16, 'Neurologist', 0),
(17, 'Dermatologist', 0),
(18, 'Hepatologist', 0),
(20, 'Pediatrician ', 0),
(21, 'Pulmonologist', 0),
(23, 'Psychologist', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `Id` int(11) NOT NULL,
  `city_name` varchar(50) NOT NULL,
  `statuse` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`Id`, `city_name`, `statuse`) VALUES
(4, 'Karachi', 0),
(5, 'Islamabadd', 0),
(6, 'multan', 0),
(18, 'Peshawars zzzzz', 1),
(19, 'hyderabad aaa', 1),
(20, 'faisalbadig', 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `Id` int(11) NOT NULL,
  `doc_name` varchar(50) NOT NULL,
  `experience` varchar(1000) NOT NULL,
  `contact` varchar(12) NOT NULL,
  `user_id_FK` int(11) NOT NULL,
  `cat_id_FK` int(11) NOT NULL,
  `city_id_FK` int(11) NOT NULL,
  `doc_img` varchar(100) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`Id`, `doc_name`, `experience`, `contact`, `user_id_FK`, `cat_id_FK`, `city_id_FK`, `doc_img`, `status`) VALUES
(36, 'umer ashrafs', '5 years', '0333456789', 61, 17, 6, 'images/doctors-1.jpg', 1),
(37, 'Iqra Naved', '3 years', '032722383316', 59, 18, 5, 'images/doctors-3.jpg', 0),
(40, 'Saleema Ahmed', '10 Years', '03232401910', 49, 17, 5, 'images/doctors-4.jpg', 0),
(41, 'Naima Khan', '5 Years', '03172567007', 54, 20, 5, 'images/testimonials-3.jpg', 0),
(42, 'Faria  Shakeel', '2 Years', '0333456708', 75, 15, 4, 'images/doctors-4.jpg', 0),
(43, 'Zahid Razzaq', '2 year', '03172345670', 76, 21, 4, 'images/testimonials-4.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `Id` int(11) NOT NULL,
  `patient_name` varchar(230) NOT NULL,
  `BloodGroup` varchar(1000) NOT NULL,
  `d_o_b` date NOT NULL,
  `contact` varchar(12) NOT NULL,
  `user_id_Fk` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`Id`, `patient_name`, `BloodGroup`, `d_o_b`, `contact`, `user_id_Fk`, `status`) VALUES
(29, 'Sara Khan', 'B', '2003-03-25', '0333456708', 78, 0),
(33, 'wd ', 'ww', '2023-10-16', 'www', 51, 0);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `Id` int(11) NOT NULL,
  `role_name` varchar(50) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`Id`, `role_name`, `status`) VALUES
(11, 'Admin', 0),
(13, 'Doctos', 0),
(15, 'User', 0),
(21, 'nurse2aa', 1),
(22, 'muslim', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role_id_FK` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Id`, `user_name`, `password`, `role_id_FK`, `status`) VALUES
(49, 'Saleema', '0321', 13, 0),
(51, 'Fareed', 'abc123', 15, 0),
(54, 'naima', 'naima123', 13, 1),
(59, 'Iqra', 'iqra', 13, 0),
(61, 'umer', 'ume', 13, 0),
(69, 'JiyaEjaz', 'abc123', 11, 0),
(75, 'Faris', 'abc123', 13, 0),
(76, 'Zahid', 'abc123', 13, 0),
(77, 'Sana', 'abc123', 13, 0),
(78, 'Sara', 'abc123', 15, 0),
(83, 'dfdd', 'wqeewq', 15, 0),
(89, 't4gtryy', 'dfe5ytty', 15, 0),
(90, 'danish', 'aaa', 13, 0),
(91, 'asz', 'asz', 15, 0),
(92, 'bakhtawar', 'b123', 15, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appoinment`
--
ALTER TABLE `appoinment`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `doc_id_FK` (`doc_id_FK`),
  ADD KEY `patient_id_FK` (`user_id_FK`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `docter_ibfk_1` (`cat_id_FK`),
  ADD KEY `user_id_FK` (`user_id_FK`),
  ADD KEY `city_id_FK` (`city_id_FK`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `user_id_Fk` (`user_id_Fk`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `user_name` (`user_name`),
  ADD KEY `role_id_FK` (`role_id_FK`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appoinment`
--
ALTER TABLE `appoinment`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appoinment`
--
ALTER TABLE `appoinment`
  ADD CONSTRAINT `appoinment_ibfk_1` FOREIGN KEY (`doc_id_FK`) REFERENCES `doctor` (`Id`),
  ADD CONSTRAINT `appoinment_ibfk_2` FOREIGN KEY (`user_id_FK`) REFERENCES `users` (`Id`);

--
-- Constraints for table `doctor`
--
ALTER TABLE `doctor`
  ADD CONSTRAINT `doctor_ibfk_1` FOREIGN KEY (`cat_id_FK`) REFERENCES `category` (`Id`),
  ADD CONSTRAINT `doctor_ibfk_2` FOREIGN KEY (`city_id_FK`) REFERENCES `cities` (`Id`),
  ADD CONSTRAINT `doctor_ibfk_3` FOREIGN KEY (`user_id_FK`) REFERENCES `users` (`Id`);

--
-- Constraints for table `patient`
--
ALTER TABLE `patient`
  ADD CONSTRAINT `patient_ibfk_1` FOREIGN KEY (`user_id_Fk`) REFERENCES `users` (`Id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id_FK`) REFERENCES `role` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
