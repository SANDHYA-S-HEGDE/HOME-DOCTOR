-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2020 at 07:04 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `homedoctor`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `aname` varchar(20) NOT NULL,
  `apass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`aname`, `apass`) VALUES
('sandhyashegde', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `cure`
--

CREATE TABLE `cure` (
  `did` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `cid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `disease`
--

CREATE TABLE `disease` (
  `did` int(11) NOT NULL,
  `dname` varchar(30) NOT NULL,
  `symptoms` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `disease`
--

INSERT INTO `disease` (`did`, `dname`, `symptoms`) VALUES
(1, 'COLD', 'Cough: can be with phlegm\r\nNasal: congestion, loss of smell, post-nasal drip, redness, runny nose, or sneezing,body ache,fever,redness,chills, fatigue\r\n'),
(2, 'HEAD ACHE', 'Nausea,vomiting,pain in the eyes,dizziness,tenderness of the scalp,tightness sensation in the head.'),
(3, 'NAUSEA', 'Dizziness,faintness,dry mouth,diarrhea,fever,abdominal pain,decreased urination'),
(4, 'VOMITING', 'Abdominal pain,diarrhea,fever,rapid pulse.'),
(5, 'ARTHRITIS', 'pain,stiffness,swelling,redness,decreased range of motion');

-- --------------------------------------------------------

--
-- Table structure for table `firstaid`
--

CREATE TABLE `firstaid` (
  `fid` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `symptoms` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `firstaid`
--

INSERT INTO `firstaid` (`fid`, `fname`, `symptoms`) VALUES
(1, 'SCORPION_BITE', 'Symptoms include immediate pain or burning, minor swelling, sensitivity to touch and numb or tingling sensation.'),
(2, 'snake bite', 'Fang marks in the skin\r\nBleeding\r\n?Blurred vision\r\n?Warmth and burning at the site of the bite\r\n?Seizures \r\n?Fever\r\n?Rapid heart rate'),
(3, 'dog bite', 'Redness ,Swollen,Warmth,Tender to touch,Increased pain and oozing ,Bleeding, bruising, infection.\r\n'),
(4, 'SPIDER BITE', 'Skin rash, intense muscle, chest pain and vomiting,Difficulty in breathing, abdominal cramps,White blisters, tenderness, weakness,fever,Joint and stomach pain'),
(5, 'Dehydration', 'Dry or sticky mouth,Decreased or no urine output,Urine that appears dark yellow\r\nLack of tearing,Sunken eyes,Lethargy and coma,In infants, the soft spot on the top of the head.');

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `mid` int(11) NOT NULL,
  `mname` varchar(50) NOT NULL,
  `ingredients` text NOT NULL,
  `procedures` text NOT NULL,
  `did` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`mid`, `mname`, `ingredients`, `procedures`, `did`) VALUES
(1, 'CCFtea', '½ tsp cumin seeds ½ tsp coriander seeds\r\n½ tsp fennel seeds 4 cups filtered water', 'put all the ingredients and boil them in the water', 1),
(2, 'BRAHMI', 'Ingredients\r\nBrahmi leaves\r\nGhee', 'Putting a few drops of brahmi and ghee in the nostrils may soothe headaches', 2),
(3, 'nausea medi', 'Cardamom seeds\r\nBlack cardmom \r\nGreen cardamom\r\n', 'chew 1 or two cardamom seeds, the change of taste can also help soothe the vomiting sensation. Black cardamom subdues kapha, pitta, and vata,', 3),
(4, 'vomitingmedi', 'Water\r\nLime\r\nSugar\r\nBaking soda', 'To a cup of water, add 10 drops of lime juice and half a teaspoon of sugar. Now, add 1/4 teaspoon of baking soda. Stir and drink. This effective remedy can stop nausea and vomiting immediately. ', 4),
(5, 'AJWANI', 'AJWAIN\r\nWater\r\nCardamom seeds', 'add a spoonful of carom seeds or ajwain in a tub of hot water and soak your aching joints in the water and sit for 5-10 minutes; this will help ease swelling and pain', 5);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `rid` int(11) NOT NULL,
  `rname` varchar(30) NOT NULL,
  `review` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`rid`, `rname`, `review`) VALUES
(1, 'lohith', 'thank you'),
(2, 'raksha', 'thank you it was helpful!!'),
(3, 'varun', 'happy! and satisfied by thsese medicines ...'),
(4, 'mandara', 'felt amazing after using this application!'),
(8, 'vidya', 'All the treatment techniques helped me to deal with my problem thank you..'),
(9, 'maria', 'medicine us not good'),
(10, 'dr. kamala', 'fentastic baby!!!');

-- --------------------------------------------------------

--
-- Table structure for table `treatment`
--

CREATE TABLE `treatment` (
  `tid` int(11) NOT NULL,
  `fid` int(11) NOT NULL,
  `treatments` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `treatment`
--

INSERT INTO `treatment` (`tid`, `fid`, `treatments`) VALUES
(1, 1, 'wash the areas with soap and water, use a cold pack on the area for ten minutes, repeating as necessary at 10\r\nMinutes intervals. call the poison control center for any severe symptoms.'),
(2, 2, 'Washing the bite with soap and water\r\nCovering the site with sterile bandage or dressing.Call emergency number and the poison control center. Calm the person, limit the moments, Take them to hospital.'),
(3, 3, 'Wash the wound with soap and warm water\r\nGently press with clean clothes over the wound to stop the Flow of blood.\r\nApply an antibacterial ointment to the wound Cover with the sterile Bandage \r\nWatch for signs of infection and go to doctor\r\n'),
(4, 4, 'Apply an icepack on and off the bite for 10 min at a time Evaluate the area to reduce swelling Take an antihistamine such as diphenhydramine (benadryl)To help with i tching Clean the area with soap and water to prevent the infection. Apply antibiotics and take them to doctor.\r\n\r\n\r\n'),
(5, 5, 'Help them to site down and give plenty of water to drink Giving them an ors If they have any painful cramps, encourage them to rest, help them  Stretch and massage their muscles Keep checking how they are feeling .');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `repassword` varchar(20) NOT NULL,
  `age` int(11) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `name`, `username`, `password`, `repassword`, `age`, `email`) VALUES
(1, 'sandhya', 'san', '123', '123', 20, 'sandhyabasoor@gmail.com'),
(4, 'lohith', 'lohith', '858', '858', 20, 'lohithhm@gmail.com'),
(6, 'vidya', 'vidya', '789', '789', 50, 'vidyabasur@gmail.com'),
(7, 'maria', 'maria', '123', '123', 20, 'maria@gmail.com'),
(8, 'kamalarani', 'drkamala', '123', '123', 52, 'asdfg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cure`
--
ALTER TABLE `cure`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `did` (`did`),
  ADD KEY `mid` (`mid`);

--
-- Indexes for table `disease`
--
ALTER TABLE `disease`
  ADD PRIMARY KEY (`did`);

--
-- Indexes for table `firstaid`
--
ALTER TABLE `firstaid`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`mid`),
  ADD KEY `did` (`did`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `treatment`
--
ALTER TABLE `treatment`
  ADD PRIMARY KEY (`tid`),
  ADD KEY `fid` (`fid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cure`
--
ALTER TABLE `cure`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `disease`
--
ALTER TABLE `disease`
  MODIFY `did` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `firstaid`
--
ALTER TABLE `firstaid`
  MODIFY `fid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `treatment`
--
ALTER TABLE `treatment`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cure`
--
ALTER TABLE `cure`
  ADD CONSTRAINT `cure_ibfk_1` FOREIGN KEY (`did`) REFERENCES `disease` (`did`),
  ADD CONSTRAINT `cure_ibfk_2` FOREIGN KEY (`mid`) REFERENCES `medicine` (`mid`);

--
-- Constraints for table `medicine`
--
ALTER TABLE `medicine`
  ADD CONSTRAINT `medicine_ibfk_1` FOREIGN KEY (`did`) REFERENCES `disease` (`did`);

--
-- Constraints for table `treatment`
--
ALTER TABLE `treatment`
  ADD CONSTRAINT `treatment_ibfk_1` FOREIGN KEY (`fid`) REFERENCES `firstaid` (`fid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
