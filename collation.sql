-- Adminer 4.7.1 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `administrators`;
CREATE TABLE `administrators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `administrators` (`id`, `fullname`, `username`, `password`) VALUES
(1,	'Umar Sunusi Maitalata',	'maitalata',	'123'),
(2,	'Maryam Usman Garbati',	'maryam',	'123');

DROP TABLE IF EXISTS `pollingunits`;
CREATE TABLE `pollingunits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `puName` varchar(100) NOT NULL,
  `registeredVoters` int(11) NOT NULL,
  `accreditedVoters` int(11) NOT NULL,
  `votesCasted` int(11) NOT NULL,
  `rejectedVotes` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `pollingunits` (`id`, `puName`, `registeredVoters`, `accreditedVoters`, `votesCasted`, `rejectedVotes`) VALUES
(1,	'Makafi ',	1011,	987,	934,	0),
(2,	'Makafi ',	1011,	987,	934,	0),
(3,	'Kobe',	231,	222,	214,	0),
(4,	'Kadu I',	325,	300,	289,	0),
(5,	'Hong',	541,	530,	415,	0),
(6,	'Hong',	541,	530,	415,	0),
(7,	'Hong',	541,	530,	415,	0),
(8,	'Choi',	210,	200,	200,	0),
(9,	'Kane',	211,	200,	190,	0),
(10,	'Kane',	211,	200,	190,	0),
(11,	'Kyauto',	210,	200,	199,	0),
(12,	'Safana',	310,	300,	300,	0),
(13,	'Kintse',	120,	115,	111,	0),
(14,	'Idara',	200,	189,	182,	0),
(15,	'NAFAHATU 1',	400,	388,	381,	0),
(16,	'NAFAHATU 2',	419,	411,	400,	0),
(17,	'Bayan Dala',	388,	351,	349,	0),
(18,	'Cikin Gida',	210,	200,	192,	0),
(19,	'Waje',	312,	301,	298,	0),
(20,	'Chong',	121,	120,	111,	0),
(21,	'Santali',	135,	129,	122,	0),
(22,	'Hac',	111,	108,	104,	0),
(23,	'Sansen',	171,	163,	159,	0),
(24,	'Yokan',	210,	201,	196,	0),
(25,	'Hankuyi I',	211,	209,	204,	0),
(26,	'Hong Kong I',	231,	220,	216,	0),
(27,	'Langtang',	331,	320,	320,	0),
(28,	'Keffi',	211,	200,	200,	0),
(29,	'Ruwasa I',	211,	204,	201,	0),
(30,	'Rami',	301,	296,	294,	0),
(31,	'Shang',	111,	111,	111,	0),
(32,	'Hac',	213,	202,	200,	0),
(33,	'Jibiya',	321,	317,	315,	0),
(34,	'Uba',	128,	125,	121,	0),
(35,	'Kiyawa',	321,	309,	305,	0),
(36,	'Henkuiyi',	323,	321,	321,	0),
(37,	'Sarari',	281,	277,	274,	0),
(38,	'Shirawa',	337,	330,	328,	0),
(39,	'Randa Goma',	231,	209,	201,	0),
(40,	'Hotoro',	211,	202,	200,	0),
(41,	'Helinski',	221,	121,	100,	0),
(42,	'Filin Mushe',	321,	309,	305,	0),
(43,	'Warure',	321,	320,	317,	0),
(44,	'Bayan Dala',	219,	203,	200,	0),
(45,	'Makafi',	239,	233,	230,	0),
(46,	'Lok 1',	333,	213,	200,	0),
(47,	'Panchang',	321,	301,	290,	0),
(48,	'Sheng',	330,	319,	315,	0),
(49,	'Waika 1',	200,	212,	123,	NULL),
(50,	'Langtang',	323,	234,	113,	NULL),
(51,	'Jinna',	331,	311,	300,	NULL),
(52,	'Lak',	211,	201,	99,	NULL),
(53,	'Namdas',	321,	320,	309,	46),
(54,	'Katanga',	226,	209,	199,	8),
(55,	'Madabo',	321,	309,	305,	23),
(56,	'Kan Tudu',	231,	228,	221,	2),
(57,	'hong 1',	233,	221,	201,	25),
(58,	'Hong 2',	222,	210,	201,	57);

DROP TABLE IF EXISTS `pollingunits2`;
CREATE TABLE `pollingunits2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `puName` varchar(100) NOT NULL,
  `registeredVoters` int(11) NOT NULL,
  `accreditedVoters` int(11) NOT NULL,
  `votesCasted` int(11) NOT NULL,
  `rejectedVotes` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `pollingunits2` (`id`, `puName`, `registeredVoters`, `accreditedVoters`, `votesCasted`, `rejectedVotes`) VALUES
(1,	'Dan dinshe 1',	381,	372,	370,	51),
(2,	'Dan dinshe 2',	357,	353,	308,	8);

DROP TABLE IF EXISTS `votespolled`;
CREATE TABLE `votespolled` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ward` varchar(60) NOT NULL,
  `pollingUnit` varchar(60) NOT NULL,
  `party` varchar(10) NOT NULL,
  `votesWon` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `votespolled` (`id`, `ward`, `pollingUnit`, `party`, `votesWon`) VALUES
(1,	'Idara',	'Hong',	'APC',	12),
(2,	'Idara',	'Hong',	'PDP',	12),
(3,	'Idara',	'Hong',	'PRP',	12),
(4,	'Kure',	'Kyauto',	'APC',	150),
(5,	'Kure',	'Kyauto',	'PDP',	33),
(6,	'Kure',	'Kyauto',	'PRP',	5),
(7,	'Kure',	'Safana',	'APC',	200),
(8,	'Kure',	'Safana',	'PDP',	50),
(9,	'Kure',	'Safana',	'PRP',	50),
(10,	'Kure',	'Kintse',	'APC',	88),
(11,	'Kure',	'Kintse',	'PDP',	11),
(12,	'Kure',	'Kintse',	'PRP',	16),
(13,	'Kure',	'Idara',	'APC',	120),
(14,	'Kure',	'Idara',	'PDP',	50),
(15,	'Kure',	'Idara',	'PRP',	12),
(16,	'Dala',	'NAFAHATU 1',	'PDP',	300),
(17,	'Dala',	'NAFAHATU 1',	'PRP',	81),
(18,	'Dala',	'NAFAHATU 2',	'PDP',	330),
(19,	'Dala',	'NAFAHATU 2',	'PRP',	70),
(20,	'Dala',	'Bayan Dala',	'PDP',	200),
(21,	'Dala',	'Bayan Dala',	'PRP',	131),
(22,	'Gidan Sarki',	'Cikin Gida',	'APC',	120),
(23,	'Gidan Sarki',	'Cikin Gida',	'PDP',	50),
(24,	'Gidan Sarki',	'Cikin Gida',	'PRP',	11),
(25,	'Gidan Sarki',	'Waje',	'APC',	208),
(26,	'Gidan Sarki',	'Waje',	'PDP',	50),
(27,	'Gidan Sarki',	'Waje',	'PRP',	20),
(28,	'Azog',	'Chong',	'APC',	91),
(29,	'Azog',	'Chong',	'PDP',	11),
(30,	'Azog',	'Chong',	'PRP',	1),
(31,	'Sheng',	'Santali',	'PDP',	66),
(32,	'Sheng',	'Santali',	'PRP',	59),
(33,	'Sheng',	'Santali',	'PDP',	11),
(34,	'Sheng',	'Hac',	'PDP',	51),
(35,	'Sheng',	'Hac',	'PRP',	50),
(36,	'Sheng',	'Hac',	'PDP',	2),
(37,	'Sheng',	'Sansen',	'PDP',	110),
(38,	'Sheng',	'Sansen',	'PRP',	22),
(39,	'Sheng',	'Sansen',	'PDP',	30),
(40,	'Ziyach',	'Yokan',	'APGA',	121),
(41,	'Ziyach',	'Yokan',	'KOWA',	40),
(42,	'Ziyach',	'Yokan',	'PDP',	11),
(43,	'Rukuba',	'Hankuyi I',	'PRP',	168),
(44,	'Rukuba',	'Hankuyi I',	'CPC',	22),
(45,	'Rukuba',	'Hankuyi I',	'ANPP',	10),
(46,	'Koton Karfe',	'Hong Kong I',	'APC',	160),
(47,	'Koton Karfe',	'Hong Kong I',	'PDP',	30),
(48,	'Koton Karfe',	'Hong Kong I',	'PRP',	3),
(49,	'Koton Karfe',	'Hong Kong I',	'APGA',	11),
(50,	'Koton Karfe',	'Langtang',	'APC',	100),
(51,	'Koton Karfe',	'Langtang',	'PDP',	151),
(52,	'Koton Karfe',	'Langtang',	'PRP',	11),
(53,	'Koton Karfe',	'Langtang',	'APGA',	21),
(54,	'Jaoji',	'Ruwasa I',	'PDP',	166),
(55,	'Jaoji',	'Ruwasa I',	'APC',	40),
(56,	'Jaoji',	'Ruwasa I',	'PRP',	1),
(57,	'Jaoji',	'Rami',	'PDP',	110),
(58,	'Jaoji',	'Rami',	'APC',	120),
(59,	'Jaoji',	'Rami',	'PRP',	50),
(60,	'Jaoji',	'Shang',	'PDP',	100),
(61,	'Jaoji',	'Shang',	'APC',	5),
(62,	'Jaoji',	'Shang',	'PRP',	6),
(63,	'Jaoji',	'Hac',	'PDP',	180),
(64,	'Jaoji',	'Hac',	'APC',	15),
(65,	'Jaoji',	'Hac',	'PRP',	4),
(66,	'Jaoji',	'Jibiya',	'PDP',	217),
(67,	'Jaoji',	'Jibiya',	'APC',	60),
(68,	'Jaoji',	'Jibiya',	'PRP',	20),
(69,	'Zamani',	'Uba',	'APC',	80),
(70,	'Zamani',	'Uba',	'PDP',	29),
(71,	'Zamani',	'Uba',	'KOWA',	11),
(72,	'Zamani',	'Kiyawa',	'APC',	140),
(73,	'Zamani',	'Kiyawa',	'PDP',	161),
(74,	'Zamani',	'Kiyawa',	'KOWA',	6),
(75,	'Zamani',	'Henkuiyi',	'APC',	201),
(76,	'Zamani',	'Henkuiyi',	'PDP',	95),
(77,	'Zamani',	'Henkuiyi',	'KOWA',	21),
(78,	'Madabo',	'Sarari',	'APC',	201),
(79,	'Madabo',	'Sarari',	'PDP',	61),
(80,	'Madabo',	'Sarari',	'PRP',	10),
(81,	'Madabo',	'Shirawa',	'APC',	161),
(82,	'Madabo',	'Shirawa',	'PDP',	163),
(83,	'Madabo',	'Shirawa',	'PRP',	2),
(84,	'Madabo',	'Randa Goma',	'APC',	121),
(85,	'Madabo',	'Randa Goma',	'PDP',	55),
(86,	'Madabo',	'Randa Goma',	'PRP',	5),
(87,	'Askira Uba',	'Hotoro',	'APC',	171),
(88,	'Askira Uba',	'Hotoro',	'PDP',	22),
(89,	'Askira Uba',	'Helinski',	'APC',	61),
(90,	'Askira Uba',	'Helinski',	'PDP',	27),
(91,	'Yan Alewa',	'Filin Mushe',	'APC',	251),
(92,	'Yan Alewa',	'Filin Mushe',	'PDP',	44),
(93,	'Yan Alewa',	'Warure',	'APC',	121),
(94,	'Yan Alewa',	'Warure',	'PDP',	172),
(95,	'Dala',	'Bayan Dala',	'APC',	131),
(96,	'Dala',	'Bayan Dala',	'PDP',	66),
(97,	'Dala',	'Makafi',	'APC',	201),
(98,	'Dala',	'Makafi',	'PDP',	22),
(99,	'Zungur',	'Lok 1',	'APC',	121),
(100,	'Zungur',	'Lok 1',	'PDP',	20),
(101,	'Zungur',	'Lok 1',	'PRP',	22),
(102,	'Zungur',	'Panchang',	'APC',	191),
(103,	'Zungur',	'Panchang',	'PDP',	88),
(104,	'Zungur',	'Panchang',	'PRP',	2),
(105,	'Zungur',	'Sheng',	'APC',	192),
(106,	'Zungur',	'Sheng',	'PDP',	102),
(107,	'Zungur',	'Sheng',	'PRP',	8),
(108,	'Kyaure',	'Waika 1',	'APC',	21),
(109,	'Kyaure',	'Waika 1',	'PDP',	33),
(110,	'Kyaure',	'Waika 1',	'PRP',	88),
(111,	'Kurmi',	'Langtang',	'APC',	22),
(112,	'Kurmi',	'Langtang',	'PDP',	40),
(113,	'Kurmi',	'Langtang',	'PRP',	22),
(114,	'Kurmi',	'Jinna',	'APC',	210),
(115,	'Kurmi',	'Jinna',	'PDP',	22),
(116,	'Kurmi',	'Jinna',	'PRP',	23),
(117,	'Kurmi',	'Lak',	'APC',	22),
(118,	'Kurmi',	'Lak',	'PDP',	22),
(119,	'Kurmi',	'Lak',	'PRP',	22),
(120,	'Umarawa',	'Namdas',	'APC',	219),
(121,	'Umarawa',	'Namdas',	'PDP',	33),
(122,	'Umarawa',	'Namdas',	'PRP',	11),
(123,	'Umarawa',	'Katanga',	'APC',	92),
(124,	'Umarawa',	'Katanga',	'PDP',	88),
(125,	'Umarawa',	'Katanga',	'PRP',	11),
(126,	'Dala',	'Madabo',	'APC',	111),
(127,	'Dala',	'Madabo',	'PDP',	160),
(128,	'Dala',	'Madabo',	'PRP',	11),
(129,	'Dala',	'Kan Tudu',	'APC',	120),
(130,	'Dala',	'Kan Tudu',	'PDP',	88),
(131,	'Dala',	'Kan Tudu',	'PRP',	11),
(132,	'Yalwa',	'hong 1',	'APC',	121),
(133,	'Yalwa',	'hong 1',	'PDP',	33),
(134,	'Yalwa',	'hong 1',	'PRP',	22),
(135,	'Yalwa',	'Hong 2',	'APC',	22),
(136,	'Yalwa',	'Hong 2',	'PDP',	100),
(137,	'Yalwa',	'Hong 2',	'PRP',	22);

DROP TABLE IF EXISTS `votespolled2`;
CREATE TABLE `votespolled2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ward` varchar(60) NOT NULL,
  `pollingUnit` varchar(60) NOT NULL,
  `party` varchar(10) NOT NULL,
  `votesWon` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `votespolled2` (`id`, `ward`, `pollingUnit`, `party`, `votesWon`) VALUES
(1,	'Gobirawa',	'Dan dinshe 1',	'APC',	120),
(2,	'Gobirawa',	'Dan dinshe 1',	'PDP',	177),
(3,	'Gobirawa',	'Dan dinshe 1',	'PRP',	22),
(4,	'Gobirawa',	'Dan dinshe 2',	'APC',	109),
(5,	'Gobirawa',	'Dan dinshe 2',	'PDP',	111),
(6,	'Gobirawa',	'Dan dinshe 2',	'PRP',	80);

DROP TABLE IF EXISTS `wards`;
CREATE TABLE `wards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ward` varchar(100) DEFAULT NULL,
  `numberOfPU` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `wards` (`id`, `ward`, `numberOfPU`) VALUES
(1,	'Dala',	3),
(2,	'Tanaka',	2),
(3,	'Kankara',	3),
(4,	'Idara',	4),
(5,	'Zangon Kataf',	2),
(6,	'Keffi',	3),
(7,	'Jada',	3),
(8,	'Kure',	3),
(9,	'Dala',	2),
(10,	'Gidan Sarki',	2),
(11,	'Azog',	2),
(12,	'Sheng',	3),
(13,	'Ziyach',	3),
(14,	'Rukuba',	3),
(15,	'Koton Karfe',	3),
(16,	'Jaoji',	2),
(17,	'Zamani',	2),
(18,	'Madabo',	3),
(19,	'Askira Uba',	2),
(20,	'Yan Alewa',	2),
(21,	'Dala',	2),
(22,	'Zungur',	3),
(23,	'Kyaure',	2),
(24,	'Kurmi',	3),
(25,	'Umarawa',	2),
(26,	'Dala',	2),
(27,	'Yalwa',	2);

DROP TABLE IF EXISTS `wards2`;
CREATE TABLE `wards2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ward` varchar(100) DEFAULT NULL,
  `numberOfPU` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `wards2` (`id`, `ward`, `numberOfPU`) VALUES
(1,	'Gobirawa',	2);

-- 2019-10-14 21:14:00
