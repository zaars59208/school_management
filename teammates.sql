-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2023 at 08:26 AM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `teammates`
--

-- --------------------------------------------------------

--
-- Table structure for table `choices`
--

CREATE TABLE `choices` (
  `id` int(11) NOT NULL,
  `Question_no` int(11) NOT NULL,
  `is_correct` int(11) NOT NULL,
  `text` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `choices`
--

INSERT INTO `choices` (`id`, `Question_no`, `is_correct`, `text`) VALUES
(1, 1, 1, 'Hazrat Abu Bakar (R.A)'),
(2, 1, 0, 'Hazrat Omar (R.A)'),
(3, 2, 1, 'Hazrat Omar (R.A)'),
(4, 2, 0, 'Hazrat Usman Ghani (R.A)'),
(5, 2, 0, 'Hazrat Ali (R.A)'),
(6, 2, 0, 'Hazrat Imam Hussain (R.A)'),
(7, 1, 0, 'Hazrat Abu  Talha (R.A)'),
(8, 1, 0, 'Hazrat Zaid (R.A)'),
(9, 3, 0, 'Hazrat Abu Bakar (R.A)'),
(10, 3, 0, 'Hazrat Omar (R.A)'),
(11, 3, 1, 'Hazrat Ali (R.A)'),
(12, 3, 0, 'Hazrat Imam Hussain (R.A)');

-- --------------------------------------------------------

--
-- Table structure for table `personal_record`
--

CREATE TABLE `personal_record` (
  `id` int(11) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `user_email` varchar(15) NOT NULL,
  `user_gender` varchar(10) NOT NULL,
  `user_address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `personal_record`
--

INSERT INTO `personal_record` (`id`, `user_id`, `user_name`, `user_email`, `user_gender`, `user_address`) VALUES
(6, '3621-9858795', 'Uzma Khan', 'Ansari@hotmail.', '', 'BWP'),
(7, '3621-9858795', 'Hassan Khan', 'Ansari@hotmail.', '', 'BWP'),
(8, '3621-9858795', 'Uzma Khan', 'Ansari@hotmail.', '', 'BWP'),
(9, '4', 'Uzma Khan', 'sajidali@gmail.', '', 'Chashtian'),
(10, '1', 'Ali', 'idalerAli@gmail', '', 'Chashtian'),
(11, '9999', 'Frank', 'frank@gmail.com', '', 'UK');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `Question_no` int(11) NOT NULL,
  `Text` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `Question_no`, `Text`) VALUES
(1, 1, 'The Firs Caliph of Islam is ___ .'),
(2, 2, 'The second Caliph of Islam is ___.'),
(3, 3, 'The third Caliph of Islam is ___.');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` varchar(30) NOT NULL,
  `name` varchar(50) NOT NULL,
  `father_name` varchar(30) NOT NULL,
  `Email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `name`, `father_name`, `Email`) VALUES
('1', '', '', ''),
('1', 'Ali', 'Malik', 'idalerali@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `auto_Id` int(11) NOT NULL,
  `id` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teammembers`
--

CREATE TABLE `teammembers` (
  `ID` int(11) NOT NULL,
  `member_id` varchar(30) NOT NULL,
  `PassWord` varchar(30) NOT NULL,
  `Name` text NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Contact` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teammembers`
--

INSERT INTO `teammembers` (`ID`, `member_id`, `PassWord`, `Name`, `Email`, `Contact`) VALUES
(1, 'TM10001', 'freewebdevelopment', 'Dr. Malik Daler Ali Awan', 'idalerali@gmail.com', '+923049414939'),
(2, 'TM10002', 'SanaMano', 'Sana Malik', 'idalerali@gmail.com', '+923049414939'),
(3, 'TM10003', 'Meerab', 'Iqra Safder', 'teammates@gmail.com', '+0923049878958');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `ID` int(11) NOT NULL,
  `user_id` varchar(10) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`ID`, `user_id`, `name`) VALUES
(87858, '1', 'dfasdf'),
(87859, '1212', 'Dr. Nadeem Akhtar'),
(87860, '1212', 'Dr. Nadeem Akhtar'),
(87861, '1212', 'Dr. Nadeem Akhtar'),
(87862, '1212', 'Dr. Nadeem Akhtar'),
(87863, '1212', 'Dr. Nadeem Akhtar'),
(87864, '1212', 'Dr. Nadeem Akhtar'),
(87865, '1212', 'Dr. Nadeem Akhtar'),
(87866, '', ''),
(87867, '', ''),
(87868, '', ''),
(87869, '', ''),
(87870, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `uni`
--

CREATE TABLE `uni` (
  `id` int(20) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `father_name` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `cninc` varchar(15) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(15) NOT NULL,
  `confirm_password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uni`
--

INSERT INTO `uni` (`id`, `first_name`, `last_name`, `father_name`, `gender`, `email`, `phone`, `city`, `cninc`, `address`, `password`, `confirm_password`) VALUES
(1, 'Daler', 'Ali', 'Malik Hazoor Bukhsh', 'Male', 'idalerali@gmail.com', '03336890938', 'Uch Sharif', '31201-5858585-8', 'Mohalla Gillani Uch Sharif, Thesil Ahmed pur East', '12345', '12345'),
(2, 'Daler', 'Ali', 'Malik Hazoor Bukhsh', '', 'idalerali@gmail.com', '+923049414939', 'Multan', '3120185108785', 'IUB Software Engineering, BWP.', '12345', '13455'),
(3, 'Aliyah', 'Hashmi', 'Mahmood Hashmi', '', 'dalerali49@yahoo.com', '+923049414939', 'Bahawalpur', '3120185108785', 'IUB Software Engineering, BWP.', '12345', '12345'),
(5, 'ali', 'Awan', 'Malik Hazoor Bukhsh', 'Male', 'idalerali@gmail.com', '+923049414939', 'Bahawalpur', '3120185108785', 'IUB Software Engineering, BWP.', '12345Abc', '12345Abc'),
(6, 'ali', 'Awan', 'Malik Hazoor Bukhsh', 'Male', 'idalerali@gmail.com', '+923049414939', 'Bahawalpur', '3120185108785', 'IUB Software Engineering, BWP.', '12345Abc', '12345Abc'),
(7, '', '', '', '', '', '', 'Select City', '', '', '', ''),
(8, '', '', '', '', '', '', 'Select City', '', '', '', ''),
(9, '', '', '', '', '', '', 'Select City', '', '', '', ''),
(10, '', '', '', '', '', '', 'Select City', '', '', '', ''),
(11, 'Shafaq', 'Shafiq', 'Muhammad Shafiq', 'Female', 'idalerali@gmail.com', '+923049414939', 'Bahawalpur', '3120185108785', 'IUB Software Engineering, BWP.', '12345', '12345'),
(12, 'Tahreen', 'Fatima', 'Muhammad Aslam', 'Female', 'idalerali@gmail.com', '03334525555', 'Bahawalnagr', '31220521552', 'near bus stand', '12345', '12345'),
(13, 'Tahreen', 'Fatima', 'Muhammad Aslam', 'Female', 'idalerali@gmail.com', '03334525555', 'Bahawalnagr', '31220521552', 'near bus stand', '12345', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(20) NOT NULL,
  `Role` varchar(30) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Skills` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `Role`, `Name`, `Email`, `Skills`) VALUES
(2, 'Admin', 'Daler Ali', 'khashi@yahoo.com', 'Smart Application Designer'),
(3, '', '', '', ''),
(4, '', 'Iqra', 'idalerali@gmail.com', ''),
(5, '', '', '', ''),
(6, '', '', '', ''),
(7, '', '', '', ''),
(8, '', '', '', ''),
(9, '', '', '', ''),
(10, '', 'Iqra', 'shafa@gmail.com', ''),
(11, '', 'Kashif', 'amali@hotmail.com', ''),
(12, '', 'Kashif', 'amali@hotmail.com', ''),
(13, '', 'Kashif', 'amali@hotmail.com', ''),
(14, '', '', '', ''),
(15, '', 'Daler Ali', 'idalerali@gmail.com', ''),
(16, '', 'Daler Ali', 'idalerali@gmail.com', ''),
(17, '', 'Daler Ali', 'idalerali@gmail.com', ''),
(18, '', 'Daler Ali', 'idalerali@gmail.com', ''),
(19, '', 'Daler Ali', 'shafa@gmail.com', ''),
(20, '', 'Kashif', 'shafa@gmail.com', ''),
(21, '', '', '', ''),
(22, '', 'Daler Ali', 'idalerali@gmail.com', ''),
(23, '', 'Daler Ali', 'idalerali@gmail.com', ''),
(24, '', 'Daler Ali', 'idalerali@gmail.com', 'Smart Application Designer'),
(25, '', 'Daler Ali', 'khashi@yahoo.com', 'Smart Application Designer'),
(26, 'Admin', 'Daler Ali', 'daler.ali@iub.edu.pk', 'Smart Application Designer'),
(27, 'Admin', 'Daler Ali', 'daler.ali@iub.edu.pk', 'Smart Application Designer'),
(28, 'Admin', 'Ahmed Ali', 'khashi@yahoo.com', 'Web'),
(29, 'Developer', 'Kashaf', 'khashi@yahoo.com', 'Design'),
(30, 'Developer', 'Kashaf', 'khashi@yahoo.com', 'Design'),
(31, 'Developer', 'Kashaf', 'khashi@yahoo.com', 'Design'),
(32, 'Admin', 'Daler Ali', 'idalerali@gmail.com', 'Smart Application Designer'),
(33, 'Admin', 'Daler Ali', 'idalerali@gmail.com', 'Smart Application Designer'),
(34, 'Developer', 'Iqra', 'amali@hotmail.com', 'Web'),
(35, 'Admin', 'Zahid', 'sara@hotmail.com', 'Senior Developer'),
(36, 'Admin', 'Iqra', 'idalerali@gmail.com', 'Smart Application Designer'),
(37, '', '', '', ''),
(38, 'Designer', 'Tahreem', 'Tahreem@gmail.com', 'At basic Level + cooking'),
(39, '', '', '', ''),
(40, '', '', '', ''),
(41, '', '', '', ''),
(42, '', '', '', ''),
(43, '', '', '', ''),
(44, '', '', '', ''),
(45, '', '', '', ''),
(46, '', '', '', ''),
(47, '', '', '', ''),
(48, '', '', '', ''),
(49, '', '', '', ''),
(50, '', '', '', ''),
(51, '', '', '', ''),
(52, '', '', '', ''),
(53, '', '', '', ''),
(54, '', '', '', ''),
(55, '', '', '', ''),
(56, 'Admin', 'Kashaf', 'daler.ali@iub.edu.pk', 'Design'),
(57, '', '', '', ''),
(58, '', '', '', ''),
(59, '', '', '', ''),
(60, '', '', '', ''),
(61, '', '', '', ''),
(62, '', '', '', ''),
(63, 'Admin', 'Iqra', 'sara@hotmail.com', 'At basic Level + cooking'),
(64, 'Admin', 'Daler Ali', 'sara@hotmail.com', 'Senior Developer'),
(65, 'Admin', 'Daler Ali', 'idalerali@gmail.com', 'Design'),
(66, '', '', '', ''),
(67, 'Developer', 'Daler Ali', 'idalerali@gmail.com', 'Smart Application Designer'),
(68, '', '', '', ''),
(69, '', '', '', ''),
(70, 'Admin', 'Daler Ali', 'idalerali@gmail.com', 'Smart Application Designer'),
(71, '', '', '', ''),
(72, 'Admin', '', 'idalerali@gmail.com', ''),
(73, '', '', '', ''),
(74, 'Admin', '', '', ''),
(75, '', '', '', ''),
(76, 'Dev', 'Amnah', 'idalerali@gmail.com', 'Smart Application Designer'),
(77, 'Admin', 'Iqra', 'khashi@yahoo.com', 'Smart Application Designer'),
(78, 'Admin', 'Daler Ali', 'idalerali@gmail.com', 'Design'),
(79, 'Developer', 'Iqra', 'idalerali@gmail.com', 'Smart Application Designer'),
(80, 'Admin', 'Zahid', 'sara@hotmail.com', 'n'),
(81, '', '', '', ''),
(82, '', '', '', ''),
(83, 'Developer', 'Amnah', 'amali@hotmail.com', 'Web'),
(84, 'Developer', 'Amnah', 'amali@hotmail.com', 'Web'),
(85, '', '', '', ''),
(86, '', '', '', ''),
(87, '', '', '', ''),
(88, 'Admin', 'Daler Ali', 'idalerali@gmail.com', ''),
(89, '', '', '', ''),
(90, '', '', '', ''),
(91, '', '', '', ''),
(92, '', '', '', ''),
(93, '', '', '', ''),
(94, '', '', '', ''),
(95, '', '', '', ''),
(96, '', '', '', ''),
(97, '', 'Iqra', 'shafa@gmail.com', ''),
(98, '', '', '', ''),
(99, '12', '<?php echo 1212Name ', '<?php echo $Email ?>', '<?php echo $Skill ?>'),
(100, '', '', '', ''),
(101, 'Admin', 'Daler Ali', 'idalerali@gmail.com', 'Smart Application Designer'),
(102, '', '', '', ''),
(103, 'Admin', 'Daler Ali', 'idalerali@gmail.com', ''),
(104, '', '', '', ''),
(105, '', '', '', ''),
(106, '', '', '', ''),
(107, '', '', '', ''),
(108, '', '', '', ''),
(109, 'Admin', 'Daler Ali', 'idalerali@gmail.com', 'Design'),
(110, 'Admin', 'Daler Ali', 'idalerali@gmail.com', 'Design'),
(111, 'Admin', 'Daler Ali', 'idalerali@gmail.com', 'Design'),
(112, 'Admin', 'Daler Ali', 'idalerali@gmail.com', 'Design'),
(113, 'Admin', 'Daler Ali', 'idalerali@gmail.com', 'Design'),
(114, '', '', '', ''),
(115, '', '', '', ''),
(116, '', '', '', ''),
(117, 'Designer', 'Kashif', 'khashi@yahoo.com', ''),
(118, 'Admin', 'Daler Ali', 'idalerali@gmail.com', ''),
(119, 'Admin', 'Daler Ali', 'idalerali@gmail.com', 'Design'),
(120, '<br /><b>Notice</b>:  Undefine', '<br /><b>Notice</b>:', '<br /><b>Notice</b>:  Undefine', '<br /><b>Notice</b>:  Undefined variable: Skill in <b>C:xampphtdocsedit and deletedelete.php</b> on ');

-- --------------------------------------------------------

--
-- Table structure for table `zgdx`
--

CREATE TABLE `zgdx` (
  `id` varchar(30) NOT NULL,
  `name` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `choices`
--
ALTER TABLE `choices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_record`
--
ALTER TABLE `personal_record`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`auto_Id`);

--
-- Indexes for table `teammembers`
--
ALTER TABLE `teammembers`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `uni`
--
ALTER TABLE `uni`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `choices`
--
ALTER TABLE `choices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_record`
--
ALTER TABLE `personal_record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `auto_Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teammembers`
--
ALTER TABLE `teammembers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87871;

--
-- AUTO_INCREMENT for table `uni`
--
ALTER TABLE `uni`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
