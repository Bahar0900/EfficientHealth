-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2023 at 09:09 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `efficient_health`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `AdminId` int(11) NOT NULL,
  `Role` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`AdminId`, `Role`) VALUES
(6, 'Security A'),
(10, 'Applicatio'),
(22, '3button');

-- --------------------------------------------------------

--
-- Table structure for table `disease`
--

CREATE TABLE `disease` (
  `PatientId` int(11) NOT NULL,
  `Disease` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `disease`
--

INSERT INTO `disease` (`PatientId`, `Disease`) VALUES
(1, 'Flu'),
(1, 'Headache'),
(2, 'Diabetes'),
(2, 'Hypertension'),
(3, 'Common Cold'),
(4, 'Allergies'),
(4, 'Asthma'),
(5, 'Arthritis'),
(6, 'Migraine'),
(7, 'COVID-19'),
(8, 'Depression'),
(9, 'Anxiety'),
(9, 'Insomnia'),
(10, 'Back Pain'),
(11, 'Obesity'),
(12, 'Gastritis'),
(13, 'Heartburn'),
(13, 'Irritable Bowel Syndrome'),
(14, 'Chronic Fatigue Syndrome'),
(15, 'Dengue'),
(21, ''),
(22, '4'),
(23, '4'),
(24, '4'),
(26, '4'),
(27, '4'),
(28, '4');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `DoctorId` int(11) NOT NULL,
  `Specialization` varchar(255) DEFAULT NULL,
  `LicenseNumber` varchar(20) DEFAULT NULL,
  `AppointmentSchedule` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`DoctorId`, `Specialization`, `LicenseNumber`, `AppointmentSchedule`) VALUES
(2, 'Cardiologist', 'DOC12345', 'Monday 9:00 AM - 12:00 PM, Wednesday 1:00 PM - 4:00 PM, Friday 10:00 AM - 1:00 PM'),
(4, 'Orthopedic Surgeon', 'DOC23456', 'Tuesday 10:00 AM - 1:00 PM, Thursday 2:00 PM - 5:00 PM, Saturday 9:00 AM - 12:00 PM'),
(5, 'Pediatrician', 'DOC34567', 'Monday 2:00 PM - 5:00 PM, Wednesday 9:00 AM - 12:00 PM, Friday 2:00 PM - 5:00 PM'),
(7, 'Dermatologist', 'DOC45678', 'Tuesday 9:00 AM - 12:00 PM, Thursday 1:00 PM - 4:00 PM, Saturday 10:00 AM - 1:00 PM'),
(9, 'Ophthalmologist', 'DOC56789', 'Monday 1:00 PM - 4:00 PM, Wednesday 10:00 AM - 1:00 PM, Friday 1:00 PM - 4:00 PM'),
(11, 'Psychiatrist', 'DOC67890', 'Tuesday 2:00 PM - 5:00 PM, Thursday 9:00 AM - 12:00 PM, Saturday 2:00 PM - 5:00 PM'),
(12, 'Gynecologist', 'DOC78901', 'Monday 10:00 AM - 1:00 PM, Wednesday 2:00 PM - 5:00 PM, Friday 9:00 AM - 12:00 PM'),
(24, 'neurologist', '44', '44');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EmployeeId` int(11) NOT NULL,
  `First_Name` varchar(255) DEFAULT NULL,
  `Sur_Name` varchar(255) DEFAULT NULL,
  `Salary` int(11) DEFAULT NULL,
  `SupervisorId` int(11) DEFAULT NULL,
  `State` varchar(255) DEFAULT NULL,
  `Street` varchar(255) DEFAULT NULL,
  `Country` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EmployeeId`, `First_Name`, `Sur_Name`, `Salary`, `SupervisorId`, `State`, `Street`, `Country`) VALUES
(2, 'Jane', 'Smith', 50000, 1, 'New York', '456 Oak St', 'USA'),
(4, 'Alice', 'Williams', 48000, 2, 'Florida', '567 Elm St', 'USA'),
(5, 'Charlie', 'Brown', 30000, 4, 'California', '234 Cedar St', 'USA'),
(6, 'Eva', 'Miller', 55000, 1, 'New York', '890 Maple St', 'USA'),
(7, 'David', 'Wilson', 52000, 2, 'Florida', '678 Birch St', 'USA'),
(9, 'Frank', 'Thomas', 47000, 1, 'California', '901 Pine St', 'USA'),
(10, 'Sarah', 'Anderson', 32000, 2, 'New York', '567 Cedar St', 'USA'),
(11, 'Lily', 'Wilson', 55000, 4, 'New York', '890 Maple St', 'USA'),
(12, 'Andrew', 'Jones', 52000, 2, 'Florida', '678 Birch St', 'USA'),
(13, 'Sophia', 'Miller', 42000, 3, 'Texas', '345 Oak St', 'USA'),
(16, 'Mason', 'Brown', 60000, 1, 'Texas', '234 Oak St', 'USA'),
(17, 'Ava', 'Johnson', 48000, 2, 'California', '789 Elm St', 'USA'),
(18, 'Logan', 'Davis', 50000, 3, 'Florida', '345 Cedar St', 'USA'),
(19, 'Chloe', 'Thomas', 35000, 1, 'New York', '567 Pine St', 'USA'),
(20, 'Ethan', 'Clark', 58000, 5, 'Texas', '890 Cedar St', 'USA'),
(21, 'Sagor', 'Chowdhury', 5, 1, 'ctg', 'potenga', 'bd'),
(22, 'Abul', 'Hasnat', 15, 4, 'ctg', 'nondonkanon', 'bd'),
(23, 'Abir', 'Brown', 10000, 4, 'California', 'USA', '234 Cedar St'),
(24, 'sir', 'molla', 2222, 3, 'hariana', 'govind', 'India');

-- --------------------------------------------------------

--
-- Table structure for table `employeephonenumber`
--

CREATE TABLE `employeephonenumber` (
  `EmployeeId` int(11) NOT NULL,
  `PhoneNumber` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employeephonenumber`
--

INSERT INTO `employeephonenumber` (`EmployeeId`, `PhoneNumber`) VALUES
(2, 1822334455),
(4, 1544556677),
(5, 1655667788),
(6, 1766778899),
(7, 1877889900),
(9, 1599001122),
(10, 1600112233),
(11, 1711223355),
(12, 1822334466),
(13, 1933445577),
(16, 1766778800),
(17, 1877889911),
(18, 1988990022),
(19, 1599001133),
(20, 1600112244);

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `PatientId` int(11) NOT NULL,
  `TestName` varchar(30) NOT NULL,
  `TestResult` varchar(30) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`PatientId`, `TestName`, `TestResult`, `Date`) VALUES
(1, 'Blood Pressure', '120/80', '2023-01-10'),
(1, 'Blood Sugar', '90', '2023-02-15'),
(1, 'Cholesterol', '180', '2023-03-20'),
(2, 'Hemoglobin', '14', '2023-04-25'),
(3, 'Liver Enzymes', '45', '2023-06-05'),
(3, 'Thyroid Function', 'Normal', '2023-05-30'),
(4, 'Electrocardiogram', 'Normal', '2023-07-10'),
(4, 'Kidney Function', 'Normal', '2023-08-15'),
(5, 'Complete Blood Count', 'Normal', '2023-09-20'),
(5, 'diabatys', 'positive', '2023-11-29'),
(5, 'sugar', 'negative', '2023-11-29'),
(6, 'Blood Pressure', '130/70', '2023-12-05'),
(6, 'Electrocardiogram', 'Normal', '2023-11-30'),
(6, 'Urine Analysis', 'Normal', '2023-10-25'),
(7, 'Allergy Test', 'Positive', '2024-02-15'),
(7, 'Cancer Markers', 'Negative', '2024-01-10'),
(8, 'Bone Density Scan', 'Normal', '2024-03-20'),
(9, 'Blood Pressure', '130/85', '2024-04-25'),
(9, 'Blood Sugar', '95', '2024-05-30'),
(10, 'Cholesterol', '160', '2024-06-05'),
(10, 'Hemoglobin', '13', '2024-07-10'),
(11, 'Liver Enzymes', '40', '2024-09-20'),
(11, 'Thyroid Function', 'Normal', '2024-08-15'),
(12, 'Kidney Function', 'Normal', '2024-11-30'),
(12, 'Vitamin D', '30', '2023-07-10'),
(13, 'Blood Sugar', '100', '2024-02-15'),
(13, 'Complete Blood Count', 'Normal', '2024-12-05'),
(27, 'Melitus', 'positive', '2023-12-02');

-- --------------------------------------------------------

--
-- Table structure for table `nurse`
--

CREATE TABLE `nurse` (
  `NurseId` int(11) NOT NULL,
  `Certification` varchar(255) DEFAULT NULL,
  `Experience` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nurse`
--

INSERT INTO `nurse` (`NurseId`, `Certification`, `Experience`) VALUES
(2, 'SSC', '1'),
(16, 'Certified Nursing Assistant', '2 years'),
(17, 'Critical Care Nurse', '7 years'),
(18, 'Pediatric Nurse', '4 years'),
(19, 'Surgical Nurse', '6 years'),
(20, 'Emergency Room Nurse', '8 years'),
(21, 'ssc', '5');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `PatientId` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Date_of_Birth` date DEFAULT NULL,
  `Gender` char(10) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `State` varchar(255) DEFAULT NULL,
  `Street` varchar(255) DEFAULT NULL,
  `Country` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`PatientId`, `Name`, `Date_of_Birth`, `Gender`, `Email`, `State`, `Street`, `Country`) VALUES
(1, 'Zoe Johnson', '1990-05-15', 'Female', 'zoe.johnson@example.com', 'California', '123 Main St', 'USA'),
(2, 'Elijah Smith', '1985-08-22', 'Male', 'elijah.smith@example.com', 'New York', '456 Oak St', 'USA'),
(3, 'Mia Brown', '1978-11-10', 'Female', 'mia.brown@example.com', 'Texas', '789 Pine St', 'USA'),
(4, 'Liam Davis', '1992-03-25', 'Male', 'liam.davis@example.com', 'Florida', '567 Elm St', 'USA'),
(5, 'Ava Wilson', '1980-07-18', 'Female', 'ava.wilson@example.com', 'California', '234 Cedar St', 'USA'),
(6, 'Noah Taylor', '1987-09-08', 'Male', 'noah.taylor@example.com', 'New York', '890 Maple St', 'USA'),
(7, 'Sophia Clark', '1982-02-14', 'Female', 'sophia.clark@example.com', 'Florida', '678 Birch St', 'USA'),
(8, 'Jackson White', '1995-06-30', 'Male', 'jackson.white@example.com', 'Texas', '345 Oak St', 'USA'),
(9, 'Emma Martin', '1975-12-03', 'Female', 'emma.martin@example.com', 'California', '901 Pine St', 'USA'),
(10, 'Liam Harris', '1988-04-17', 'Male', 'liam.harris@example.com', 'New York', '567 Cedar St', 'USA'),
(11, 'Ava Turner', '1993-10-20', 'Female', 'ava.turner@example.com', 'Texas', '234 Oak St', 'USA'),
(12, 'Oliver Baker', '1981-01-08', 'Male', 'oliver.baker@example.com', 'California', '789 Elm St', 'USA'),
(13, 'Sophia Miller', '1997-07-12', 'Female', 'sophia.miller@example.com', 'Florida', '345 Cedar St', 'USA'),
(14, 'Jackson Smith', '1979-04-05', 'Male', 'jackson.smith@example.com', 'New York', '567 Pine St', 'USA'),
(15, 'Emma Anderson', '1989-11-28', 'Female', 'emma.anderson@example.com', 'Texas', '890 Cedar St', 'USA'),
(16, 'Liam Brown', '1983-08-14', 'Male', 'liam.brown@example.com', 'California', '234 Maple St', 'USA'),
(17, 'Ava Johnson', '1991-02-17', 'Female', 'ava.johnson@example.com', 'Florida', '789 Oak St', 'USA'),
(18, 'Oliver Davis', '1976-06-09', 'Male', 'oliver.davis@example.com', 'New York', '456 Pine St', 'USA'),
(19, 'Sophia Thomas', '1984-09-30', 'Female', 'sophia.thomas@example.com', 'Texas', '901 Cedar St', 'USA'),
(20, 'Liam Clark', '1994-03-22', 'Male', 'liam.clark@example.com', 'California', '567 Maple St', 'USA'),
(21, 'Sojiba', '2025-12-06', 'Female', 'sojiv@gmail.com', 'Patenga', 'Sea beach', 'Bangladesh'),
(22, 'Sagor', '2004-12-05', 'Male', 'sagor@gmail.com', 'Patenga', 'Sea Beach', 'Bangladesh'),
(23, 'hasnat', '2001-12-05', 'Male', 'hasnat@gmail.com', 'BoalKhali', 'Gumdandi', 'Bangladesh'),
(24, 'sowrav', '2023-12-06', 'Female', 's@gmail,com', 'raozan', 'noapara', 'India'),
(25, 'Adid', '2023-08-07', 'Male', 'a@gmail.com', 'Cuet', 'SRH', 'Bangladesh'),
(26, 'Rashfi', '1195-12-01', 'Female', 'r@gmail.com', 'CTG', 'maharastro', 'India'),
(27, 'Ena', '2001-12-01', 'Female', 'ena@gmail.com', 'Ctg', 'CityCollege', 'Bangladesh'),
(28, 'Esnat', '2001-05-12', 'Female', 'ena@gmail.com', 'BoalKhali', 'Sadman Nagar', 'Bangladesh');

-- --------------------------------------------------------

--
-- Table structure for table `patientbill`
--

CREATE TABLE `patientbill` (
  `BillId` int(11) NOT NULL,
  `BillAmount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patientbill`
--

INSERT INTO `patientbill` (`BillId`, `BillAmount`) VALUES
(1, 1200),
(2, 500),
(4, 1200),
(12, 1200),
(13, 1200),
(26, 1200),
(27, 1200);

-- --------------------------------------------------------

--
-- Table structure for table `patientphonenumber`
--

CREATE TABLE `patientphonenumber` (
  `PatientId` int(11) NOT NULL,
  `PhoneNumber` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patientphonenumber`
--

INSERT INTO `patientphonenumber` (`PatientId`, `PhoneNumber`) VALUES
(1, 1712345678),
(2, 1812345678),
(3, 1912345678),
(4, 1512345678),
(5, 1612345678),
(6, 1712345679),
(7, 1812345679),
(8, 1912345679),
(9, 1512345679),
(10, 1612345679),
(11, 1712345680),
(12, 1812345680),
(13, 1912345680),
(14, 1512345680),
(15, 1612345680),
(16, 1712345681),
(17, 1812345681),
(18, 1912345681),
(19, 1512345681),
(20, 1612345681),
(21, 788888),
(22, 1882783495),
(23, 1554411224),
(24, 1111111111),
(26, 123467869),
(27, 1234567869),
(28, 1882783495);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `RoomId` int(11) NOT NULL,
  `PatientId` int(11) NOT NULL,
  `RoomCost` int(11) DEFAULT 1200,
  `RoomType` varchar(255) DEFAULT NULL,
  `Building` varchar(255) DEFAULT NULL,
  `Floor` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`RoomId`, `PatientId`, `RoomCost`, `RoomType`, `Building`, `Floor`) VALUES
(3, 27, 1200, 'ICU', 'Chemistry', '2'),
(4, 12, 1200, 'Normal', 'Physics', '1'),
(5, 26, 1000, 'ICU', 'Physics', '2'),
(7, 4, 1000, 'ICU', 'Phsyology', '1'),
(101, 1, 1200, 'Single', 'A', '2'),
(102, 6, 1200, 'Double', 'B', '1'),
(103, 14, 1200, 'Suite', 'C', '3'),
(104, 5, 1200, 'Single', 'A', '2'),
(105, 8, 1200, 'Double', 'B', '1'),
(106, 10, 1200, 'Suite', 'C', '3'),
(107, 11, 1200, 'Single', 'A', '2'),
(108, 4, 1200, 'Double', 'B', '1'),
(109, 18, 1200, 'Suite', 'C', '3'),
(110, 6, 1200, 'ICU', 'A', '2');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `ServiceId` int(11) NOT NULL,
  `ServiceName` varchar(30) DEFAULT NULL,
  `ServiceCost` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`ServiceId`, `ServiceName`, `ServiceCost`) VALUES
(1, 'Appointment', 1200),
(2, 'room', 500),
(3, 'Pathology Test', 500);

-- --------------------------------------------------------

--
-- Table structure for table `servicegiven`
--

CREATE TABLE `servicegiven` (
  `ServiceId` int(11) NOT NULL,
  `PatientId` int(11) NOT NULL,
  `BillId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `servicegiven`
--

INSERT INTO `servicegiven` (`ServiceId`, `PatientId`, `BillId`) VALUES
(1, 1, 1),
(2, 1, 1),
(1, 2, 2),
(1, 4, 4),
(2, 4, 4),
(1, 13, 13),
(2, 26, 26),
(1, 27, 27),
(2, 27, 27);

-- --------------------------------------------------------

--
-- Table structure for table `treatment`
--

CREATE TABLE `treatment` (
  `DoctorId` int(11) NOT NULL,
  `PatientId` int(11) NOT NULL,
  `Diagnosis` varchar(30) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `treatment`
--

INSERT INTO `treatment` (`DoctorId`, `PatientId`, `Diagnosis`, `Date`) VALUES
(4, 2, 'Diabetes', '2023-04-25'),
(4, 9, 'Back Pain', '2023-09-20'),
(4, 10, 'Cholesterol', '2024-02-15'),
(4, 26, 'Headache', '1195-12-01'),
(4, 28, 'Headache', '2001-05-12'),
(5, 4, 'Hypertension', '2023-03-20'),
(5, 13, 'Allergies', '2024-01-10'),
(5, 14, 'Anxiety', '2023-08-15'),
(11, 7, 'Chronic Fatigue Syndrome', '2023-12-05'),
(11, 8, 'Depression', '2023-07-10'),
(11, 12, 'Gastritis', '2023-02-15'),
(12, 5, 'Headache', '2024-03-20'),
(12, 11, 'Obesity', '2023-05-30'),
(12, 15, 'Insomnia', '2023-10-25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`AdminId`);

--
-- Indexes for table `disease`
--
ALTER TABLE `disease`
  ADD PRIMARY KEY (`PatientId`,`Disease`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`DoctorId`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EmployeeId`);

--
-- Indexes for table `employeephonenumber`
--
ALTER TABLE `employeephonenumber`
  ADD PRIMARY KEY (`EmployeeId`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`PatientId`,`TestName`,`TestResult`,`Date`);

--
-- Indexes for table `nurse`
--
ALTER TABLE `nurse`
  ADD PRIMARY KEY (`NurseId`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`PatientId`);

--
-- Indexes for table `patientbill`
--
ALTER TABLE `patientbill`
  ADD PRIMARY KEY (`BillId`);

--
-- Indexes for table `patientphonenumber`
--
ALTER TABLE `patientphonenumber`
  ADD PRIMARY KEY (`PatientId`,`PhoneNumber`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`RoomId`),
  ADD KEY `room_ibfk_1` (`PatientId`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`ServiceId`);

--
-- Indexes for table `servicegiven`
--
ALTER TABLE `servicegiven`
  ADD PRIMARY KEY (`PatientId`,`ServiceId`,`BillId`),
  ADD KEY `servicegiven_ibfk_2` (`ServiceId`),
  ADD KEY `servicegiven_ibfk_3` (`BillId`);

--
-- Indexes for table `treatment`
--
ALTER TABLE `treatment`
  ADD PRIMARY KEY (`DoctorId`,`PatientId`,`Diagnosis`,`Date`),
  ADD KEY `treatment_ibfk_2` (`PatientId`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`AdminId`) REFERENCES `employee` (`EmployeeId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `disease`
--
ALTER TABLE `disease`
  ADD CONSTRAINT `disease_ibfk_1` FOREIGN KEY (`PatientId`) REFERENCES `patient` (`PatientId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `doctor`
--
ALTER TABLE `doctor`
  ADD CONSTRAINT `doctor_ibfk_1` FOREIGN KEY (`DoctorId`) REFERENCES `employee` (`EmployeeId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `employeephonenumber`
--
ALTER TABLE `employeephonenumber`
  ADD CONSTRAINT `employeephonenumber_ibfk_1` FOREIGN KEY (`EmployeeId`) REFERENCES `employee` (`EmployeeId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `log`
--
ALTER TABLE `log`
  ADD CONSTRAINT `log_ibfk_1` FOREIGN KEY (`PatientId`) REFERENCES `patient` (`PatientId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `nurse`
--
ALTER TABLE `nurse`
  ADD CONSTRAINT `nurse_ibfk_1` FOREIGN KEY (`NurseId`) REFERENCES `employee` (`EmployeeId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `patientphonenumber`
--
ALTER TABLE `patientphonenumber`
  ADD CONSTRAINT `patientphonenumber_ibfk_1` FOREIGN KEY (`PatientId`) REFERENCES `patient` (`PatientId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `room_ibfk_1` FOREIGN KEY (`PatientId`) REFERENCES `patient` (`PatientId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `servicegiven`
--
ALTER TABLE `servicegiven`
  ADD CONSTRAINT `servicegiven_ibfk_1` FOREIGN KEY (`PatientId`) REFERENCES `patient` (`PatientId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `servicegiven_ibfk_2` FOREIGN KEY (`ServiceId`) REFERENCES `service` (`ServiceId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `servicegiven_ibfk_3` FOREIGN KEY (`BillId`) REFERENCES `patientbill` (`BillId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `treatment`
--
ALTER TABLE `treatment`
  ADD CONSTRAINT `treatment_ibfk_2` FOREIGN KEY (`PatientId`) REFERENCES `patient` (`PatientId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `treatment_ibfk_8` FOREIGN KEY (`DoctorId`) REFERENCES `doctor` (`DoctorId`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
