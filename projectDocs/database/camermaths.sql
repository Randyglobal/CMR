-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 05, 2023 at 12:26 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `camermaths`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `post_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `crt_date` datetime NOT NULL,
  `upd_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `user_id`, `parent_id`, `post_id`, `description`, `crt_date`, `upd_date`) VALUES
(1, 3, NULL, 14, 'this is a great article', '2023-02-05 11:37:04', '2023-02-05 11:37:04'),
(3, 2, 1, 14, 'thank you Soffack', '2023-02-05 11:39:06', '2023-02-05 11:39:06');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `post_type` varchar(255) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `description` text NOT NULL,
  `view` varchar(255) DEFAULT NULL,
  `file` text,
  `user_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `research_nb` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `contact_nb` varchar(255) DEFAULT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `crt_date` datetime NOT NULL,
  `upd_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `title`, `post_type`, `parent_id`, `description`, `view`, `file`, `user_id`, `status`, `research_nb`, `date`, `time`, `location`, `contact_nb`, `contact_email`, `crt_date`, `upd_date`) VALUES
(1, 'Algèbre', 'domain_type', NULL, 'How to create new txt file git?\r\nFirst of all open the folder you want to create the new file in your text editor like \'brackets\' or \'VS studio\'. Then simply type touch newFile. txt in git-bash . Then go back to text editor you have previously open and you can see the newFile.', NULL, NULL, 1, '1', '', NULL, NULL, NULL, NULL, NULL, '2023-02-05 10:38:31', '2023-02-05 10:38:31'),
(2, 'Analyse', 'domain_type', NULL, 'How to create new txt file git?\r\nFirst of all open the folder you want to create the new file in your text editor like \'brackets\' or \'VS studio\'. Then simply type touch newFile. txt in git-bash . Then go back to text editor you have previously open and you can see the newFile.', NULL, NULL, 1, '1', '', NULL, NULL, NULL, NULL, NULL, '2023-02-05 10:38:31', '2023-02-05 10:38:31'),
(3, 'Géométrie', 'domain_type', NULL, 'How to create new txt file git?\r\nFirst of all open the folder you want to create the new file in your text editor like \'brackets\' or \'VS studio\'. Then simply type touch newFile. txt in git-bash . Then go back to text editor you have previously open and you can see the newFile.', NULL, NULL, 1, '1', '', NULL, NULL, NULL, NULL, NULL, '2023-02-05 10:38:31', '2023-02-05 10:38:31'),
(4, 'Short stay scholarships', 'scholarship_type', NULL, 'How to create new txt file git?\r\nFirst of all open the folder you want to create the new file in your text editor like \'brackets\' or \'VS studio\'. Then simply type touch newFile. txt in git-bash . Then go back to text editor you have previously open and you can see the newFile.', NULL, NULL, 1, '1', '', NULL, NULL, NULL, NULL, NULL, '2023-02-05 10:38:31', '2023-02-05 10:38:31'),
(5, ' Doctoral scholarships', 'scholarship_type', NULL, 'How to create new txt file git?\r\nFirst of all open the folder you want to create the new file in your text editor like \'brackets\' or \'VS studio\'. Then simply type touch newFile. txt in git-bash . Then go back to text editor you have previously open and you can see the newFile.', NULL, NULL, 1, '1', '', NULL, NULL, NULL, NULL, NULL, '2023-02-05 10:38:31', '2023-02-05 10:38:31'),
(6, ' Postdoctoral scholarships', 'scholarship_type', NULL, 'How to create new txt file git?\r\nFirst of all open the folder you want to create the new file in your text editor like \'brackets\' or \'VS studio\'. Then simply type touch newFile. txt in git-bash . Then go back to text editor you have previously open and you can see the newFile.', NULL, NULL, 1, '1', '', NULL, NULL, NULL, NULL, NULL, '2023-02-05 10:38:31', '2023-02-05 10:38:31'),
(7, 'probability math\'s intern canada', 'schorlaship', 5, 'How to create new txt file git?\r\nFirst of all open the folder you want to create the new file in your text editor like \'brackets\' or \'VS studio\'. Then simply type touch newFile. txt in git-bash . Then go back to text editor you have previously open and you can see the newFile.', '23', 'image.png', 1, '1', '', NULL, NULL, 'canada', '651898704', 'eta4272@gmail.com', '2023-02-05 10:42:41', '2023-02-05 10:42:41'),
(8, 'study applied maths in france', 'schorlaship', 4, 'How to create new txt file git?\r\nFirst of all open the folder you want to create the new file in your text editor like \'brackets\' or \'VS studio\'. Then simply type touch newFile. txt in git-bash . Then go back to text editor you have previously open and you can see the newFile.', '83', 'image.png', 1, '1', '', NULL, NULL, 'france', '651898704', 'eta4272@gmail.com', '2023-02-05 10:42:41', '2023-02-05 10:42:41'),
(9, 'Stastitics teacher at IUT Douala', 'job', NULL, 'How to create new txt file git?\r\nFirst of all open the folder you want to create the new file in your text editor like \'brackets\' or \'VS studio\'. Then simply type touch newFile. txt in git-bash . Then go back to text editor you have previously open and you can see the newFile.', '77', 'image.png', 1, '0', '', NULL, NULL, 'douala', '651898704', 'eta4272@gmail.com', '2023-02-05 10:53:47', '2023-02-05 10:53:47'),
(10, 'Enseignant de  Fonctions spéciales de la Physique Mathématique Yaounde', 'job', NULL, 'How to create new txt file git?\r\nFirst of all open the folder you want to create the new file in your text editor like \'brackets\' or \'VS studio\'. Then simply type touch newFile. txt in git-bash . Then go back to text editor you have previously open and you can see the newFile.', '77', 'image.png', 1, '1', '', NULL, NULL, 'Yaounde', '651898704', 'eta4272@gmail.com', '2023-02-05 10:53:47', '2023-02-05 10:53:47'),
(11, 'Conference en maitrise de la Fonctions spéciales de la Physique Mathématique Buea', 'event', NULL, 'How to create new txt file git?\r\nFirst of all open the folder you want to create the new file in your text editor like \'brackets\' or \'VS studio\'. Then simply type touch newFile. txt in git-bash . Then go back to text editor you have previously open and you can see the newFile.', '80', 'image.png', 1, '1', '', '2023-02-09', '10:00:00', 'Buea hilton hotel mile 2', '651898704', 'eta4272@gmail.com', '2023-02-05 10:53:47', '2023-02-05 10:53:47'),
(12, 'Conference en maitrise probabilite des fonctions a Douala', 'event', NULL, 'How to create new txt file git?\r\nFirst of all open the folder you want to create the new file in your text editor like \'brackets\' or \'VS studio\'. Then simply type touch newFile. txt in git-bash . Then go back to text editor you have previously open and you can see the newFile.', '2', 'image.png', 1, '1', '', '2023-02-09', '10:00:00', 'Douala Akwa palace', '651898704', 'eta4272@gmail.com', '2023-02-05 10:53:47', '2023-02-05 10:53:47'),
(13, 'Hierarchic Control for a Nonlinear Parabolic Equation in an Unbounded Domain', 'publication', 1, 'How to create new txt file git?\r\nFirst of all open the folder you want to create the new file in your text editor like \'brackets\' or \'VS studio\'. Then simply type touch newFile. txt in git-bash . Then go back to text editor you have previously open and you can see the newFile.', '14', 'document.pdf', 2, '1', '00A06', NULL, NULL, NULL, NULL, NULL, '2023-02-05 11:12:51', '2023-02-05 11:12:51'),
(14, 'A clearified study on Euclidean rings and generalizations', 'publication', 2, 'How to create new txt file git?\r\nFirst of all open the folder you want to create the new file in your text editor like \'brackets\' or \'VS studio\'. Then simply type touch newFile. txt in git-bash . Then go back to text editor you have previously open and you can see the newFile.', '02', 'document.pdf', 2, '1', '13F07', NULL, NULL, NULL, NULL, NULL, '2023-02-05 11:12:51', '2023-02-05 11:12:51'),
(15, 'First Camerounaian mathematician to Occupy Director Post at NASA', 'news', NULL, 'How to create new txt file git?\r\nFirst of all open the folder you want to create the new file in your text editor like \'brackets\' or \'VS studio\'. Then simply type touch newFile. txt in git-bash . Then go back to text editor you have previously open and you can see the newFile.', '210', 'image.png', 1, '1', '', NULL, NULL, NULL, NULL, NULL, '2023-02-05 11:19:04', '2023-02-05 11:19:04');

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

CREATE TABLE `site_settings` (
  `setting_id` int(11) NOT NULL,
  `site_email` varchar(255) NOT NULL,
  `site_contact_1` text NOT NULL,
  `site_contact_2` text NOT NULL,
  `site_iframe` text NOT NULL,
  `site_name` text NOT NULL,
  `site_color` varchar(100) NOT NULL,
  `site_logo` varchar(25) NOT NULL,
  `site_desc` text NOT NULL,
  `site_link` varchar(255) NOT NULL,
  `site_addresse` varchar(255) NOT NULL,
  `facebook_page` varchar(255) NOT NULL,
  `smtp_host` varchar(255) NOT NULL,
  `smtp_username` text NOT NULL,
  `smtp_pass` varchar(255) NOT NULL,
  `smtp_sent_from` varchar(255) NOT NULL,
  `live_chat_id` varchar(255) NOT NULL,
  `site_tracking_link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `site_settings`
--

INSERT INTO `site_settings` (`setting_id`, `site_email`, `site_contact_1`, `site_contact_2`, `site_iframe`, `site_name`, `site_color`, `site_logo`, `site_desc`, `site_link`, `site_addresse`, `facebook_page`, `smtp_host`, `smtp_username`, `smtp_pass`, `smtp_sent_from`, `live_chat_id`, `site_tracking_link`) VALUES
(2, 'info@camermaths.org', '+237 651 898 704', '+237651898704', '', 'Camermaths', '#007bff', 'logo.png', '', 'www.camermaths.org', 'Bonamoussadi, Douala', '', 'ftp.camermaths.org', 'codec', 'JcKufJCZ0', 'info@camermaths.org', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` varchar(255) NOT NULL,
  `stutus` varchar(255) DEFAULT NULL,
  `autobiograph` text,
  `domain_id` int(11) DEFAULT NULL,
  `research_nb` varchar(255) DEFAULT NULL,
  `postion` varchar(255) DEFAULT NULL,
  `cv` varchar(255) DEFAULT NULL,
  `supervisor_id` int(11) DEFAULT NULL,
  `graduation_cntry` varchar(255) DEFAULT NULL,
  `graduation_date` date DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `crt_date` datetime NOT NULL,
  `upd_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `user_type`, `stutus`, `autobiograph`, `domain_id`, `research_nb`, `postion`, `cv`, `supervisor_id`, `graduation_cntry`, `graduation_date`, `phone`, `crt_date`, `upd_date`) VALUES
(1, 'cyril', 'eta4272@gmail.com', 'eta4272@gmail.com', '2', '1', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-05 09:51:40', '2023-02-05 09:51:40'),
(2, 'Kamga lionelle', 'lionellekam@yahoo.fr', 'lionellekam@yahoo.fr123', '1', '1', 'How to create new txt file git?\r\nFirst of all open the folder you want to create the new file in your text editor like \'brackets\' or \'VS studio\'. Then simply type touch newFile. txt in git-bash . Then go back to text editor you have previously open and yo', 1, '13F07', 'PHD HOLDER', 'document.pdf', NULL, 'germany', '2014-02-05', '652189804', '2023-02-05 11:22:56', '2023-02-05 11:22:56'),
(3, 'Frabrice Soffack', 'fab123@gmail.com', 'fabricecamermaths', '1', '1', 'How to create new txt file git?\r\nFirst of all open the folder you want to create the new file in your text editor like \'brackets\' or \'VS studio\'. Then simply type touch newFile. txt in git-bash . Then go back to text editor you have previously open and yo', 3, '78A05', 'Master Recherche', 'document.pdf', 2, 'cameroon', '2022-02-05', '698451270', '2023-02-05 11:22:56', '2023-02-05 11:22:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `type_id` (`post_type`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `site_settings`
--
ALTER TABLE `site_settings`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `supervitor_id` (`supervisor_id`),
  ADD KEY `domain_id` (`domain_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `site_settings`
--
ALTER TABLE `site_settings`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `comment` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `comment_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `post_ibfk_4` FOREIGN KEY (`parent_id`) REFERENCES `post` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`supervisor_id`) REFERENCES `user` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `user_ibfk_3` FOREIGN KEY (`domain_id`) REFERENCES `post` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
