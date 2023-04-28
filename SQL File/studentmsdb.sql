-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2022 at 08:41 PM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


--
-- Database: `sturecdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 9511706845, 'akshaymusale4@gmail.com', '555524', '2019-10-11 04:36:52');

-- --------------------------------------------------------

--
-- Table structure for table `tblclass`
--

CREATE TABLE `tblclass` (
  `ID` int(5) NOT NULL,
  `ClassName` varchar(50) DEFAULT NULL,
  `Section` varchar(20) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblclass`
--

INSERT INTO `tblclass` (`ID`, `ClassName`, `Section`, `CreationDate`) VALUES
(1, 'TYBCs', 'A', '2022-01-13 10:42:14'),
(2, 'TYBCs', 'B', '2022-01-13 10:42:35'),
(3, 'TYBCs', 'C', '2022-01-13 10:42:41'),
(4, 'SYBCs', 'A', '2022-01-13 10:42:47'),
(5, 'SYBCs', 'B', '2022-01-13 10:42:57'),
(6, 'SYBCs', 'C', '2022-01-13 10:43:04'),
(7, 'FYBCS', 'A', '2022-01-13 10:43:10'),
(8, 'FYBCS', 'B', '2022-01-13 10:43:15');


-- --------------------------------------------------------

--
-- Table structure for table `tblnotice`
--

CREATE TABLE `tblnotice` (
  `ID` int(5) NOT NULL,
  `NoticeTitle` mediumtext DEFAULT NULL,
  `ClassId` int(10) DEFAULT NULL,
  `NoticeMsg` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblnotice`
--
INSERT INTO `tblnotice` (`ID`, `NoticeTitle`, `ClassId`, `NoticeMsg`, `CreationDate`) VALUES
(2, 'Dates of practical exam', 3, 'visit google classroom for practical slips ', '2022-01-19 06:35:58'),
(3, 'Marks of internal exam', 2, 'Meet your class teacher for checking your marks', '2022-01-19 06:35:58'),
(4, 'project submission', 3, 'submit your projects till 18nd june', '2022-02-02 18:17:03'),
(5, 'Theory Exam', 8, 'Final theory exam will be conducted from 10Th June all the best', '2022-02-02 19:03:43');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About Us', '<div style=\"text-align: start;\"><font color=\"#7b8898\" face=\"Mercury SSm A, Mercury SSm B, Georgia, Times, Times New Roman, Microsoft YaHei New, Microsoft Yahei, ????, ??, SimSun, STXihei, ????, serif\"><span style=\"font-size: 26px;\">E-campus Management System provides a simple interface for 
maintenance of student and Teachers information. It can be used by 
educational institutes or colleges to maintain the records of students easily. 
The creation and management of accurate, up-to-date information regarding a 
students’ academic career is critically important in the university as well as 
colleges. E-campus Management System deals with all kind of student details, 
academic related reports, college details, course details, curriculum, batch 
details, placement details and other resource related details too. It tracks all 
the details of a student from the day one to the end of the course which can be 
used for all reporting purpose, progress in the course, completed semesters, 
years, coming semester year curriculum details, final exam result and all these 
will be available through a secure, online interface embedded in the college’s 
website.</span></font><br></div>', NULL, NULL, NULL),
(2, 'contactus', 'Contact Us', 'shivaji nagar,gangapur road,nashik', 'kthm@gmail.com', 7896541236, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpublicnotice`
--

CREATE TABLE `tblpublicnotice` (
  `ID` int(5) NOT NULL,
  `NoticeTitle` varchar(200) DEFAULT NULL,
  `NoticeMessage` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpublicnotice`
--

INSERT INTO `tblpublicnotice` (`ID`, `NoticeTitle`, `NoticeMessage`, `CreationDate`) VALUES
(1, 'Spectrum 2k22', 'participation fees 200rs', '2022-01-20 09:11:57'),
(2, 'Sports competition', 'Be present at gymkhana', '2022-02-02 19:04:10');

-- --------------------------------------------------------

--
-- Table structure for table `tblstudent`
--

CREATE TABLE `tblstudent` (
  `ID` int(10) NOT NULL,
  `StudentName` varchar(200) DEFAULT NULL,
  `StudentEmail` varchar(200) DEFAULT NULL,
  `StudentClass` varchar(100) DEFAULT NULL,
  `Gender` varchar(50) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `StuID` varchar(200) DEFAULT NULL,
  `FatherName` mediumtext DEFAULT NULL,
  `MotherName` mediumtext DEFAULT NULL,
  `ContactNumber` bigint(10) DEFAULT NULL,
  `Address` mediumtext DEFAULT NULL,
  `UserName` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `Image` varchar(200) DEFAULT NULL,
  `DateofAdmission` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tblstudent` (`ID`,`StudentName`,`StudentEmail`,`StudentClass`,`Gender`,`DOB`,`StuID`,`FatherName`, `MotherName`,`ContactNumber`,`Address`,`UserName`,`Password`,`Image`,`DateofAdmission`) VALUES
(1,'Shraddha more','shraddhamore068@gmail.com','TYBSc','Female','2001-11-06',45675,'manoj','renuka',7385404910,'sukena','more2001','smm222','IMG_20211028_090023.jpg','2022-01-19 06:35:5'),
(2,'Aishwarya sahane','aishnacs@gmail.com','TYBSc','Female','2001-03-17',45676,'namdeo','chhaya',8767889735,'mohadi','sahane2001','smm221','IMG_20211028_090023.jpg','2022-01-19 06:35:5'),
(3,'Chandrakant musale','musale2001@gmail.com','TYBSc','Male','2001-10-03',45677,'shantaram','manisha',4586296842,'nashik','musale2001','smm223','IMG_20211028_090023.jpg','2022-01-19 06:35:5'),
(4,'Akshay musale','akshaymusale4@gmail.com','SYBSc','Male','2001-06-17',45678,'Anil','surekha',8512396741,'parola','ak2001','smm224','IMG_20211028_090023.jpg','2022-01-19 06:35:5'),
(5,'Shrutika aher','shrutika@gmail.com','SYBSc','Female','2001-02-07',45679,'atul','kranti',7385404910,'deola','aher2001','smm225','IMG_20211028_090023.jpg','2022-01-19 06:35:5'),
(6,'Ajit jadhav','ajitjadhav8@gmail.com','TYBSc','Male','2001-08-10',45680,'ashok','kalpana',9767087568,'sukena','jadhav2001','smm226','IMG_20211028_090023.jpg','2022-01-19 06:35:5'),
(7,'Rushi bhandare','bhandare068@gmail.com','SYBSc','Male','2001-11-11',45681,'rahul','priyanka',8524696345,'ozar','priy2001','smm227','IMG_20211028_090023.jpg','2022-01-19 06:35:5'),
(8,'Abhishek more','abhimore068@gmail.com','FYBSc','Male','2002-08-06',45682,'manoj','renuka',8524569674,'sukena','abhi2001','smm228','IMG_20211028_090023.jpg','2022-01-19 06:35:5'),
(9,'Omkar sonawane','omkar068@gmail.com','SYBSc','Male','2001-05-14',45683,'nagesh','manisha',7898512396,'ahmedabad','sonawane2001','smm229','IMG_20211028_090023.jpg','2022-01-19 06:35:5'),
(10,'Manas Pagare','shraddhamore068@gmail.com','FYBSc','Male','2001-12-09',45684,'rahul','manasi',737414910,'nashik','pagare2001','smm230','IMG_20211028_090023.jpg','2022-01-19 06:35:5');


--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblclass`
--
ALTER TABLE `tblclass`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblnotice`
--
ALTER TABLE `tblnotice`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpublicnotice`
--
ALTER TABLE `tblpublicnotice`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblstudent`
--
ALTER TABLE `tblstudent`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblclass`
--
ALTER TABLE `tblclass`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblnotice`
--
ALTER TABLE `tblnotice`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpublicnotice`
--
ALTER TABLE `tblpublicnotice`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblstudent`
--
ALTER TABLE `tblstudent`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

