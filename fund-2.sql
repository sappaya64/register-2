-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 30, 2024 at 04:03 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fund`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `Patien` int(5) NOT NULL,
  `DoctorID` int(2) NOT NULL,
  `AppointmentID` int(4) NOT NULL,
  `infomation` varchar(200) NOT NULL,
  `Date` date NOT NULL,
  `Time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`Patien`, `DoctorID`, `AppointmentID`, `infomation`, `Date`, `Time`) VALUES
(8, 13, 1111, 'นัดถอนฟัน', '2023-01-06', '01:00:00'),
(9, 7, 1112, 'นัดอุดฟัน', '2023-01-07', '10:00:00'),
(14, 69, 1113, 'นัดตรวจช่องปาก', '2024-01-11', '09:00:00'),
(122, 13, 1114, 'นัดอุดฟัน', '2024-01-13', '02:00:00'),
(99999, 69, 1115, 'นัดดัดฟัน', '2024-01-14', '11:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `clinic`
--

CREATE TABLE `clinic` (
  `ClinicID` int(3) NOT NULL,
  `Cname` varchar(100) NOT NULL,
  `CAddress` varchar(100) NOT NULL,
  `CPhonenumber` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `clinic`
--

INSERT INTO `clinic` (`ClinicID`, `Cname`, `CAddress`, `CPhonenumber`) VALUES
(200, 'Fundclinic', '55', '0825252520');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `DoctorID` int(6) NOT NULL,
  `DFirstname` varchar(50) NOT NULL,
  `DLastname` varchar(50) NOT NULL,
  `Dage` int(3) NOT NULL,
  `Dsex` varchar(10) NOT NULL,
  `Dnation` varchar(20) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Education` varchar(50) NOT NULL,
  `PhoneNumber` varchar(10) NOT NULL,
  `Demail` varchar(50) NOT NULL,
  `RoleID` int(3) NOT NULL,
  `Exp` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`DoctorID`, `DFirstname`, `DLastname`, `Dage`, `Dsex`, `Dnation`, `Address`, `Education`, `PhoneNumber`, `Demail`, `RoleID`, `Exp`) VALUES
(7, 'ริค', 'ซานเชส', 72, 'ชาย', 'อเมริกา', '123 Main St', 'ปริญาเอก', '0551234901', 'rick@email.com', 100, '10 years experience'),
(13, 'อารอน', 'คอมมอน', 35, 'ชาย', 'ไทย', '13/46 ต.อรัญญิก อ.เมือง จ.พิษณุโลก', 'ปริญญาตรี มหาวิทยาลัยนเรศวร', '0852741963', 'farfaraway@gmail.com', 100, 'ทำงานที่ยุโรป10ปี'),
(69, 'ปาณิสรา', 'เดียวตระกูล', 29, 'หญิง', 'ไทย', '250/69 ต.ท่าทอง อ.เมือง จ.พิษณุโลก', 'ปริญญาตรี จุฬาลงกรณ์มหาวิทยาลัย', '0819876596', 'panisara@gmail.com', 100, 'ทำงานที่ America , England , France');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EmployeeID` int(6) NOT NULL,
  `RoleID` int(6) NOT NULL,
  `EFirstname` varchar(50) NOT NULL,
  `ELastname` varchar(50) NOT NULL,
  `Esex` varchar(10) NOT NULL,
  `Eage` int(3) NOT NULL,
  `ClinicID` int(3) NOT NULL,
  `Enation` varchar(20) NOT NULL,
  `EAddress` varchar(100) NOT NULL,
  `Ephonenumber` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EmployeeID`, `RoleID`, `EFirstname`, `ELastname`, `Esex`, `Eage`, `ClinicID`, `Enation`, `EAddress`, `Ephonenumber`) VALUES
(23, 101, 'ชนาพร', 'รุ่งทิพย์', 'หญิง', 45, 200, 'ไทย', '21/1  ต.ท่าโพิ์์ อ.เมือง จ.พิษณุโลก', '0987654321'),
(56, 102, 'อาเนีย', 'ฟอร์เจอร์', 'ชาย', 30, 200, 'หญิง', '125/24 ถนนดำริ ต.ในเมือง จ.พิษณุโลก', '022-292-22'),
(111, 102, 'คมสัน', 'มาแน่', 'ชาย', 50, 200, 'ไทย', '500/54 ถนนวังจันทร์ ต.ในเมือง จ.พิษณุโลก', '022-2222-2'),
(112, 102, 'ชาญวิทย์', 'ปากช่อง', 'ชาย', 27, 200, 'ไทย', '359/104 ต.ท่าโพธิ์ อ.เมือง จ.พิษณุโลก', '0845682254'),
(113, 101, 'พลาดล', 'หวานหวาน', 'ชาย', 40, 200, 'ไทย', '98/74 ต.หัวรอ อ.เมือง จ.พิษณุโลก', '0963741852'),
(100112, 102, 'มาศรี', 'มหาตาล', 'หญิง', 26, 200, 'ไทย', ' จ.พิษณุโลก', '0988907879');

-- --------------------------------------------------------

--
-- Table structure for table `patien`
--

CREATE TABLE `patien` (
  `id` int(10) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `urole` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `age` int(3) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `Poin` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `patien`
--

INSERT INTO `patien` (`id`, `firstname`, `lastname`, `email`, `password`, `urole`, `created_at`, `age`, `gender`, `nationality`, `phone_number`, `address`, `Poin`) VALUES
(3, 'sas', 'sas', 'zx@gmail.com', '$2y$10$0IitZxYzbDy/r3SP2/6TO.wAgmXSPrzFtJCpGQuBhUiCtbcC2BoUG', 'user', '2024-01-22 16:56:21', 45, 'Female', 'ไทย', NULL, 'พิษณุโลก', NULL),
(4, 'สมชาย', 'เท่เท่', 'cv@gmail.com', '$2y$10$oEHkl/PN.geAeGKjexezCOF7Eu10Dcyj6s8bsmfvH8IF/PIN6s61a', 'user', '2024-01-22 17:03:59', 56, 'Male', NULL, NULL, 'พิษณุโลก', NULL),
(5, 'สาชาย', 'เดก', 'bn@gmail.com', '$2y$10$RT8x7HUraOFQaf4FYHsgCutV80987Q3SGQlTMPi73J9Qusvv0cqTW', 'user', '2024-01-23 04:11:23', 76, 'Female', 'ลาว', '0897890987', 'พิจิตร', NULL),
(6, 'กาารกำ', 'หนด', 'as@gmail.com', '$2y$10$w92wUwnMlWeTvWlBgp.7VuBRq0NOrhCGFAW8BwDdmb5OfNAKzUwAC', 'user', '2024-01-23 04:14:23', 12, 'Male', NULL, NULL, 'พิจิตร', NULL),
(7, 'เป้', 'ปูเป้', 'qw@gmail.com', '$2y$10$9DF9X78tA7.1cII8z15IU.PV2fxyAL2jwL9AofwITFDziu2hfLP/q', 'user', '2024-01-23 04:23:57', 21, 'Male', NULL, '0956890779', 'พิจิตร', NULL),
(8, 'User', 'mart', 'user@gmail.com', '$2y$10$.CSKR/.0tCnZ3dz5UUvU/OGX.vLedgyhFxEY/Iopn0OaqWOPa0tPO', 'user', '2024-01-24 10:10:59', 21, 'ชาย', NULL, '6698947898', 'พิษณุโลก', NULL),
(9, 'หฟหฟห', 'หฟหฟหฟห', 'we@gmail.com', '$2y$10$ipSNaI7bp0Q1pICAgP5jh.1hbtmTisY0pwgeo.KCg1wA/mSlSlBhC', 'user', '2024-01-24 10:21:09', 21, 'ชาย', NULL, '0988909878', 'สุโขทัย', NULL),
(10, 'User03', 'uuu', 'user03@gmail.com', '$2y$10$PDVVWEJJkDU5mags3pxCTOJoaSXuILmIWcEYU66Mxw9/FjHDsQcqu', 'user', '2024-01-27 04:19:55', 54, 'หญิง', 'ไทย', '0898789876', 'สุโขทัย', NULL),
(11, 'adimn', 'พีท', 'adim@gmail.com', '$2y$10$Lp0kPhmt7AHtrqbULVS6d.O/kQn/yDlhKUuNfbgiBJjX6lWBHcujm', 'user', '2024-01-27 04:21:44', 21, 'ชาย', 'ลาว', '0897658498', 'พิจิตร', NULL),
(12, 'เพชร', 'กันหยัด', 'sad@gmail.com', '$2y$10$INY2.qsFyDKCqxpyRZe24eRDNfS/8p5g7yMMXRJDOV4FRGtyK9WV6', 'user', '2024-01-27 05:44:44', 33, 'ชาย', 'เวียดนาม', '0875674893', 'พิจิตร', '3000');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `PatientID` int(5) NOT NULL,
  `PFirstname` varchar(20) NOT NULL,
  `PLastname` varchar(20) NOT NULL,
  `PAge` int(3) NOT NULL,
  `PSex` varchar(10) NOT NULL,
  `PNation` varchar(20) NOT NULL,
  `PAddress` varchar(100) NOT NULL,
  `PPhonenumber` varchar(10) NOT NULL,
  `PEmail` varchar(50) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`PatientID`, `PFirstname`, `PLastname`, `PAge`, `PSex`, `PNation`, `PAddress`, `PPhonenumber`, `PEmail`, `Password`) VALUES
(8, 'เธียร', 'รอดกนก', 20, 'ชาย', 'ไทย', 'พิษณุโลก', '0123456789', 'fku@gmail.com', '123456789'),
(9, 'ธนดล', 'ทองดอนง้าว', 20, 'ชาย', 'ไทย', 'พิษณุโลก', '0804567777', 'nnon26@gmail.com', '999999999'),
(14, 'โกโจ', 'ซาโตรุ', 17, 'ชาย', 'ไทย', 'พิษณุโลก', '0129956789', 'ggu@gmail.com', '123456782'),
(122, 'นนท์', 'ธนนท์', 36, 'ชาย', 'ไทย', 'นครสวรรค์', '0123456781', 'nontannon@gmail.com', 'matamarai'),
(99999, 'ฟ่าง', 'สวยมาก', 23, 'หญิง', 'ไทย', 'America', '0819876596', 'fangfang@gmail.com', 'fanglovekay');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `ProductID` int(6) NOT NULL,
  `Productname` varchar(50) NOT NULL,
  `Description` varchar(50) NOT NULL,
  `Price` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ProductID`, `Productname`, `Description`, `Price`) VALUES
(4, 'ยาสีฟันสูตรกัญชา', 'แปรงไปลอยไป', 299),
(100, 'แปรงสีฟันขนช้าง', 'ทำให้หินปูนหลุดกระจาย', 999),
(102, 'ยาสิฟันเทพไท', 'ไม่แพงนะค่ะไม่แพงเลยคะ', 29),
(103, 'ไหมขัดฟัน', 'ช่วยทำความสะอาดระหว่างซอกฟันได้อย่างมีประสิทธิภาพ', 129),
(112, 'แปรงสีฟันสำหรับวัยชรา', 'เหมาะสำผู้สูงวัยที่ฟันไม่แข็งแรง', 109),
(123, 'น้ำยาดับกลิ่นปาก ปากดี', 'ใช้สำหรับับกลิ่นปาก', 150),
(155, 'น้ำยาบ้วนปากพลักซ์เกลือสมุนไพร', 'ลดกลิ่นปาก', 155),
(1003, 'ยาบ้วนปากเซนโซดาร์จ', 'ใช้นิดเดียวปากสะอาด', 89);

-- --------------------------------------------------------

--
-- Table structure for table `promotion`
--

CREATE TABLE `promotion` (
  `PromotionID` int(3) NOT NULL,
  `Promotionname` varchar(50) NOT NULL,
  `DiscountPercentage` int(2) NOT NULL,
  `Pdescription` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `promotion`
--

INSERT INTO `promotion` (`PromotionID`, `Promotionname`, `DiscountPercentage`, `Pdescription`) VALUES
(500, 'no', 0, 'ไม่ลดจ้า'),
(501, 'ลด10%', 10, 'ลด10%0จ่้า');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `ReviewID` int(5) NOT NULL,
  `PatientID` int(5) NOT NULL,
  `DoctorID` int(2) NOT NULL,
  `comment` varchar(50) NOT NULL,
  `rating` int(1) NOT NULL,
  `Rdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`ReviewID`, `PatientID`, `DoctorID`, `comment`, `rating`, `Rdate`) VALUES
(50000, 8, 7, 'ดีมาก', 5, '2023-07-23'),
(50001, 122, 13, 'หมอน่ารัก', 4, '2024-01-10');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `RoleID` int(6) NOT NULL,
  `Rolename` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`RoleID`, `Rolename`) VALUES
(100, 'หมอ'),
(101, 'พนักงานเก็บเงิน'),
(102, 'ผู้ช่วยหมอ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_booking`
--

CREATE TABLE `tbl_booking` (
  `no` int(11) NOT NULL,
  `table_id` int(11) NOT NULL,
  `booking_name` varchar(100) NOT NULL,
  `booking_date` date NOT NULL,
  `booking_time` time NOT NULL,
  `booking_phone` varchar(10) NOT NULL,
  `booking_staff` varchar(100) NOT NULL,
  `dateCreate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_booking`
--

INSERT INTO `tbl_booking` (`no`, `table_id`, `booking_name`, `booking_date`, `booking_time`, `booking_phone`, `booking_staff`, `dateCreate`) VALUES
(1, 2, 'sappaya', '2024-01-29', '21:23:00', '0989878987', 'พนง.', '2024-01-29 15:36:14');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_table`
--

CREATE TABLE `tbl_table` (
  `id` int(11) NOT NULL,
  `table_name` varchar(50) NOT NULL,
  `table_status` int(1) NOT NULL COMMENT '0 =ว่าง , 1 = จอง'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_table`
--

INSERT INTO `tbl_table` (`id`, `table_name`, `table_status`) VALUES
(1, 'A01', 1),
(2, 'A02', 1),
(3, 'A03', 0),
(4, 'A04', 0),
(5, 'A05', 1),
(6, 'B01', 0),
(7, 'B02', 0),
(8, 'B03', 0),
(9, 'B04', 0),
(10, 'B05', 0),
(11, 'C01', 0),
(12, 'C02', 0),
(13, 'C03', 0),
(14, 'C04', 0),
(15, 'C05', 0),
(16, 'D01', 0),
(17, 'D02', 0),
(18, 'D03', 0),
(19, 'D04', 0),
(20, 'D05', 0);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `TransactionID` int(7) NOT NULL,
  `PatientID` int(5) NOT NULL,
  `ProductID` int(6) NOT NULL,
  `ClinicID` int(3) NOT NULL,
  `PromotionID` int(3) NOT NULL,
  `Quantity` int(4) NOT NULL,
  `Transactiondate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`TransactionID`, `PatientID`, `ProductID`, `ClinicID`, `PromotionID`, `Quantity`, `Transactiondate`) VALUES
(45, 8, 100, 200, 500, 5, '2024-01-16'),
(156, 9, 103, 200, 500, 2, '2024-01-15'),
(1144, 14, 155, 200, 500, 1, '2024-01-14'),
(1145, 8, 102, 200, 500, 2, '2024-01-10'),
(1148, 122, 155, 200, 501, 10, '2023-10-15'),
(1150, 122, 155, 200, 501, 5, '2023-11-15'),
(1219, 122, 102, 200, 501, 21, '2023-09-11'),
(155155, 122, 155, 200, 501, 15, '2023-10-31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`AppointmentID`),
  ADD KEY `DoctorID` (`DoctorID`),
  ADD KEY `PatientID` (`Patien`);

--
-- Indexes for table `clinic`
--
ALTER TABLE `clinic`
  ADD PRIMARY KEY (`ClinicID`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`DoctorID`),
  ADD KEY `RoleID` (`RoleID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EmployeeID`),
  ADD KEY `ClinicID` (`ClinicID`),
  ADD KEY `RoleID` (`RoleID`);

--
-- Indexes for table `patien`
--
ALTER TABLE `patien`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`PatientID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ProductID`);

--
-- Indexes for table `promotion`
--
ALTER TABLE `promotion`
  ADD PRIMARY KEY (`PromotionID`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`ReviewID`),
  ADD KEY `PatientID` (`PatientID`),
  ADD KEY `DoctorID` (`DoctorID`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`RoleID`);

--
-- Indexes for table `tbl_booking`
--
ALTER TABLE `tbl_booking`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `tbl_table`
--
ALTER TABLE `tbl_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`TransactionID`),
  ADD KEY `PatientID` (`PatientID`),
  ADD KEY `ProductID` (`ProductID`),
  ADD KEY `PromotionID` (`PromotionID`),
  ADD KEY `ClinicID` (`ClinicID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `patien`
--
ALTER TABLE `patien`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_booking`
--
ALTER TABLE `tbl_booking`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_table`
--
ALTER TABLE `tbl_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `appointment_ibfk_1` FOREIGN KEY (`Patien`) REFERENCES `patient` (`PatientID`),
  ADD CONSTRAINT `appointment_ibfk_2` FOREIGN KEY (`DoctorID`) REFERENCES `doctor` (`DoctorID`);

--
-- Constraints for table `doctor`
--
ALTER TABLE `doctor`
  ADD CONSTRAINT `doctor_ibfk_1` FOREIGN KEY (`RoleID`) REFERENCES `role` (`RoleID`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`ClinicID`) REFERENCES `clinic` (`ClinicID`),
  ADD CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`RoleID`) REFERENCES `role` (`RoleID`);

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`PatientID`) REFERENCES `patient` (`PatientID`),
  ADD CONSTRAINT `review_ibfk_2` FOREIGN KEY (`DoctorID`) REFERENCES `doctor` (`DoctorID`);

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`PatientID`) REFERENCES `patient` (`PatientID`),
  ADD CONSTRAINT `transaction_ibfk_2` FOREIGN KEY (`ProductID`) REFERENCES `product` (`ProductID`),
  ADD CONSTRAINT `transaction_ibfk_3` FOREIGN KEY (`PromotionID`) REFERENCES `promotion` (`PromotionID`),
  ADD CONSTRAINT `transaction_ibfk_4` FOREIGN KEY (`ClinicID`) REFERENCES `clinic` (`ClinicID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
