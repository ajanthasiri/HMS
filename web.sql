-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2021 at 05:06 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`) VALUES
('admin', 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `patid` text NOT NULL,
  `docid` text NOT NULL,
  `appno` varchar(20) NOT NULL,
  `btime` time NOT NULL,
  `bdate` date NOT NULL,
  `age` int(11) NOT NULL,
  `area` text NOT NULL,
  `city` text NOT NULL,
  `state` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`patid`, `docid`, `appno`, `btime`, `bdate`, `age`, `area`, `city`, `state`) VALUES
('Pat1', 'doc1', '1', '22:43:00', '2021-04-20', 20, 'tissa para', 'monaragala', 'sri lanka'),
('Pat2', 'doc2', '2', '06:17:00', '2021-05-01', 20, 'tissa para', 'monaragala', 'sri lanka'),
('Pat2', 'doc2', '3', '06:17:00', '2021-05-01', 20, 'tissa para', 'monaragala', 'sri lanka');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `Doctor_Id` varchar(20) NOT NULL,
  `Doctor_Name` text NOT NULL,
  `Doctor_Email` text NOT NULL,
  `password` text NOT NULL,
  `Gender` text NOT NULL,
  `Age` int(11) NOT NULL,
  `specialization` text NOT NULL,
  `Address` text NOT NULL,
  `Salary` int(11) NOT NULL,
  `Qualfications` text NOT NULL,
  `Registration_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`Doctor_Id`, `Doctor_Name`, `Doctor_Email`, `password`, `Gender`, `Age`, `specialization`, `Address`, `Salary`, `Qualfications`, `Registration_date`) VALUES
('Doc2', 'ganidu', 'isuru@gmail.com', '11', 'male', 23, 'vog', 'mathara', 45000, 'mbbs', '2021-05-01');

-- --------------------------------------------------------

--
-- Table structure for table `patadmit`
--

CREATE TABLE `patadmit` (
  `id` int(11) NOT NULL,
  `patid` varchar(20) NOT NULL,
  `patname` text NOT NULL,
  `docid` varchar(20) NOT NULL,
  `docname` text NOT NULL,
  `wardno` varchar(20) NOT NULL,
  `bedno` varchar(20) NOT NULL,
  `addate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patadmit`
--

INSERT INTO `patadmit` (`id`, `patid`, `patname`, `docid`, `docname`, `wardno`, `bedno`, `addate`) VALUES
(3, 'Pat2', 'nisal', 'doc2', 'ganidu', '5', '2', '2021-05-01');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `Patient_Id` varchar(20) NOT NULL,
  `Patient_NIC` varchar(30) NOT NULL,
  `Patient_Name` text NOT NULL,
  `Patient_Contact_Number` text NOT NULL,
  `Address` text NOT NULL,
  `DOB` date NOT NULL,
  `Gender` text NOT NULL,
  `Patient_Chornic_diseases` text NOT NULL,
  `Blood_Group` text NOT NULL,
  `Civil_Status` text NOT NULL,
  `Guardian_Name` text NOT NULL,
  `Guardian_ContactNo` text NOT NULL,
  `Guardian_address` text NOT NULL,
  `Relationship` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`Patient_Id`, `Patient_NIC`, `Patient_Name`, `Patient_Contact_Number`, `Address`, `DOB`, `Gender`, `Patient_Chornic_diseases`, `Blood_Group`, `Civil_Status`, `Guardian_Name`, `Guardian_ContactNo`, `Guardian_address`, `Relationship`) VALUES
('pat2', '97000000V', 'nisal', '0141444655', 'jaffna', '2021-01-20', 'male', 'covid', 'O+', 'indian', 'nisham', '0552211447', 'monaragala', 'brother');

-- --------------------------------------------------------

--
-- Table structure for table `pres`
--

CREATE TABLE `pres` (
  `id` int(20) NOT NULL,
  `presno` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `docid` varchar(20) NOT NULL,
  `docname` text NOT NULL,
  `patid` varchar(20) NOT NULL,
  `patname` text NOT NULL,
  `medicines` text NOT NULL,
  `nodays` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pres`
--

INSERT INTO `pres` (`id`, `presno`, `date`, `docid`, `docname`, `patid`, `patname`, `medicines`, `nodays`) VALUES
(1, 'p1', '2021-04-08', 'doc1', 'sunil', 'Pat1', 'ganidu', 'parasitimol', 5),
(9, 'p1', '2021-05-02', 'doc2', 'ganidu', 'Pat1', 'sunil', 'parasitimol', 5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(20) NOT NULL,
  `roll` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `roll`, `password`) VALUES
('admin', 'admin', 'admin'),
('cashier', 'cashier', 'cashier'),
('Doc1', 'doctor', '11'),
('Doc2', 'doctor', '11'),
('doc6', 'doctor', 'doc6'),
('receiptionist', 'receiptionist', 'rec');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`appno`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`Doctor_Id`);

--
-- Indexes for table `patadmit`
--
ALTER TABLE `patadmit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`Patient_Id`);

--
-- Indexes for table `pres`
--
ALTER TABLE `pres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `patadmit`
--
ALTER TABLE `patadmit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pres`
--
ALTER TABLE `pres`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
