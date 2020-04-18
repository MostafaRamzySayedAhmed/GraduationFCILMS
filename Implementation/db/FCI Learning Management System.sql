-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2017 at 03:30 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `fci learning management system`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE IF NOT EXISTS `activity_log` (
  `activity_log_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `action` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`activity_log_id`, `username`, `date`, `action`) VALUES
(1, 'Mostafa', '2017-06-05 02:11:25', 'Add Subject IS 235'),
(2, 'Mostafa', '2017-06-05 06:23:10', 'Add Subject IT 125'),
(3, 'Mostafa', '2017-06-05 06:29:39', 'Add Subject IT 125'),
(4, 'Mostafa', '2017-06-05 06:58:19', 'Edit Subject HUM 112'),
(5, 'Mostafa', '2017-06-05 07:06:42', 'Edit Subject HUM 111'),
(6, 'Mostafa', '2017-06-05 07:06:59', 'Edit Subject HUM 111'),
(7, 'Mostafa', '2017-06-05 07:10:11', 'Edit Subject HUM 111'),
(8, 'Mostafa', '2017-06-05 07:14:20', 'Edit Subject HUM 112'),
(9, 'Mostafa', '2017-06-05 07:27:02', 'Add Subject CS 124'),
(10, 'Mostafa', '2017-06-05 07:32:39', 'Edit Subject IS 235'),
(11, 'Mostafa', '2017-06-05 09:06:24', 'Edit Subject CS 141'),
(12, 'Mostafa', '2017-06-06 02:06:35', 'Add Lecturer Kareem Ahmed'),
(13, 'Mostafa', '2017-06-06 02:09:46', 'Add Lecturer Fahad Kamal'),
(14, 'Mostafa', '2017-06-06 03:17:30', 'Add Lecturer Kareem Kamal'),
(15, 'Mostafa', '2017-06-06 03:45:18', 'Add Lecturer dsfa fafa'),
(16, 'Mostafa', '2017-06-06 04:38:54', 'Edit Subject HUM 111'),
(17, 'Mostafa', '2017-06-06 04:39:38', 'Edit Subject HUM 112'),
(18, 'Mostafa', '2017-06-06 04:46:58', 'Edit Subject CS 141'),
(19, 'Mostafa', '2017-06-06 05:41:10', 'Edit Subject CS 141'),
(20, 'Mostafa', '2017-06-06 06:57:41', 'Edit Subject CS 141'),
(22, 'Mostafa', '2017-06-06 07:54:47', 'Edit Subject CS 211'),
(26, 'Mostafa', '2017-06-06 08:06:32', 'Edit Subject IS 212'),
(27, 'Mostafa', '2017-06-06 08:07:18', 'Edit Subject IS 201'),
(28, 'Mostafa', '2017-06-06 08:10:41', 'Edit Subject IT 250'),
(33, 'Mostafa', '2017-06-06 08:29:00', 'Edit Subject IS 235');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE IF NOT EXISTS `answer` (
  `answer_id` int(11) NOT NULL,
  `quiz_question_id` int(11) NOT NULL,
  `answer_text` varchar(100) NOT NULL,
  `choices` varchar(3) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`answer_id`, `quiz_question_id`, `answer_text`, `choices`) VALUES
(81, 32, 'john', 'A'),
(82, 32, 'smith', 'B'),
(83, 32, 'kevin', 'C'),
(84, 32, 'lorayna', 'D'),
(85, 34, 'Peso', 'A'),
(86, 34, 'PHP Hypertext', 'B'),
(87, 34, 'PHP Hypertext Preprosesor', 'C'),
(88, 34, 'Philippines', 'D');

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE IF NOT EXISTS `assignment` (
  `assignment_id` int(11) NOT NULL,
  `floc` varchar(300) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE IF NOT EXISTS `class` (
  `class_id` int(11) NOT NULL,
  `class_name` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `class_name`) VALUES
(7, 'FCI-1'),
(8, 'FCI-2'),
(12, 'FCI-3-CS'),
(13, 'FCI-3-IS'),
(14, 'FCI-3-IT'),
(17, 'FCI-4-CS'),
(18, 'FCI-4-IS'),
(19, 'FCI-4-IT');

-- --------------------------------------------------------

--
-- Table structure for table `class_quiz`
--

CREATE TABLE IF NOT EXISTS `class_quiz` (
  `class_quiz_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `quiz_time` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_quiz`
--

INSERT INTO `class_quiz` (`class_quiz_id`, `teacher_class_id`, `quiz_time`, `quiz_id`) VALUES
(13, 167, 3600, 3),
(14, 167, 3600, 3),
(15, 167, 1800, 3),
(16, 185, 900, 0);

-- --------------------------------------------------------

--
-- Table structure for table `class_subject_overview`
--

CREATE TABLE IF NOT EXISTS `class_subject_overview` (
  `class_subject_overview_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `content` varchar(10000) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_subject_overview`
--

INSERT INTO `class_subject_overview` (`class_subject_overview_id`, `teacher_class_id`, `content`) VALUES
(3, 189, '<p><strong><u>CS 141</u></strong></p>\n\n<p><strong>Programming Fundamentals</strong>,</p>\n\n<p>In This Subject, You Will Learn All Of The Bascis Of Programming In C++ and Make Some Small Programs.</p>\n'),
(4, 192, '<div class="block-content collapse in">\r\n<div class="span12">\r\n<p><strong><u>IT 101</u></strong></p>\r\n\r\n<p><strong>Computer Networks</strong>,</p>\r\n\r\n<p>In This Subject, You Will Learn All Of The Bascis Of Networking and It&#39;s Programming.</p>\r\n</div>\r\n</div>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE IF NOT EXISTS `content` (
  `content_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`content_id`, `title`, `content`) VALUES
(1, 'Mission', '<pre>\n<span style="font-size:16px"><strong>Mission</strong></span></pre>\n\n<p style="text-align:left"><span style="font-family:arial,helvetica,sans-serif; font-size:medium"><span style="font-size:large">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></span>&nbsp; &nbsp;<span style="font-size:18px"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; A leading faculty in higher education specialized in computers and technology studies commited to improve the industry of technology in egypt and middle east and also enrich the scientific researching process by graduating high qualified students according to the latest technologies and tools.</span></p>\n\n<p style="text-align:left">&nbsp;</p>\n'),
(2, 'Vision', '<pre><span style="font-size: large;"><strong>Vision</strong></span></pre>\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size: large;">&nbsp;&nbsp;\n&nbsp;&nbsp;&nbsp;\n&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;\n&nbsp; Developing the software industry in egypt and middle east and also make new theories and researches to contribute in improving the technologies, tools and methods used in the market. </span><br /><br /></p>'),
(3, 'History', '<pre><span style="font-size: large;">HISTORY &nbsp;</span> </pre>\n<p style="text-align: justify;">The Faculty Was Created on 2012 to Cover the Market''s Needs in the Field of Software Developing and Programming and also the Growning Needs of Highly Qualified Undergraduates in the Fields of Networking, Systems Adminstration and Security;</p>\n\nThe First Grade of Students Was Graduated on 2016 and Sequentially New Groups of Students Will Be Graduated.</p>'),
(4, 'Footer', '<p style="text-align:center">All Rights Reserved &reg;2017</p>\r\n'),
(10, 'Calendar', '<pre style="text-align:center">\n<span style="font-size:medium"><strong>&nbsp;CALENDAR OF EVENTS</strong></span></pre>\n\n<table align="center" cellpadding="0" cellspacing="10" style="line-height:1.6em; margin-left:auto; margin-right:auto">\n	<tbody>\n		<tr>\n			<td>\n			<p>First Semester &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\n			</td>\n			<td>\n			<p>September 21, 2017 To Janurery 22, 2018&nbsp;</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>Semestral Break</p>\n			</td>\n			<td>\n			<p>Januery 23, 2018 To Feburery 10, 2018</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>Second Semester</p>\n			</td>\n			<td>\n			<p>Feburery 11, 2018 To June 23, 2018</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>Summer Break</p>\n			</td>\n			<td>\n			<p>June 24, 2018 To September 20, 2018</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>Summer Course</p>\n			</td>\n			<td>\n			<p>July 1, 2018 To August 31, 2018</p>\n			</td>\n		</tr>\n	</tbody>\n</table>\n\n<p style="text-align:center">&nbsp;</p>\n\n<table cellpadding="5" cellspacing="100" style="line-height:1.6em; margin-left:auto; margin-right:auto">\n	<tbody>\n		<tr>\n			<td colspan="4">\n		<p><strong>September 21, 2017 To Janurery 22, 2018 &ndash; First Semester 2017-2018</strong></p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>September 21, 2017 To September 26, 2017  &nbsp; &nbsp; &nbsp; &nbsp;</p>\n			</td>\n			<td>\n			<p>Week Of Subjects Registrtion</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>September 29, 2017 To November 15, 2017</p>\n			</td>\n			<td>\n			<p>Studying</p>\n			</td>\n		</tr>\n<tr>\n			<td>\n			<p>November 18, 2017 To November 24, 2017</p>\n			</td>\n			<td>\n			<p>Midterm Exams</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>November 28, 2017 To December 25, 2017</p>\n			</td>\n			<td>\n			<p>Studying</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>Janurery 1, 2018 To Janurery 22, 2018</p>\n			</td>\n			<td>\n			<p>Final Exams</p>\n			</td>\n		</tr>	\n	\n	</tbody>\n</table>\n\n<p style="text-align:center">&nbsp;</p>\n\n<table cellpadding="5" cellspacing="100" style="line-height:1.6em; margin-left:auto; margin-right:auto">\n	<tbody>\n		<tr>\n			<td colspan="4">\n		<p><strong>Feburery 11, 2018 To June 23, 2018 &ndash; Second Semester 2017-2018</strong></p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>Feburery 11, 2018 To Feburery 16, 2018  &nbsp; &nbsp; &nbsp; &nbsp;</p>\n			</td>\n			<td>\n			<p>Week Of Subjects Registrtion</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>Feburery 19, 2018 To April 15, 2018</p>\n			</td>\n			<td>\n			<p>Studying</p>\n			</td>\n		</tr>\n<tr>\n			<td>\n			<p>April 18, 2018 To April 24, 2018</p>\n			</td>\n			<td>\n			<p>Midterm Exams</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>April 28, 2018 To Mai 25, 2018</p>\n			</td>\n			<td>\n			<p>Studying</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>June 1, 2018 To June 23, 2018</p>\n			</td>\n			<td>\n			<p>Final Exams</p>\n			</td>\n		</tr>	\n\n	</tbody>\n</table>\n\n\n\n<p style="text-align:center">&nbsp;</p>\n\n<table cellpadding="5" cellspacing="100" style="line-height:1.6em; margin-left:auto; margin-right:auto">\n	<tbody>\n		<tr>\n			<td colspan="4">\n		<p><strong>July 1, 2018 To August 31, 2018 &ndash; Summer Course 2017-2018</strong></p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>July 1, 2018 To July 6, 2018  &nbsp; &nbsp; &nbsp; &nbsp;</p>\n			</td>\n			<td>\n			<p>Week Of Subjects Registrtion</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>July 8, 2018 To July 31, 2018</p>\n			</td>\n			<td>\n			<p>Studying</p>\n			</td>\n		</tr>\n<tr>\n			<td>\n			<p>August 1, 2018 To August 6, 2018</p>\n			</td>\n			<td>\n			<p>Midterm Exams</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>August 8, 2018 To August 24, 2018</p>\n			</td>\n			<td>\n			<p>Studying</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>August 26, 2018 To August 31, 2018</p>\n			</td>\n			<td>\n			<p>Final Exams</p>\n			</td>\n		</tr>	\n\n	</tbody>\n</table>'),
(11, 'Directories', '<div class="jsn-article-content" style="text-align: left;">\n<pre>\n<span style="font-size:medium"><em><strong>DIRECTORIES</strong></em></span></pre>\n\n<ul>\n	<li>Labs Employee  - 712-0848</li>\n	<li>Accounting - 495-5560</li>\n	<li>President''s Office - 495-4064(telefax)</li>\n	<li>Academic Guide - 495-1635</li>\n<li>Lecturer''s Office - 495-3470</li>\n<li>Worker''s Affairs Office - 495-3757</li><li>Student''s Affairs Office - 495-3767</li>\n	<li>Internet Lab Employee - 712-6144/712-6459</li>\n	<li>Canteen - 495-5396</li>\n	<li>Research - 712-8464</li>\n	<li>Library - 495-5143</li>\n</ul>\n</div>\n');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE IF NOT EXISTS `department` (
  `department_id` int(11) NOT NULL,
  `department_name` varchar(100) NOT NULL,
  `dean` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `department_name`, `dean`) VALUES
(4, 'Computer Science (CS)', 'Dr. Hamdy Mahmoud'),
(11, 'Information Systems (IS)', 'Dr. Kareem Kamal'),
(12, 'Information Technology (IT)', 'Dr. Farid Ali');

-- --------------------------------------------------------

--
-- Table structure for table `educational_year`
--

CREATE TABLE IF NOT EXISTS `educational_year` (
  `educational_year_id` int(11) NOT NULL,
  `educational_year` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `educational_year`
--

INSERT INTO `educational_year` (`educational_year_id`, `educational_year`) VALUES
(1, '2015-2016'),
(2, '2016-2017');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE IF NOT EXISTS `event` (
  `event_id` int(11) NOT NULL,
  `event_title` varchar(100) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `date_start` varchar(100) NOT NULL,
  `date_end` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`event_id`, `event_title`, `teacher_class_id`, `date_start`, `date_end`) VALUES
(36, 'Programming Fundamentals', 189, '09/25/2017', '01/22/2018'),
(37, '1st Lecture', 189, '09/25/2017', '09/25/2017'),
(38, '2nd Lecture', 189, '10/02/2017', '10/02/2017'),
(39, 'Quiz (1)', 189, '10/09/2017', '10/09/2017'),
(41, '3rd Lecture', 189, '10/16/2017', '10/16/2017'),
(42, '4th Lecture', 189, '10/23/2017', '10/23/2017'),
(43, 'Quiz (2)', 189, '10/30/2017', '10/30/2017'),
(44, '5th Lecture', 189, '11/06/2017', '11/06/2017'),
(45, '6th Lecture', 189, '11/13/2017', '11/13/2017'),
(46, 'Midterm Exam', 189, '11/20/2017', '11/20/2017'),
(47, 'Holiday', 189, '11/27/2017', '11/27/2017'),
(48, '7th Lecture', 189, '12/04/2017', '12/04/2017'),
(49, '8th Lecture', 189, '12/11/2017', '12/11/2017'),
(50, '9th Lecture', 189, '12/18/2017', '12/18/2017'),
(51, '10th Lecture', 189, '12/25/2017', '12/25/2017'),
(53, '11th Lecture', 189, '01/01/2018', '01/01/2018'),
(54, '12th Lecture', 189, '01/08/2018', '01/08/2018'),
(55, 'Practical Exam', 189, '01/15/2018', '01/15/2018'),
(56, 'Final Exam', 189, '01/22/2018', '01/22/2018'),
(57, 'Computer Networks', 192, '09/26/2017', '01/23/2018'),
(58, '1st Lecture', 192, '09/26/2017', '09/26/2017'),
(59, '2nd Lecture', 192, '10/03/2017', '10/03/2017'),
(60, '3rd Lecture', 192, '10/10/2017', '10/10/2017'),
(61, '4th Lecture', 192, '10/17/2017', '10/17/2017'),
(62, 'Quiz (1)', 192, '10/24/2017', '10/24/2017'),
(63, '5th Lecture', 192, '10/31/2017', '10/31/2017'),
(64, '6th Lecture', 192, '11/07/2017', '11/07/2017'),
(65, 'Midterm Exam', 192, '11/14/2017', '11/14/2017'),
(66, 'Holiday', 192, '11/21/2017', '11/21/2017'),
(67, '7th Lecture', 192, '11/28/2017', '11/28/2017'),
(68, '8th Lecture', 192, '12/05/2017', '12/05/2017'),
(69, '9th Lecture', 192, '12/12/2017', '12/12/2017'),
(70, '10th Lecture', 192, '12/19/2017', '12/19/2017'),
(71, 'Quiz (2)', 192, '12/26/2017', '12/26/2017'),
(72, '11th Lecture', 192, '01/02/2018', '01/02/2018'),
(73, '12th Lecture', 192, '01/09/2018', '01/09/2018'),
(74, 'Practical Exam', 192, '01/16/2018', '01/16/2018'),
(75, 'Final Exam', 192, '01/23/2018', '01/23/2018');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE IF NOT EXISTS `files` (
  `file_id` int(11) NOT NULL,
  `floc` varchar(500) NOT NULL,
  `fdatein` varchar(200) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `uploaded_by` varchar(100) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=153 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`file_id`, `floc`, `fdatein`, `fdesc`, `teacher_id`, `class_id`, `fname`, `uploaded_by`) VALUES
(144, 'admin/uploads/3395_File_Material - CS 211.pptx', '2017-06-04 13:38:18', 'Material For The Subject', 1, 191, 'Material - CS 211', 'Essam Shaban'),
(150, 'admin/uploads/1591_File_Material - IT 101.docx', '2017-06-04 21:37:22', 'Material For The Subject', 0, 192, 'Material - IT 101', 'Ahmed Marwan'),
(151, 'admin/uploads/1274_File_Material - CS 141.txt', '2017-06-04 22:51:06', 'Material For The Subject', 0, 189, 'Material - CS 141', 'Ahmed Marwan'),
(142, 'admin/uploads/4229_File_Material - CS 241.txt', '2017-06-04 03:23:16', 'Material For The Subject', 1, 190, 'Material - CS 241', 'Essam Shaban'),
(141, 'admin/uploads/5430_File_Material - CS 141.docx', '2017-06-04 03:22:23', 'Material For The Subject', 1, 189, 'Material - CS 141', 'Essam Shaban');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE IF NOT EXISTS `message` (
  `message_id` int(11) NOT NULL,
  `reciever_id` int(11) NOT NULL,
  `content` varchar(200) NOT NULL,
  `date_sended` varchar(100) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `reciever_name` varchar(50) NOT NULL,
  `sender_name` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`message_id`, `reciever_id`, `content`, `date_sended`, `sender_id`, `reciever_name`, `sender_name`) VALUES
(34, 9, 'Hi Ahmed', '2017-06-04 22:45:36', 1, 'Ahmed Marwan', 'Essam Shaban'),
(38, 1, 'Hi Doctor,\nHow Are You ?', '2017-06-04 23:19:28', 9, 'Essam Shaban', 'Ahmed Marwan'),
(57, 8, 'hi', '2017-06-20 23:17:58', 9, 'Ahmed Kareem', 'Ahmed Marwan'),
(59, 9, 'hi, how r u ?', '2017-06-20 23:21:42', 8, 'Ahmed Marwan', 'Ahmed Kareem'),
(60, 3, 'Hi Dr\\ Kareem', '2017-06-20 23:49:24', 1, 'Kareem Ahmed', 'Essam Shaban'),
(61, 1, 'Hi Dr\\ Essam', '2017-06-20 23:50:03', 3, 'Essam Shaban', 'Kareem Ahmed');

-- --------------------------------------------------------

--
-- Table structure for table `message_sent`
--

CREATE TABLE IF NOT EXISTS `message_sent` (
  `message_sent_id` int(11) NOT NULL,
  `reciever_id` int(11) NOT NULL,
  `content` varchar(200) NOT NULL,
  `date_sended` varchar(100) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `reciever_name` varchar(100) NOT NULL,
  `sender_name` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message_sent`
--

INSERT INTO `message_sent` (`message_sent_id`, `reciever_id`, `content`, `date_sended`, `sender_id`, `reciever_name`, `sender_name`) VALUES
(19, 9, 'Hi Ahmed', '2017-06-04 22:45:36', 1, 'Ahmed Marwan', 'Essam Shaban'),
(20, 1, 'Hi Doctor,\r\nHow Are You ?', '2017-06-04 22:46:38', 9, 'Essam Shaban', 'Ahmed Marwan'),
(42, 8, 'hi', '2017-06-20 23:17:58', 9, 'Ahmed Kareem', 'Ahmed Marwan'),
(44, 9, 'hi, how r u ?', '2017-06-20 23:21:42', 8, 'Ahmed Marwan', 'Ahmed Kareem'),
(45, 3, 'Hi Dr\\ Kareem', '2017-06-20 23:49:24', 1, 'Kareem Ahmed', 'Essam Shaban'),
(46, 1, 'Hi Dr\\ Essam', '2017-06-20 23:50:03', 3, 'Essam Shaban', 'Kareem Ahmed');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE IF NOT EXISTS `notification` (
  `notification_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `notification` varchar(100) NOT NULL,
  `date_of_notification` varchar(50) NOT NULL,
  `link` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`notification_id`, `teacher_class_id`, `notification`, `date_of_notification`, `link`) VALUES
(16, 189, 'Add Annoucements', '2017-06-03 08:31:21', 'announcements_student.php'),
(19, 189, 'Add Downloadable Materials file name <b>Material - CS 141</b>', '2017-06-04 03:22:23', 'downloadable_student.php'),
(24, 191, 'Add Downloadable Materials file name <b>Material - CS 211</b>', '2017-06-04 14:05:26', 'downloadable_student.php');

-- --------------------------------------------------------

--
-- Table structure for table `notification_read`
--

CREATE TABLE IF NOT EXISTS `notification_read` (
  `notification_read_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `student_read` varchar(50) NOT NULL,
  `notification_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notification_read_teacher`
--

CREATE TABLE IF NOT EXISTS `notification_read_teacher` (
  `notification_read_teacher_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `student_read` varchar(100) NOT NULL,
  `notification_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `question_type`
--

CREATE TABLE IF NOT EXISTS `question_type` (
  `question_type_id` int(11) NOT NULL,
  `question_type` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question_type`
--

INSERT INTO `question_type` (`question_type_id`, `question_type`) VALUES
(1, 'Multiple Choice'),
(2, 'True or False');

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE IF NOT EXISTS `quiz` (
  `quiz_id` int(11) NOT NULL,
  `quiz_title` varchar(50) NOT NULL,
  `quiz_description` varchar(100) NOT NULL,
  `date_added` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`quiz_id`, `quiz_title`, `quiz_description`, `date_added`, `teacher_id`) VALUES
(3, 'Sample Test', 'Test', '2013-12-03 23:01:56', 12),
(4, 'Chapter 1', 'topics', '2013-12-13 01:51:02', 14),
(5, 'test3', '123', '2014-01-16 04:12:07', 12),
(6, 'fhx', 'dgzsg', '2017-06-03 04:23:09', 1),
(7, 'ada', 'fwew', '2017-06-04 02:10:12', 8);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_question`
--

CREATE TABLE IF NOT EXISTS `quiz_question` (
  `quiz_question_id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `question_text` varchar(100) NOT NULL,
  `question_type_id` int(11) NOT NULL,
  `points` int(11) NOT NULL,
  `date_added` varchar(100) NOT NULL,
  `answer` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz_question`
--

INSERT INTO `quiz_question` (`quiz_question_id`, `quiz_id`, `question_text`, `question_type_id`, `points`, `date_added`, `answer`) VALUES
(33, 5, '<p>q</p>\r\n', 2, 0, '2014-01-17 04:15:03', 'False'),
(34, 3, '<p>Php Stands for ?</p>\r\n', 1, 0, '2014-01-17 12:25:17', 'C'),
(35, 3, '<p>Echo is a Php code that display the output.</p>\r\n', 2, 0, '2014-01-17 12:26:18', 'True'),
(36, 6, '<p>sddwda?</p>\r\n', 2, 0, '2017-06-03 08:51:21', '');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `student_id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `class_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=546 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `firstname`, `lastname`, `class_id`, `username`, `password`, `location`, `status`) VALUES
(1, 'Hassan', 'Sherif', 19, '14-2586', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(2, 'Ali', 'Hussin', 18, '14-2515', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(3, 'Mahmoud', 'Maher', 17, '14-2524', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(4, 'Mohamed', 'Samy', 14, '13-2145', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(5, 'Mahmoud', 'Ali', 13, '13-2125', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(6, 'Hany', 'Mahmoud', 12, '13-2148', '123', 'uploads/forest2.jpg', 'Registered'),
(8, 'Ahmed', 'Kareem', 7, '11-5550', '123', 'uploads/desert1.jpg', 'Registered'),
(9, 'Ahmed', 'Marwan', 7, '11-5551', '123', 'uploads/desert2.jpg', 'Registered'),
(7, 'Mahmoud', 'Khaled', 8, '12-5486', '123', 'uploads/forest.jpg', 'Registered');

-- --------------------------------------------------------

--
-- Table structure for table `student_assignment`
--

CREATE TABLE IF NOT EXISTS `student_assignment` (
  `student_assignment_id` int(11) NOT NULL,
  `assignment_id` int(11) NOT NULL,
  `floc` varchar(100) NOT NULL,
  `assignment_fdatein` varchar(50) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `student_id` int(11) NOT NULL,
  `grade` varchar(5) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_assignment`
--

INSERT INTO `student_assignment` (`student_assignment_id`, `assignment_id`, `floc`, `assignment_fdatein`, `fdesc`, `fname`, `student_id`, `grade`) VALUES
(21, 13, 'admin/uploads/1414_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-24 11:59:28', 'fasfasfasfsfsafasf', 'safas', 93, ''),
(22, 13, 'admin/uploads/5554_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-24 12:07:46', 'fasfaf', 'fdasf', 93, ''),
(23, 13, 'admin/uploads/3202_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-24 12:08:21', 'fasf', 'fasf', 93, ''),
(24, 13, 'admin/uploads/6535_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-24 12:09:19', 'fasf', 'saff', 93, ''),
(25, 12, 'admin/uploads/8974_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-24 12:24:38', 'fgs', 'gs', 93, ''),
(26, 13, 'admin/uploads/9035_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-24 12:51:44', 'q', 'q', 93, ''),
(27, 13, 'admin/uploads/4503_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-24 12:52:44', 'fasfaf', 'fasf', 93, ''),
(28, 13, 'admin/uploads/7827_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-24 12:54:20', 'ffsafsfafsaf', 'fsa', 93, ''),
(29, 13, 'admin/uploads/6680_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-24 13:02:49', 'jkl', 'jkl', 93, ''),
(30, 14, 'admin/uploads/1457_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-24 13:06:56', 'fasf', 'saf', 93, ''),
(31, 16, 'admin/uploads/7151_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-25 10:39:52', 'test', 'my_assginment', 93, ''),
(32, 17, 'admin/uploads/1918_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-11-25 15:54:19', 'q', 'q', 71, '95'),
(33, 31, 'admin/uploads/7519_File_win_boot_screen_16_9_by_medi_dadu-d4s7dc1.gif', '2013-12-07 20:58:58', 'dad', 'das', 75, '10'),
(34, 20, 'admin/uploads/2416_File_about.php', '2014-01-14 08:51:53', 'Asssd', 'Assignment1', 136, ''),
(35, 20, 'admin/uploads/5560_File_Chrysanthemum.jpg', '2014-01-14 08:52:22', 'sder', 'sfew', 136, '98');

-- --------------------------------------------------------

--
-- Table structure for table `student_backpack`
--

CREATE TABLE IF NOT EXISTS `student_backpack` (
  `file_id` int(11) NOT NULL,
  `floc` varchar(100) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `student_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_backpack`
--

INSERT INTO `student_backpack` (`file_id`, `floc`, `fdatein`, `fdesc`, `student_id`, `fname`) VALUES
(1, 'admin/uploads/2658_File_kevin.docx', '2014-02-13 11:11:50', 'test', 210, 'test');

-- --------------------------------------------------------

--
-- Table structure for table `student_class_quiz`
--

CREATE TABLE IF NOT EXISTS `student_class_quiz` (
  `student_class_quiz_id` int(11) NOT NULL,
  `class_quiz_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `student_quiz_time` varchar(100) NOT NULL,
  `grade` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_class_quiz`
--

INSERT INTO `student_class_quiz` (`student_class_quiz_id`, `class_quiz_id`, `student_id`, `student_quiz_time`, `grade`) VALUES
(1, 15, 107, '3600', '0 out of 2'),
(2, 16, 136, '3600', '0 out of 0');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE IF NOT EXISTS `subject` (
  `subject_id` int(11) NOT NULL,
  `subject_code` varchar(100) NOT NULL,
  `subject_title` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `unit` int(11) NOT NULL,
  `pre_req` varchar(100) NOT NULL,
  `semester` varchar(100) NOT NULL,
  `level` varchar(100) NOT NULL,
  `sub_lec` varchar(100) DEFAULT NULL,
  `quiz_grade` int(11) DEFAULT NULL,
  `midterm_exam_grade` int(11) NOT NULL,
  `practical_exam_grade` int(11) DEFAULT NULL,
  `final_exam_grade` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `subject_code`, `subject_title`, `description`, `unit`, `pre_req`, `semester`, `level`, `sub_lec`, `quiz_grade`, `midterm_exam_grade`, `practical_exam_grade`, `final_exam_grade`) VALUES
(26, 'CS 141', 'Programming Fundamentals', '<p>Bascis Of Programming In C++</p>\r\n', 3, '', '2nd', 'FCI-1', 'Dr. Essam Shaban', 10, 20, 20, 50),
(27, 'CS 241', 'Object Oriented Programming', '<p>Object Oriented Programming In C++</p>\r\n', 3, 'Programming Fundamentals', '2nd', 'FCI-2', 'Dr. Essam Shaban', 10, 20, 20, 50),
(28, 'CS 211', 'Data Structures and Algoritms', '', 3, 'Programming Fundamentals & Object Oriented Programming', '2nd', 'FCI-2', 'Dr. Essam Shaban', 10, 20, 20, 50),
(29, 'CS 321', 'Operating System', '', 3, '', '2nd', 'FCI-3-CS', 'Dr. Kareem Ahmed', 10, 20, 20, 50),
(30, 'IT 101', 'IT Fundamentals', '', 3, '', '1st', 'FCI-1', 'Dr. Kareem Ahmed', 10, 10, 20, 50),
(31, 'IS 212', 'Databases', '<p>SQL Language Basics</p>\r\n', 3, '', '1st', 'FCI-2', 'Dr. Kareem Kamal', 10, 20, 20, 50),
(32, 'IS 201', 'Foundations of Information Systems', '', 3, '', '1st', 'FCI-2', 'Dr. Kareem Kamal', 10, 20, 20, 50),
(33, 'IT 250', 'Computer Networks', '', 3, '', '1st', 'FCI-3-IT', 'Dr. Farid Ali', 10, 20, 20, 50),
(35, 'IT 325', 'E-commerce', '', 3, '', '2nd', 'FCI-3-IT', 'Dr. Farid Ali', 10, 20, 20, 50),
(36, 'IS 351', 'System Analysis and Design', '', 3, 'Foundations of Information Systems', '2nd', 'FCI-2', 'Dr. Kareem Kamal', 10, 20, 20, 50),
(43, 'IS 235', 'Advanced Databases', '<p>Advanced Topics In Databases &amp; Big Data</p>\r\n', 3, 'Databases', '1st', 'FCI-4-IS', 'Dr. Kareem Kamal', 10, 20, 10, 50),
(45, 'IT 125', 'Network Analysis and Design', '', 3, 'Computer Networks', '2nd', 'FCI-4-IT', 'Dr. Farid Ali', 10, 20, 10, 50),
(46, 'CS 124', 'Algorithms Analysis and Design', '', 3, '', '2nd', 'FCI-3-CS', 'Dr. Hamdy Mahmoud', 10, 20, 20, 50);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE IF NOT EXISTS `teacher` (
  `teacher_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `department_id` int(11) NOT NULL,
  `location` varchar(200) NOT NULL,
  `teacher_status` varchar(20) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=190 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `username`, `password`, `firstname`, `lastname`, `department_id`, `location`, `teacher_status`) VALUES
(4, '1003', '123', 'Farid', 'Ali', 9, 'uploads/sea3.jpg', 'Registered'),
(5, '1006', '123', 'Kareem', 'Kamal', 4, 'uploads/sea5.jpg', 'Registered'),
(189, '1004', '123', 'Hamdy', 'Mahmoud', 4, 'uploads/sea4.jpg', 'Registered'),
(3, '1002', '123', 'Kareem', 'Ahmed', 4, 'uploads/sea2.jpg', 'Registered'),
(2, '1005', '', 'Fahad', 'Kamal', 4, 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(1, '1001', '123', 'Essam', 'Shaban', 11, 'uploads/sea1.jpg', 'Registered');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_backpack`
--

CREATE TABLE IF NOT EXISTS `teacher_backpack` (
  `file_id` int(11) NOT NULL,
  `floc` varchar(100) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_class`
--

CREATE TABLE IF NOT EXISTS `teacher_class` (
  `teacher_class_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `image_class` varchar(100) NOT NULL,
  `educational_year` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=212 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_class`
--

INSERT INTO `teacher_class` (`teacher_class_id`, `teacher_id`, `class_id`, `subject_id`, `image_class`, `educational_year`) VALUES
(189, 1, 7, 26, 'admin/uploads/image_class.jpg', '2016-2017'),
(190, 1, 8, 27, 'admin/uploads/image_class.jpg', '2016-2017'),
(192, 3, 7, 30, 'admin/uploads/image_class.jpg', '2016-2017'),
(194, 24, 17, 46, 'admin/uploads/image_class.jpg', '2016-2017'),
(195, 26, 18, 33, 'admin/uploads/image_class.jpg', '2016-2017'),
(196, 4, 14, 45, 'admin/uploads/image_class.jpg', '2016-2017'),
(201, 5, 8, 32, 'admin/uploads/image_class.jpg', '2016-2017'),
(202, 3, 12, 29, 'admin/uploads/image_class.jpg', '2016-2017'),
(203, 5, 8, 31, 'admin/uploads/image_class.jpg', '2016-2017'),
(204, 4, 14, 33, 'admin/uploads/image_class.jpg', '2016-2017'),
(205, 4, 14, 35, 'admin/uploads/image_class.jpg', '2016-2017'),
(207, 5, 18, 43, 'admin/uploads/image_class.jpg', '2016-2017'),
(208, 189, 12, 46, 'admin/uploads/image_class.jpg', '2016-2017'),
(209, 5, 8, 36, 'admin/uploads/image_class.jpg', '2016-2017'),
(210, 189, 8, 28, 'admin/uploads/image_class.jpg', '2016-2017'),
(211, 1, 8, 27, 'admin/uploads/image_class.jpg', '2015-2016');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_class_announcements`
--

CREATE TABLE IF NOT EXISTS `teacher_class_announcements` (
  `teacher_class_announcements_id` int(11) NOT NULL,
  `content` varchar(500) NOT NULL,
  `teacher_id` varchar(100) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_class_announcements`
--

INSERT INTO `teacher_class_announcements` (`teacher_class_announcements_id`, `content`, `teacher_id`, `teacher_class_id`, `date`) VALUES
(39, '<p>The Next Lecture Will Be Cancelled</p>\r\n', '1', 189, '2017-06-03 08:31:21');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_class_student`
--

CREATE TABLE IF NOT EXISTS `teacher_class_student` (
  `teacher_class_student_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=407 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_class_student`
--

INSERT INTO `teacher_class_student` (`teacher_class_student_id`, `teacher_class_id`, `student_id`, `teacher_id`) VALUES
(378, 186, 6, 1),
(380, 188, 3, 2),
(381, 189, 8, 1),
(382, 189, 9, 1),
(383, 190, 7, 1),
(385, 192, 8, 3),
(386, 192, 9, 3),
(389, 194, 3, 24),
(390, 195, 2, 26),
(391, 196, 4, 4),
(396, 201, 7, 5),
(397, 202, 6, 3),
(398, 203, 7, 5),
(399, 204, 4, 4),
(400, 205, 4, 4),
(402, 207, 2, 5),
(403, 208, 6, 189),
(404, 209, 7, 5),
(405, 210, 7, 189),
(406, 211, 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_notification`
--

CREATE TABLE IF NOT EXISTS `teacher_notification` (
  `teacher_notification_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `notification` varchar(100) NOT NULL,
  `date_of_notification` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `student_id` int(11) NOT NULL,
  `assignment_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_notification`
--

INSERT INTO `teacher_notification` (`teacher_notification_id`, `teacher_class_id`, `notification`, `date_of_notification`, `link`, `student_id`, `assignment_id`) VALUES
(18, 192, 'Add Downloadable Materials File Name <b>Material - IT 101</b>', '2017-06-04 18:51:20', 'downloadable.php', 9, 0),
(22, 189, 'Add Downloadable Materials File Name <b>Material - CS 141</b>', '2017-06-04 22:51:06', 'downloadable.php', 9, 0);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_shared`
--

CREATE TABLE IF NOT EXISTS `teacher_shared` (
  `teacher_shared_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `shared_teacher_id` int(11) NOT NULL,
  `floc` varchar(100) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `fname` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_shared`
--

INSERT INTO `teacher_shared` (`teacher_shared_id`, `teacher_id`, `shared_teacher_id`, `floc`, `fdatein`, `fdesc`, `fname`) VALUES
(1, 12, 14, 'admin/uploads/7939_File_449E26DB.jpg', '2014-02-20 09:55:32', 'sas', 'sss');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `firstname`, `lastname`) VALUES
(13, 'Mostafa', '123', 'Mostafa', 'Ramzy'),
(14, 'Mohamed', '123', 'Mohamed', 'Hesham');

-- --------------------------------------------------------

--
-- Table structure for table `user_log`
--

CREATE TABLE IF NOT EXISTS `user_log` (
  `user_log_id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `login_date` varchar(30) NOT NULL,
  `logout_date` varchar(30) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_log`
--

INSERT INTO `user_log` (`user_log_id`, `username`, `login_date`, `logout_date`, `user_id`) VALUES
(1, 'Mostafa', '2017-06-04 14:33:54', '2017-06-06 10:10:40', 13);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`activity_log_id`);

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`answer_id`);

--
-- Indexes for table `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`assignment_id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `class_quiz`
--
ALTER TABLE `class_quiz`
  ADD PRIMARY KEY (`class_quiz_id`);

--
-- Indexes for table `class_subject_overview`
--
ALTER TABLE `class_subject_overview`
  ADD PRIMARY KEY (`class_subject_overview_id`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `educational_year`
--
ALTER TABLE `educational_year`
  ADD PRIMARY KEY (`educational_year_id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `message_sent`
--
ALTER TABLE `message_sent`
  ADD PRIMARY KEY (`message_sent_id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `notification_read`
--
ALTER TABLE `notification_read`
  ADD PRIMARY KEY (`notification_read_id`);

--
-- Indexes for table `notification_read_teacher`
--
ALTER TABLE `notification_read_teacher`
  ADD PRIMARY KEY (`notification_read_teacher_id`);

--
-- Indexes for table `question_type`
--
ALTER TABLE `question_type`
  ADD PRIMARY KEY (`question_type_id`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`quiz_id`);

--
-- Indexes for table `quiz_question`
--
ALTER TABLE `quiz_question`
  ADD PRIMARY KEY (`quiz_question_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `student_assignment`
--
ALTER TABLE `student_assignment`
  ADD PRIMARY KEY (`student_assignment_id`);

--
-- Indexes for table `student_backpack`
--
ALTER TABLE `student_backpack`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `student_class_quiz`
--
ALTER TABLE `student_class_quiz`
  ADD PRIMARY KEY (`student_class_quiz_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `teacher_backpack`
--
ALTER TABLE `teacher_backpack`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `teacher_class`
--
ALTER TABLE `teacher_class`
  ADD PRIMARY KEY (`teacher_class_id`);

--
-- Indexes for table `teacher_class_announcements`
--
ALTER TABLE `teacher_class_announcements`
  ADD PRIMARY KEY (`teacher_class_announcements_id`);

--
-- Indexes for table `teacher_class_student`
--
ALTER TABLE `teacher_class_student`
  ADD PRIMARY KEY (`teacher_class_student_id`);

--
-- Indexes for table `teacher_notification`
--
ALTER TABLE `teacher_notification`
  ADD PRIMARY KEY (`teacher_notification_id`);

--
-- Indexes for table `teacher_shared`
--
ALTER TABLE `teacher_shared`
  ADD PRIMARY KEY (`teacher_shared_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_log`
--
ALTER TABLE `user_log`
  ADD PRIMARY KEY (`user_log_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `activity_log_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `answer_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=89;
--
-- AUTO_INCREMENT for table `assignment`
--
ALTER TABLE `assignment`
  MODIFY `assignment_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `class_quiz`
--
ALTER TABLE `class_quiz`
  MODIFY `class_quiz_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `class_subject_overview`
--
ALTER TABLE `class_subject_overview`
  MODIFY `class_subject_overview_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `educational_year`
--
ALTER TABLE `educational_year`
  MODIFY `educational_year_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=153;
--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `message_sent`
--
ALTER TABLE `message_sent`
  MODIFY `message_sent_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `notification_read`
--
ALTER TABLE `notification_read`
  MODIFY `notification_read_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `notification_read_teacher`
--
ALTER TABLE `notification_read_teacher`
  MODIFY `notification_read_teacher_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `quiz_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `quiz_question`
--
ALTER TABLE `quiz_question`
  MODIFY `quiz_question_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=546;
--
-- AUTO_INCREMENT for table `student_assignment`
--
ALTER TABLE `student_assignment`
  MODIFY `student_assignment_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `student_backpack`
--
ALTER TABLE `student_backpack`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `student_class_quiz`
--
ALTER TABLE `student_class_quiz`
  MODIFY `student_class_quiz_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=190;
--
-- AUTO_INCREMENT for table `teacher_backpack`
--
ALTER TABLE `teacher_backpack`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `teacher_class`
--
ALTER TABLE `teacher_class`
  MODIFY `teacher_class_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=212;
--
-- AUTO_INCREMENT for table `teacher_class_announcements`
--
ALTER TABLE `teacher_class_announcements`
  MODIFY `teacher_class_announcements_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `teacher_class_student`
--
ALTER TABLE `teacher_class_student`
  MODIFY `teacher_class_student_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=407;
--
-- AUTO_INCREMENT for table `teacher_notification`
--
ALTER TABLE `teacher_notification`
  MODIFY `teacher_notification_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `teacher_shared`
--
ALTER TABLE `teacher_shared`
  MODIFY `teacher_shared_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `user_log`
--
ALTER TABLE `user_log`
  MODIFY `user_log_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
