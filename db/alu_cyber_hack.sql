-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 15, 2020 at 07:50 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alupdduc_alu_cyber_hack`
--

-- --------------------------------------------------------

--
-- Table structure for table `quiz_question`
--

CREATE TABLE `quiz_question` (
  `QUES_ID` int(11) NOT NULL,
  `QUESTION` varchar(500) NOT NULL,
  `OPTION_A` varchar(200) NOT NULL,
  `OPTION_B` varchar(200) NOT NULL,
  `OPTION_C` varchar(200) NOT NULL,
  `OPTION_D` varchar(200) NOT NULL,
  `ANSWER` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quiz_question`
--

INSERT INTO `quiz_question` (`QUES_ID`, `QUESTION`, `OPTION_A`, `OPTION_B`, `OPTION_C`, `OPTION_D`, `ANSWER`) VALUES
(1, 'What are the characteristics of a strong password?', 'Long', 'Long, random and unique', 'Long, unique', 'Long, random', ''),
(2, 'A social bookmarking website which allows signed-up users to bookmark and tag      webpages. Additionally, it allows users to highlight any part of a webpage and attach  sticky notes to a specific highlight or whole page', 'Digg', 'Delicious', 'Redd-it', 'Diigo', 'Diigo'),
(3, 'If you want to share a password with someone, what\'s the best option?', 'Send it via email', 'Send a text message', 'Tell it via the phone', 'None of the above', ''),
(4, 'RSS Stands for?', 'Really Simple Syndication', 'Realistic Standards System', 'Reading Simple Style', 'Reading Social Style', 'Really Simple Syndication'),
(5, 'Who is Mark Zuckerberg?', 'Founder of Apple', 'Founder of Google', 'Founder of Facebook', 'Founder of Twitter', '�Founder of Facebook'),
(6, 'What for Firewall Used?', 'Prevent hackers from internet', 'To Access Network Remotely', 'Virus Protection', 'Control Traffic between Internal network & Internet', ''),
(7, 'At which URL can Internet users access videos created by federal agencies?', 'Www.whitehouse.gov', 'Data.gov', 'Mygovernment.mov', 'Youtube.com/USGovernment', 'Youtube.com/USGovernment'),
(8, 'How often should I change a password?', 'Never', 'Every week', 'Every month', 'Every year', 'At last count Facebook had over this many active users?'),
(9, 'At last count Facebook had over this many active users?', '10 million', '10 million', '200 million', '400 million', '400 million'),
(10, 'If you want to share a password with someone, what\'s the best option?', 'Send it via email', 'Send a text message', 'Tell it via the phone', 'None of the above', ''),
(11, 'What is YouTube\'s Slogan?', 'Broadcast Yourself', 'Just Video It', 'Think Different', 'Anytime Video', 'Broadcast Yourself'),
(12, 'What is the most popular day for tweets?', 'Friday', 'Saturday', 'Sunday', 'Tuesday', 'Tuesday'),
(13, 'What was Twitter\'s original name?', 'Tweeter', 'Tweet', 'Twttr', 'Twit', 'Twttr'),
(14, 'You are writing a message on Twitter', ' What is the maximum number of characters you can use?', '120', '140', '240', '280'),
(15, 'Which of the following is not a social media application?', 'Flickr', 'My Space', 'Linked In', 'None of These', 'None of These'),
(16, 'You have created a PowerPoint presentation that you want to embed on a web page.� A site that enables you to do that is?', 'YouTube', 'Vimeo', 'Slideshare', 'Soundslide', 'Slideshare'),
(17, 'You want to create your social network-a website for doing this is?', 'Scribd', 'Tumblr', 'Ning', 'None of the Above', 'Ning'),
(18, 'What social networking site has a feature called \"Answers\"\" that allows users to ask other members for professional advice?\"', 'Wikipedia', 'ChaCha', 'Yahoo', 'Linked In', 'Linked In'),
(19, 'Which of these are all real Twitter applications?', 'Twhirl, Tweetylicious, Twitterpost', 'Phweet, Twhirl, Tweetdeck', 'Tweetylicious, Tweetdeck, Tweet-r', 'None of the Above.', 'Phweet, Twhirl, Tweetdeck'),
(20, 'You are the administrator of a Facebook group, what is the maximum number of members you can have in your group if you want to send a mass message to the entire group.', '500', '1000', '5000', '10000', '5000'),
(21, 'Who founded Facebook?', 'Mark Zuckerberg', 'Matt Mullenweg', 'Bill Gates', 'Steve Chen', 'Mark zuckerberg'),
(22, 'Which of the following types of people can you find on Social Networking sites?', 'Musicians', 'Politicians', 'Criminals', 'All of the above', 'All of the above'),
(23, 'When was the term social networking first used?', '1994', '1954', '2004', '1974', '1994'),
(24, 'Social Networking first became popular online when?', '1977', '1999', '2003', '1988', '2003'),
(25, 'Social Network sites use which media for communication?', 'Video', 'Audio', 'Text', 'All of the above', 'All of the above'),
(26, 'Who founded MySpace?', 'Tom Anderson', 'Rupert Murdoch', 'Will DeWolfe', 'Marc Andressen', 'Tom Anderson'),
(27, 'If you want to share a password with someone, what\'s the best option?', 'Send it via email', 'Send a text message', 'Tell it via the phone', 'None of the above', '');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_score`
--

CREATE TABLE `quiz_score` (
  `USER_ID` int(11) NOT NULL,
  `QUES_ID` int(11) NOT NULL,
  `SCORE` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quiz_score`
--

INSERT INTO `quiz_score` (`USER_ID`, `QUES_ID`, `SCORE`) VALUES
(39820, 21, 0),
(39820, 23, 1),
(39820, 23, 0),
(39820, 11, 1),
(39820, 13, 0),
(39820, 19, 0),
(39820, 2, 0),
(39820, 5, 0),
(39820, 8, 0),
(39820, 20, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `USER_ID` int(11) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `CONTACT_NO` varchar(15) NOT NULL,
  `EMAIL` varchar(100) NOT NULL,
  `DEGREE` varchar(100) NOT NULL,
  `DEGREE_TYPE` varchar(25) NOT NULL,
  `INSTITUTE_NAME` varchar(150) NOT NULL,
  `QUIZ` tinyint(1) NOT NULL,
  `ANSWERED_COUNT` int(11) NOT NULL,
  `QUIZ_BUTTON` varchar(50) NOT NULL DEFAULT 'auto',
  `EVENT_BUTTON` varchar(50) NOT NULL DEFAULT 'auto'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`USER_ID`, `NAME`, `CONTACT_NO`, `EMAIL`, `DEGREE`, `DEGREE_TYPE`, `INSTITUTE_NAME`, `QUIZ`, `ANSWERED_COUNT`, `QUIZ_BUTTON`, `EVENT_BUTTON`) VALUES
(18950, 'ANGAPPAN MUTHU', '1234567890', 'angappanmuthu232@gmail.com', 'B.Voc(Software Development)', 'on', 'Algappa Institute of Skill Development', 0, 0, '', ''),
(20145, 'SIVARAM', '7867065023', 'ram614709@gmail.com', 'ug', 'on', 'alagappa', 0, 4, 'none', 'auto'),
(20739, 'Nithiya', '1234567890', 'kavinithya22@gmail.com', 'B.Voc', 'on', 'ALU', 0, 0, 'auto', 'auto'),
(23428, 'Arumai Ruban', '9790535243', 'ruban.aisd@gmail.com', 'B.Sc', 'on', 'Alagappa university', 0, 0, '', ''),
(28658, 'VISHWA S', '7867065023', 'ram614709@gmail.com', 'b.voc', 'on', 'on', 0, 4, 'none', 'none'),
(30417, 'pugazhenthi', '7867065023', 'ram614709@gmail.com', 'b.voc', 'on', 'alagappa', 0, 0, '', ''),
(30881, 'SIVARAM.PR', '7867065023', 'ram614709@gmail.com', 'ug', 'on', 'on', 0, 0, 'auto', 'auto'),
(34041, 'Sivaram', '1234567890', 'angappanmuthu232@gmail.com', 'B.Voc(SD)', 'on', 'AISD', 0, 0, '', ''),
(35744, 'Hacker', '9751659642', 'sivapardeep378@gmail.com', 'pg', 'on', 'alagappa', 0, 4, 'none', 'auto'),
(36672, 'Hacker999', '7867065023', 'ram614709@gmail.com', 'b.voc', 'on', 'on', 0, 0, 'auto', 'auto'),
(37661, 'ANGAPPAN MUTHU', '1234567890', 'angappanmuthu232@gmail.com', 'dfggd', 'on', 'gfgdfg', 0, 0, '', ''),
(39635, 'Arumai Ruban', '9790535243', 'ruban.aisd@gmail.com', 'B.Sc', 'on', 'Alagappa university', 0, 4, 'none', 'none'),
(39820, 'Angappan', '1234567890', 'angappanmuthu232@gmail.com', 'B.Voc(SD)', 'on', 'Alagappa University', 0, 10, 'none', 'none');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `quiz_question`
--
ALTER TABLE `quiz_question`
  ADD PRIMARY KEY (`QUES_ID`);

--
-- Indexes for table `quiz_score`
--
ALTER TABLE `quiz_score`
  ADD KEY `QUES_ID` (`QUES_ID`),
  ADD KEY `USER_ID` (`USER_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`USER_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `quiz_question`
--
ALTER TABLE `quiz_question`
  MODIFY `QUES_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `quiz_score`
--
ALTER TABLE `quiz_score`
  ADD CONSTRAINT `quiz_score_ibfk_1` FOREIGN KEY (`QUES_ID`) REFERENCES `quiz_question` (`QUES_ID`),
  ADD CONSTRAINT `quiz_score_ibfk_2` FOREIGN KEY (`USER_ID`) REFERENCES `users` (`USER_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
