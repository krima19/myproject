-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2021 at 07:55 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crud`
--

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(12) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(100) NOT NULL,
  `hobbies` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `zipcode` varchar(100) NOT NULL,
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `firstname`, `lastname`, `email`, `dob`, `gender`, `hobbies`, `address`, `city`, `state`, `zipcode`, `image`) VALUES
(3, 'Krima', 'ghetiya', 'krimaghetiya19@gmail.com', '2020-05-12', 'female', 'writting,', 'jam', 'India', 'china', '456982', 'img1.jpg'),
(4, 'bittu', 'sss', 'sss@gmail.com', '2020-05-12', 'female', 'writting,adventure,playing,', 'sdsdsd', 'pakistan', 'china', '2323', 'img4.jpg'),
(5, 'bittu', 'sss', 'sss@gmail.com', '2020-05-12', 'female', 'reading,writting,', 'sdsdsd', 'china', 'India', '2344', 'IMG_9079.jpg'),
(7, 'Krima', 'ghetiya', 'krimaghetiya19@gmail.com', '2020-05-12', 'female', 'reading,writting,', 'Lalpur', 'India', 'china', '456982', 'img1.jpg'),
(8, '', '', '', '0000-00-00', '', '', '', 'India', 'pakistan', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(12) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `mobile`) VALUES
(4, 'krima', 'krimaghetiya19@gmail.com', 2147483647),
(5, 'bittu', 'bittupatel@gmail.com', 2147483647),
(8, 'client', 'krimaghetiya19@gmail.com', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(12) NOT NULL,
  `name` varchar(12) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'Meris', 'mgarrick0@dedecms.com', 'Maroon'),
(2, 'Delcine', 'dluno1@tripod.com', 'Fuscia'),
(3, 'Shep', 'sbarnwille2@ucoz.ru', 'Indigo'),
(4, 'Larissa', 'lroy3@chron.com', 'Pink'),
(5, 'Stanton', 'sbarthorpe4@1und1.de', 'Indigo'),
(6, 'Daryl', 'ddavidge5@berkeley.edu', 'Aquamarine'),
(7, 'Anestassia', 'amacmenemy6@google.com.br', 'Maroon'),
(8, 'Linus', 'lliptrod7@narod.ru', 'Mauv'),
(9, 'Maxine', 'mscudamore8@thetimes.co.uk', 'Red'),
(10, 'Merrily', 'mloosely9@chron.com', 'Mauv'),
(11, 'Inger', 'iklimpta@guardian.co.uk', 'Goldenrod'),
(12, 'Hammad', 'hparkynb@cdbaby.com', 'Pink'),
(13, 'Tobin', 'tpreciousc@theguardian.com', 'Yellow'),
(14, 'Theresina', 'treltond@earthlink.net', 'Indigo'),
(15, 'Dmitri', 'ddufere@google.pl', 'Red'),
(16, 'Marysa', 'mbeetlesf@artisteer.com', 'Mauv'),
(17, 'Latia', 'lbiancog@wufoo.com', 'Orange'),
(18, 'Ezequiel', 'esadlierh@paypal.com', 'Red'),
(19, 'Raddie', 'rvitteryi@zimbio.com', 'Crimson'),
(20, 'Hamel', 'hleiferj@disqus.com', 'Orange'),
(21, 'Arman', 'asleepk@google.ca', 'Maroon'),
(22, 'Magdalene', 'mpollastronel@time.com', 'Purple'),
(23, 'Hamlen', 'hcurmem@netvibes.com', 'Violet'),
(24, 'Christiana', 'cbarradelln@ifeng.com', 'Khaki'),
(25, 'Dario', 'dsticklando@ox.ac.uk', 'Teal'),
(26, 'Elinor', 'etofanop@hhs.gov', 'Turquoise'),
(27, 'Abbi', 'aeliassonq@theglobeandmail.com', 'Orange'),
(28, 'Blisse', 'bjeacopr@twitter.com', 'Purple'),
(29, 'Faustina', 'fclellands@blogger.com', 'Green'),
(30, 'Steven', 'scardenozat@youku.com', 'Turquoise'),
(31, 'Rina', 'rallnattu@businessinsider.com', 'Turquoise'),
(32, 'Leontine', 'lheatlyv@ihg.com', 'Mauv'),
(33, 'Jacki', 'jgerredw@marriott.com', 'Khaki'),
(34, 'Nikoletta', 'nhallibonex@t.co', 'Turquoise'),
(35, 'Merrill', 'mcleimenty@narod.ru', 'Red'),
(36, 'Vittoria', 'vchristianz@shop-pro.jp', 'Yellow'),
(37, 'Jobyna', 'jmulder10@mozilla.org', 'Crimson'),
(38, 'Elyn', 'ebridgens11@yolasite.com', 'Crimson'),
(39, 'Ryan', 'rrabl12@house.gov', 'Goldenrod'),
(40, 'Celene', 'cfragino13@google.com.au', 'Green'),
(41, 'Ludovika', 'lmerritt14@google.de', 'Turquoise'),
(42, 'Franklin', 'fgeertz15@github.io', 'Orange'),
(43, 'Link', 'lmowsdill16@simplemachines.org', 'Green'),
(44, 'Harrison', 'halejandro17@github.io', 'Purple'),
(45, 'Ogdon', 'omccudden18@japanpost.jp', 'Blue'),
(46, 'Devonne', 'dnewe19@uiuc.edu', 'Khaki'),
(47, 'Bjorn', 'bmanueli1a@hp.com', 'Violet'),
(48, 'Friedrich', 'fbrachell1b@google.com.hk', 'Fuscia'),
(49, 'Say', 'sbrocklesby1c@squarespace.com', 'Violet'),
(50, 'Guillema', 'gdadswell1d@wikispaces.com', 'Green'),
(51, 'Ola', 'onassie1e@wiley.com', 'Crimson'),
(52, 'Elia', 'ecollinette1f@washingtonpost.com', 'Mauv'),
(53, 'Tatum', 'tvandriel1g@chron.com', 'Pink'),
(54, 'Burgess', 'blemarquis1h@mtv.com', 'Yellow'),
(55, 'Gillian', 'goconnolly1i@comsenz.com', 'Orange'),
(56, 'Timothy', 'tpace1j@joomla.org', 'Teal'),
(59, 'Geoffry', 'glaurenceau1m@barnesandnoble.com', 'Khaki'),
(60, 'Deana', 'dsumption1n@hhs.gov', 'Purple'),
(61, 'Gill', 'gextance1o@nifty.com', 'Aquamarine'),
(62, 'Karin', 'ktolomio1p@plala.or.jp', 'Violet'),
(63, 'Ambur', 'abrennenstuhl1q@skyrock.com', 'Turquoise'),
(64, 'Hardy', 'hgraysmark1r@shinystat.com', 'Goldenrod'),
(65, 'Barbee', 'bbolens1s@illinois.edu', 'Indigo'),
(66, 'Carmina', 'cchrstine1t@skyrock.com', 'Blue'),
(67, 'Dixie', 'dredman1u@people.com.cn', 'Aquamarine'),
(68, 'Bowie', 'bbroadbury1v@youtube.com', 'Mauv'),
(69, 'Fonz', 'fmelvin1w@instagram.com', 'Crimson'),
(70, 'Michele', 'msimek1x@merriam-webster.com', 'Violet'),
(101, 'Celeste', 'calabaster2s@chronoengine.com', 'Blue'),
(102, 'Penelope', 'plegat2t@imdb.com', 'Teal'),
(103, 'Gabriel', 'glouche2u@cloudflare.com', 'Green'),
(104, 'Mina', 'mell2v@t-online.de', 'Purple'),
(105, 'Suellen', 'sabrashkin2w@wordpress.com', 'Mauv'),
(106, 'Loralee', 'lpettisall2x@amazon.de', 'Blue'),
(107, 'Granny', 'gbooth2y@google.es', 'Goldenrod'),
(108, 'Karlee', 'kalcido2z@qq.com', 'Crimson'),
(109, 'Dionisio', 'dtrainor30@boston.com', 'Maroon'),
(110, 'Loralie', 'lrisley31@answers.com', 'Indigo'),
(111, 'De witt', 'dbeebee32@prweb.com', 'Khaki'),
(112, 'Tobey', 'tdennis33@google.de', 'Indigo'),
(114, 'Annadiane', 'aarnholz35@mit.edu', 'Turquoise'),
(115, 'Manfred', 'mpfeffle36@newyorker.com', 'Yellow'),
(116, 'Bettine', 'btoppes37@geocities.com', 'Purple'),
(117, 'Yul', 'ywevell38@unesco.org', 'Violet'),
(118, 'Arley', 'adewerk39@bluehost.com', 'Maroon'),
(119, 'Jacinta', 'jdumbarton3a@alibaba.com', 'Teal'),
(120, 'Valma', 'vhalhead3b@51.la', 'Maroon'),
(121, 'Nickolai', 'npunshon3c@rakuten.co.jp', 'Crimson'),
(122, 'Obidiah', 'ojory3d@clickbank.net', 'Goldenrod'),
(123, 'Che', 'cmarages3e@accuweather.com', 'Purple'),
(124, 'Brigitte', 'bsmoth3f@tinyurl.com', 'Orange'),
(125, 'Sherilyn', 'sdepinna3g@cbsnews.com', 'Indigo'),
(126, 'Alanah', 'ahoxey3h@ft.com', 'Green'),
(127, 'Padriac', 'pstephens3i@reference.com', 'Teal'),
(128, 'Winifred', 'wrosenblum3j@com.com', 'Crimson'),
(129, 'Valene', 'vbellwood3k@biblegateway.com', 'Purple'),
(130, 'Bertrando', 'bguerriero3l@blinklist.com', 'Violet'),
(131, 'Humphrey', 'hfakes3m@gnu.org', 'Purple'),
(132, 'Milo', 'mbazell3n@gnu.org', 'Puce'),
(133, 'Goraud', 'gsleath3o@wikia.com', 'Turquoise'),
(134, 'Alphonso', 'achampkin3p@imageshack.us', 'Teal'),
(135, 'Ashlen', 'amoncreiff3q@seesaa.net', 'Purple'),
(136, 'Devondra', 'dfitzer3r@gizmodo.com', 'Fuscia'),
(137, 'Ibrahim', 'icoope3s@mtv.com', 'Yellow'),
(138, 'Hyatt', 'hmucklestone3t@imdb.com', 'Violet'),
(139, 'Valentina', 'vlobb3u@usda.gov', 'Crimson'),
(140, 'Gearard', 'gridesdale3v@ebay.co.uk', 'Crimson'),
(141, 'Bartie', 'bseivertsen3w@narod.ru', 'Aquamarine'),
(142, 'Alika', 'adibiasio3x@foxnews.com', 'Fuscia'),
(143, 'Blakelee', 'bphelp3y@homestead.com', 'Goldenrod'),
(144, 'Tabbie', 'twellard3z@cbc.ca', 'Khaki');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
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
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
