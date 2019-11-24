-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2019 at 01:44 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.0.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `metrorail`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_user`
--

CREATE TABLE `admin_user` (
  `id` int(11) NOT NULL,
  `NID` varchar(150) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL DEFAULT '827ccb0eea8a706c4c34a16891f84e7b',
  `role` int(5) NOT NULL DEFAULT '1' COMMENT '0==admin,1==stationmaster'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin_user`
--

INSERT INTO `admin_user` (`id`, `NID`, `email`, `phone`, `password`, `role`) VALUES
(1, '0zgPJtZ', 'ruhana@gmail.com', '0168312564699', '827ccb0eea8a706c4c34a16891f84e7b', 0),
(13, '5Kuph5', 'ok@gmail.com', '01682312659', '827ccb0eea8a706c4c34a16891f84e7b', 1);

-- --------------------------------------------------------

--
-- Table structure for table `base_fair`
--

CREATE TABLE `base_fair` (
  `id` int(11) NOT NULL,
  `base_fair` float(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `base_fair`
--

INSERT INTO `base_fair` (`id`, `base_fair`) VALUES
(1, 25.00);

-- --------------------------------------------------------

--
-- Table structure for table `distance`
--

CREATE TABLE `distance` (
  `id` int(11) NOT NULL,
  `source_station_id` int(11) NOT NULL,
  `des_station_id` int(11) NOT NULL,
  `distance` float(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `distance`
--

INSERT INTO `distance` (`id`, `source_station_id`, `des_station_id`, `distance`) VALUES
(1, 1, 2, 6.00),
(2, 2, 3, 7.30),
(3, 3, 4, 4.30),
(4, 4, 5, 5.60);

-- --------------------------------------------------------

--
-- Table structure for table `fair_per_km`
--

CREATE TABLE `fair_per_km` (
  `id` int(5) NOT NULL,
  `fair` float(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fair_per_km`
--

INSERT INTO `fair_per_km` (`id`, `fair`) VALUES
(1, 4.50);

-- --------------------------------------------------------

--
-- Table structure for table `national_id`
--

CREATE TABLE `national_id` (
  `N_id` varchar(150) NOT NULL,
  `Name` varchar(150) NOT NULL,
  `Gender` varchar(11) NOT NULL,
  `DOB` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `national_id`
--

INSERT INTO `national_id` (`N_id`, `Name`, `Gender`, `DOB`) VALUES
('0p9J1aOu', 'Brenden Feedome', 'Male', '27/11/1985'),
('0yDX7I01uDO', 'Linnet Springtorp', 'Female', '23/3/1971'),
('0zgPJtZ', 'Tova Doorly', 'Female', '29/1/1984'),
('3rwlnlPJ', 'Josephina Bamling', 'Female', '5/4/1966'),
('4E2xoaDl86Sy', 'Eileen Jellicorse', 'Female', '21/2/2001'),
('56Cx7kfO', 'Cyndie Gorler', 'Female', '7/12/1999'),
('5kFGqi', 'Micheil Shelmerdine', 'Male', '22/8/1977'),
('5Kuph5', 'Mort Grimm', 'Male', '21/4/1961'),
('7nxad7QyC7gt', 'Brigida Drummond', 'Female', '20/9/1963'),
('7OYhHcKeLQ', 'Regine O\'Hallagan', 'Female', '11/2/1999'),
('7QsFIeXOxA', 'Mano Camerati', 'Male', '29/3/1961'),
('7T5xFLRNk', 'Nikoletta Culp', 'Female', '1/4/2000'),
('93qnZQ6ViUu2', 'Oswell Cusiter', 'Male', '2/1/1962'),
('93RVfjamIVdQ', 'Pippy Vanderson', 'Female', '7/11/1990'),
('9YRqlx', 'Otto Gambie', 'Male', '17/1/1998'),
('A7DiqBoqL', 'Gonzalo Girodier', 'Male', '29/1/1969'),
('aFkZMZ', 'Marlin Kalderon', 'Male', '14/9/1997'),
('B1ZoI8Y', 'Eamon Lowrie', 'Male', '11/4/1989'),
('bDvgazBfD', 'Crosby Moggie', 'Male', '28/12/1974'),
('bGT3WSWcq6G', 'Celle Baldung', 'Female', '31/8/1991'),
('Bt1yrydP', 'Archibald Pavinese', 'Male', '6/5/1990'),
('bWBQqTN', 'Cash Lortz', 'Male', '23/12/1990'),
('ceRUuyt', 'Gamaliel Amsberger', 'Male', '9/12/2000'),
('cGVfLuOzg', 'Stephanie Halleday', 'Female', '6/8/1982'),
('CKPQpDZ9w', 'Rudie Lansdown', 'Male', '21/7/1992'),
('ctctmpUBU', 'Angel Beetlestone', 'Female', '20/1/1968'),
('Cz5BLHqg7Fm', 'Novelia Cowle', 'Female', '6/12/1995'),
('d6GYtYSLc', 'Dannel Culley', 'Male', '23/2/1987'),
('d9fbtqqrTadv', 'Johnna Keeley', 'Female', '16/5/2001'),
('daqCvbY9ned', 'Micky Alty', 'Female', '15/4/1969'),
('dHjQdE4', 'Daffy Shine', 'Female', '11/5/1969'),
('dJXKimh4Gx', 'Welby Oldman', 'Male', '5/1/1999'),
('eB4o8abYe3', 'Zak Beri', 'Male', '6/11/1978'),
('eLHIRWTdO', 'Christiana Ferrettini', 'Female', '13/1/1982'),
('epHmoVQnev', 'Mil Palley', 'Female', '29/6/1977'),
('fduZId7Rb', 'Darren Kirkhouse', 'Male', '26/2/1974'),
('G1pTzAuUxb', 'Christie Senn', 'Male', '12/2/1980'),
('GT3kRW', 'Dagny Duchatel', 'Male', '9/8/1997'),
('h1z4fYc8cBL', 'Meredith Melby', 'Female', '19/9/1994'),
('IRVDdG', 'Vinny Robbie', 'Male', '15/4/1975'),
('ISjFqEUot', 'Donaugh Grushin', 'Male', '10/7/1997'),
('j2gwtZhrrUeu', 'Chrisse Gladdin', 'Male', '6/1/1980'),
('jbSyfc', 'Hammad Druitt', 'Male', '1/1/1969'),
('l0So4ew3J', 'Chryste Ambrodi', 'Female', '24/8/2000'),
('L4NeWfqx', 'Clo Matterson', 'Female', '19/2/1969'),
('L5N4LqdaO4k', 'Sharai Brandel', 'Female', '26/10/1981'),
('lfSSayT983', 'Bar Course', 'Male', '7/1/1982'),
('lMJx5svafP4', 'Donovan Rodrig', 'Male', '5/7/1996'),
('Lu4AIJejb', 'Jelene Josey', 'Female', '27/5/1971'),
('lxBFcbbVJdI', 'Randi Ramlot', 'Female', '29/3/1977'),
('LXWAKeMzi', 'Rora Fronks', 'Female', '25/10/1981'),
('mCuXdgIq', 'Benson Spatig', 'Male', '12/6/1963'),
('MyqZgg1sLU', 'Bobine Creaser', 'Female', '5/12/1996'),
('n7zzjoZK', 'Dav Rizzone', 'Male', '17/8/1997'),
('num9Ag', 'Marietta Blemings', 'Female', '31/12/1974'),
('NX3Eb4HJn', 'Nap Long', 'Male', '8/4/1968'),
('ocDj2ZGf', 'Morissa Druce', 'Female', '9/12/1984'),
('OeBGPxERbrM', 'Garth Collinwood', 'Male', '1/11/1973'),
('ofBivmf', 'Quill Lumsden', 'Male', '25/1/1989'),
('OM8Nv1U', 'Andris Kneafsey', 'Male', '14/3/1964'),
('Orf6FPS5Ktrw', 'Jennie McGillivray', 'Female', '4/5/1971'),
('OSljH2YIvk', 'Elga Asquez', 'Female', '1/12/2000'),
('P5N1hSi', 'Rori Dawks', 'Female', '1/10/1967'),
('PaCUki', 'Teodoor Le Moucheux', 'Male', '29/7/1994'),
('q1mKV8aVy7s', 'Mariele Fawloe', 'Female', '19/1/1978'),
('qg9m17L', 'Kynthia Spencer', 'Female', '28/12/1971'),
('qSlwC2', 'Ilaire Jeffree', 'Male', '23/2/1982'),
('Ra1m3l2dwsk', 'Jervis Hay', 'Male', '23/9/1977'),
('RIFxedMD1vff', 'Brooks Woosnam', 'Female', '23/1/1964'),
('RRcIHtzE2q', 'Cesare Lamonby', 'Male', '10/12/2000'),
('s2kARX5', 'Hermy Readhead', 'Male', '2/11/1968'),
('T4JbkAH7m4C', 'Maynord McAnalley', 'Male', '21/8/1996'),
('tjsuO7dD3', 'Cyrille Hacker', 'Male', '9/8/1985'),
('TKczpNa', 'Salomon Ferminger', 'Male', '8/12/1975'),
('tVZN5AxZ7PE', 'Hermie Paulsson', 'Male', '11/6/1983'),
('tX7JZCvz0', 'Bing Grastye', 'Male', '11/3/1979'),
('u7fQdvYEWj', 'Kendra Grzelak', 'Female', '17/3/1976'),
('uNCpsrHAxT6t', 'Isacco McAreavey', 'Male', '14/10/1978'),
('UtF5fAMa2', 'Peyter Kochs', 'Male', '12/9/1961'),
('uTFN5O4j1', 'Peggy Danels', 'Female', '7/2/1998'),
('V0P40xnqd9', 'Carina Bridgland', 'Female', '6/12/1970'),
('vk669098FRdq', 'Loria McLanachan', 'Female', '1/6/1969'),
('VMWCMmFC', 'Travus Gheorghie', 'Male', '10/2/1967'),
('w9RQPRQlQ2', 'Melodee Slee', 'Female', '18/7/1990'),
('wCGdeJv', 'Kaile Commin', 'Female', '25/3/1991'),
('WCud6nem', 'Carlie Necrews', 'Male', '12/1/1964'),
('wfTu3Ck', 'Carmelle Hingeley', 'Female', '13/8/1967'),
('WMHVza', 'Lind Stanway', 'Male', '19/5/1994'),
('WTyXHjuG', 'Gwyneth Riccardelli', 'Female', '5/12/1961'),
('XmTCYl', 'Nicky Macvain', 'Male', '3/6/1989'),
('y5nYF9', 'Efrem Jaukovic', 'Male', '17/8/1965'),
('ykABZPx7Z', 'Sallyann Giblin', 'Female', '15/12/1976'),
('yOkecPTNOb', 'Maris Holborn', 'Female', '20/5/1988'),
('yyKoTj', 'Darcy Klemt', 'Male', '21/7/1969'),
('ZFEokZv3rZs', 'Neysa Adamovich', 'Female', '24/8/1965'),
('zHzm2vG', 'Boote Ion', 'Male', '26/4/1987'),
('zls7Lee0', 'Filbert Purple', 'Male', '29/9/2001'),
('zRC3EpLxa', 'Sandye Armall', 'Female', '17/10/1971'),
('zXTqknnct', 'Teodoro Towey', 'Male', '2/2/1998'),
('ZYiO3hdlrY7', 'Artemis Epilet', 'Male', '26/9/1982');

-- --------------------------------------------------------

--
-- Table structure for table `routes_info`
--

CREATE TABLE `routes_info` (
  `id` varchar(50) NOT NULL,
  `routesName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `routes_info`
--

INSERT INTO `routes_info` (`id`, `routesName`) VALUES
('004661', 'TSC to Diyabari'),
('417226', 'Diyabari-T.S.C');

-- --------------------------------------------------------

--
-- Table structure for table `routes_order`
--

CREATE TABLE `routes_order` (
  `id` int(11) NOT NULL,
  `route_id` varchar(50) NOT NULL,
  `ordering` int(50) NOT NULL,
  `station_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `routes_order`
--

INSERT INTO `routes_order` (`id`, `route_id`, `ordering`, `station_id`) VALUES
(60, '417226', 1, 6),
(61, '417226', 2, 5),
(62, '417226', 3, 4),
(63, '417226', 4, 3),
(64, '417226', 5, 2),
(65, '417226', 6, 1),
(66, '004661', 1, 1),
(67, '004661', 2, 2),
(68, '004661', 3, 3),
(69, '004661', 4, 4),
(70, '004661', 5, 5),
(71, '004661', 6, 6);

-- --------------------------------------------------------

--
-- Table structure for table `schedule_info`
--

CREATE TABLE `schedule_info` (
  `id` int(11) NOT NULL,
  `route_id` varchar(11) NOT NULL,
  `train_id` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `schedule_info`
--

INSERT INTO `schedule_info` (`id`, `route_id`, `train_id`) VALUES
(279547, '004661', '3'),
(489618, '417226', '1'),
(846811, '417226', '3'),
(859349, '004661', '1');

-- --------------------------------------------------------

--
-- Table structure for table `stationinfo`
--

CREATE TABLE `stationinfo` (
  `id` int(15) NOT NULL,
  `stationName` varchar(100) NOT NULL,
  `stationMasterID` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stationinfo`
--

INSERT INTO `stationinfo` (`id`, `stationName`, `stationMasterID`) VALUES
(1, 'T.S.C', NULL),
(2, 'Shahbag', 10),
(3, 'Motijheel', 11),
(4, 'Banani', 0),
(5, 'Uttara', 0);

-- --------------------------------------------------------

--
-- Table structure for table `time_schedule`
--

CREATE TABLE `time_schedule` (
  `id` int(11) NOT NULL,
  `schedule_id` int(11) NOT NULL,
  `arrival_time` varchar(20) NOT NULL,
  `departure_time` varchar(20) NOT NULL,
  `station_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `time_schedule`
--

INSERT INTO `time_schedule` (`id`, `schedule_id`, `arrival_time`, `departure_time`, `station_id`) VALUES
(1, 859349, '12:05', '18:00', 1),
(2, 859349, '18:00', '18:00', 2),
(3, 859349, '18:00', '18:00', 3),
(4, 859349, '18:00', '18:00', 4),
(5, 859349, '18:00', '18:00', 5),
(6, 859349, '18:00', '06:05', 6),
(13, 279547, '03:15', '03:20', 1),
(14, 279547, '04:05', '04:10', 2),
(15, 279547, '05:04', '05:10', 3),
(16, 279547, '06:05', '06:10', 4),
(17, 279547, '07:05', '07:10', 5),
(18, 279547, '08:05', '08:10', 6),
(19, 846811, '01:00', '01:10', 6),
(20, 846811, '02:00', '02:05', 5),
(21, 846811, '03:00', '03:05', 4),
(22, 846811, '04:00', '04:05', 3),
(23, 846811, '05:00', '05:05', 2),
(24, 846811, '06:00', '06:05', 1),
(25, 489618, '08:00', '18:00', 6),
(26, 489618, '18:00', '18:00', 5),
(27, 489618, '18:00', '18:00', 4),
(28, 489618, '18:00', '18:00', 3),
(29, 489618, '18:00', '18:00', 2),
(30, 489618, '18:00', '17:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `train_info`
--

CREATE TABLE `train_info` (
  `id` int(11) NOT NULL,
  `train_name` varchar(50) NOT NULL,
  `total_seat` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `train_info`
--

INSERT INTO `train_info` (`id`, `train_name`, `total_seat`) VALUES
(3, 'Jomuna', 500);

-- --------------------------------------------------------

--
-- Table structure for table `trip_history`
--

CREATE TABLE `trip_history` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `source_station` int(11) NOT NULL,
  `destination_station` int(11) NOT NULL,
  `total_km` float(10,2) NOT NULL,
  `fare` int(11) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trip_history`
--

INSERT INTO `trip_history` (`id`, `user_id`, `source_station`, `destination_station`, `total_km`, `fare`, `date`) VALUES
(1, 10, 3, 5, 11.50, 70, '21/11/2019'),
(3, 10, 2, 5, 17.80, 105, '19/11/2019');

-- --------------------------------------------------------

--
-- Table structure for table `users_info`
--

CREATE TABLE `users_info` (
  `id` int(11) NOT NULL,
  `NID` varchar(50) NOT NULL,
  `user_mail` varchar(150) NOT NULL,
  `password` varchar(250) NOT NULL DEFAULT '0',
  `img_NID` varchar(250) NOT NULL,
  `isAccepted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_info`
--

INSERT INTO `users_info` (`id`, `NID`, `user_mail`, `password`, `img_NID`, `isAccepted`) VALUES
(3, '7OYhHcKeLQ', 'ruhana12@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '20191122124433_74528633_573350316804838_4614012039570915328_n.jpg', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_user`
--
ALTER TABLE `admin_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `NID` (`NID`);

--
-- Indexes for table `base_fair`
--
ALTER TABLE `base_fair`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `distance`
--
ALTER TABLE `distance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fair_per_km`
--
ALTER TABLE `fair_per_km`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `national_id`
--
ALTER TABLE `national_id`
  ADD PRIMARY KEY (`N_id`);

--
-- Indexes for table `routes_info`
--
ALTER TABLE `routes_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `routes_order`
--
ALTER TABLE `routes_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `route_id` (`route_id`);

--
-- Indexes for table `schedule_info`
--
ALTER TABLE `schedule_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `route_id` (`route_id`),
  ADD KEY `train_id` (`train_id`);

--
-- Indexes for table `stationinfo`
--
ALTER TABLE `stationinfo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `stationName` (`stationName`);

--
-- Indexes for table `time_schedule`
--
ALTER TABLE `time_schedule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `station_id` (`station_id`);

--
-- Indexes for table `train_info`
--
ALTER TABLE `train_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `train_name` (`train_name`);

--
-- Indexes for table `trip_history`
--
ALTER TABLE `trip_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_info`
--
ALTER TABLE `users_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `NID` (`NID`),
  ADD UNIQUE KEY `user_mail` (`user_mail`),
  ADD KEY `NID_2` (`NID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_user`
--
ALTER TABLE `admin_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `base_fair`
--
ALTER TABLE `base_fair`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `distance`
--
ALTER TABLE `distance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `routes_order`
--
ALTER TABLE `routes_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
--
-- AUTO_INCREMENT for table `stationinfo`
--
ALTER TABLE `stationinfo`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `time_schedule`
--
ALTER TABLE `time_schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `train_info`
--
ALTER TABLE `train_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `trip_history`
--
ALTER TABLE `trip_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users_info`
--
ALTER TABLE `users_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_user`
--
ALTER TABLE `admin_user`
  ADD CONSTRAINT `admin_user_ibfk_1` FOREIGN KEY (`NID`) REFERENCES `national_id` (`N_id`);

--
-- Constraints for table `routes_order`
--
ALTER TABLE `routes_order`
  ADD CONSTRAINT `routes_order_ibfk_1` FOREIGN KEY (`route_id`) REFERENCES `routes_info` (`id`);

--
-- Constraints for table `schedule_info`
--
ALTER TABLE `schedule_info`
  ADD CONSTRAINT `schedule_info_ibfk_1` FOREIGN KEY (`route_id`) REFERENCES `routes_info` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
