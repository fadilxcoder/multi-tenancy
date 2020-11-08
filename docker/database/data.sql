-- ========== MAIN DB ==========

USE `mydb`;

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `client`;
CREATE TABLE `client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `db_connection` text NOT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

INSERT INTO `client` (`id`, `db_connection`, `url`) VALUES
(1,	'mysqli://myuser:secret@database/db_1',	'client1'),
(2,	'mysqli://myuser:secret@database/db_2',	'client2'),
(3,	'mysqli://myuser:secret@database/db_3',	'client3'),
(4,	'mysqli://myuser:secret@database/db_4',	'client4');


-- ========== DB_1 ==========

CREATE DATABASE IF NOT EXISTS `db_1`;
GRANT ALL ON `db_1`.* TO 'myuser'@'%';

USE `db_1`;

DROP TABLE IF EXISTS `tbl_1`;
CREATE TABLE `tbl_1` (
  `_id` int(11) NOT NULL AUTO_INCREMENT,
  `_name` text NOT NULL,
  PRIMARY KEY (`_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO `tbl_1` (`_id`, `_name`) VALUES
(1,	'Generating an entire tenancy schema with all tables and data --- DB 1 : TABLE 1'),
(2,	'Generating an entire tenancy schema with only some tables and data --- DB 1 : TABLE 1'),
(3,	'Generating an entire tenancy schema with only some tables, no data and specified tenancy name --- DB 1 : TABLE 1');

DROP TABLE IF EXISTS `tbl_2`;
CREATE TABLE `tbl_2` (
  `_id` int(11) NOT NULL AUTO_INCREMENT,
  `_name` text NOT NULL,
  PRIMARY KEY (`_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO `tbl_2` (`_id`, `_name`) VALUES
(1,	'Generating an entire tenancy schema with all tables and data --- DB 1 : TABLE 2'),
(2,	'Generating an entire tenancy schema with only some tables and data --- DB 1 : TABLE 2'),
(3,	'Generating an entire tenancy schema with only some tables, no data and specified tenancy name --- DB 1 : TABLE 2');

DROP TABLE IF EXISTS `tbl_3`;
CREATE TABLE `tbl_3` (
  `_id` int(11) NOT NULL AUTO_INCREMENT,
  `_name` text NOT NULL,
  PRIMARY KEY (`_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO `tbl_3` (`_id`, `_name`) VALUES
(1,	'Generating an entire tenancy schema with all tables and data --- DB 1 : TABLE 3'),
(2,	'Generating an entire tenancy schema with only some tables and data --- DB 1 : TABLE 3'),
(3,	'Generating an entire tenancy schema with only some tables, no data and specified tenancy name --- DB 1 : TABLE 3');


-- ========== DB_2 ==========

CREATE DATABASE IF NOT EXISTS `db_2`;
GRANT ALL ON `db_2`.* TO 'myuser'@'%';

USE `db_2`;

DROP TABLE IF EXISTS `tbl_1`;
CREATE TABLE `tbl_1` (
  `_id` int(11) NOT NULL AUTO_INCREMENT,
  `_name` text NOT NULL,
  PRIMARY KEY (`_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO `tbl_1` (`_id`, `_name`) VALUES
(1,	'Generating an entire tenancy schema with all tables and data --- DB 2 : TABLE 1'),
(2,	'Generating an entire tenancy schema with only some tables and data --- DB 2 : TABLE 1'),
(3,	'Generating an entire tenancy schema with only some tables, no data and specified tenancy name --- DB 3 : TABLE 1');

DROP TABLE IF EXISTS `tbl_2`;
CREATE TABLE `tbl_2` (
  `_id` int(11) NOT NULL AUTO_INCREMENT,
  `_name` text NOT NULL,
  PRIMARY KEY (`_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO `tbl_2` (`_id`, `_name`) VALUES
(1,	'Generating an entire tenancy schema with all tables and data --- DB 2 : TABLE 2'),
(2,	'Generating an entire tenancy schema with only some tables and data --- DB 2 : TABLE 2'),
(3,	'Generating an entire tenancy schema with only some tables, no data and specified tenancy name --- DB 2 : TABLE 2');

DROP TABLE IF EXISTS `tbl_3`;
CREATE TABLE `tbl_3` (
  `_id` int(11) NOT NULL AUTO_INCREMENT,
  `_name` text NOT NULL,
  PRIMARY KEY (`_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO `tbl_3` (`_id`, `_name`) VALUES
(1,	'Generating an entire tenancy schema with all tables and data --- DB 2 : TABLE 3'),
(2,	'Generating an entire tenancy schema with only some tables and data --- DB 2 : TABLE 3'),
(3,	'Generating an entire tenancy schema with only some tables, no data and specified tenancy name --- DB 2 : TABLE 3');


-- ========== DB_3 ==========

CREATE DATABASE IF NOT EXISTS `db_3`;
GRANT ALL ON `db_3`.* TO 'myuser'@'%';

USE `db_3`;

DROP TABLE IF EXISTS `tbl_1`;
CREATE TABLE `tbl_1` (
  `_id` int(11) NOT NULL AUTO_INCREMENT,
  `_name` text NOT NULL,
  PRIMARY KEY (`_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO `tbl_1` (`_id`, `_name`) VALUES
(1,	'Generating an entire tenancy schema with all tables and data --- DB 3 : TABLE 1'),
(2,	'Generating an entire tenancy schema with only some tables and data --- DB 3 : TABLE 1'),
(3,	'Generating an entire tenancy schema with only some tables, no data and specified tenancy name --- DB 3 : TABLE 1');

DROP TABLE IF EXISTS `tbl_2`;
CREATE TABLE `tbl_2` (
  `_id` int(11) NOT NULL AUTO_INCREMENT,
  `_name` text NOT NULL,
  PRIMARY KEY (`_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO `tbl_2` (`_id`, `_name`) VALUES
(1,	'Generating an entire tenancy schema with all tables and data --- DB 3 : TABLE 2'),
(2,	'Generating an entire tenancy schema with only some tables and data --- DB 3 : TABLE 2'),
(3,	'Generating an entire tenancy schema with only some tables, no data and specified tenancy name --- DB 3 : TABLE 2');

DROP TABLE IF EXISTS `tbl_3`;
CREATE TABLE `tbl_3` (
  `_id` int(11) NOT NULL AUTO_INCREMENT,
  `_name` text NOT NULL,
  PRIMARY KEY (`_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO `tbl_3` (`_id`, `_name`) VALUES
(1,	'Generating an entire tenancy schema with all tables and data --- DB 3 : TABLE 3'),
(2,	'Generating an entire tenancy schema with only some tables and data --- DB 3 : TABLE 3'),
(3,	'Generating an entire tenancy schema with only some tables, no data and specified tenancy name --- DB 3 : TABLE 3');


-- ========== DB_4 ==========

CREATE DATABASE IF NOT EXISTS `db_4`;
GRANT ALL ON `db_4`.* TO 'myuser'@'%';

USE `db_4`;

DROP TABLE IF EXISTS `tbl_1`;
CREATE TABLE `tbl_1` (
  `_id` int(11) NOT NULL AUTO_INCREMENT,
  `_name` text NOT NULL,
  PRIMARY KEY (`_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO `tbl_1` (`_id`, `_name`) VALUES
(1,	'Generating an entire tenancy schema with all tables and data --- DB 4 : TABLE 1'),
(2,	'Generating an entire tenancy schema with only some tables and data --- DB 4 : TABLE 1'),
(3,	'Generating an entire tenancy schema with only some tables, no data and specified tenancy name --- DB 4 : TABLE 1');

DROP TABLE IF EXISTS `tbl_2`;
CREATE TABLE `tbl_2` (
  `_id` int(11) NOT NULL AUTO_INCREMENT,
  `_name` text NOT NULL,
  PRIMARY KEY (`_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO `tbl_2` (`_id`, `_name`) VALUES
(1,	'Generating an entire tenancy schema with all tables and data --- DB 4 : TABLE 2'),
(2,	'Generating an entire tenancy schema with only some tables and data --- DB 4 : TABLE 2'),
(3,	'Generating an entire tenancy schema with only some tables, no data and specified tenancy name --- DB 4 : TABLE 2');

DROP TABLE IF EXISTS `tbl_3`;
CREATE TABLE `tbl_3` (
  `_id` int(11) NOT NULL AUTO_INCREMENT,
  `_name` text NOT NULL,
  PRIMARY KEY (`_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO `tbl_3` (`_id`, `_name`) VALUES
(1,	'Generating an entire tenancy schema with all tables and data --- DB 4 : TABLE 3'),
(2,	'Generating an entire tenancy schema with only some tables and data --- DB 4 : TABLE 3'),
(3,	'Generating an entire tenancy schema with only some tables, no data and specified tenancy name --- DB 4 : TABLE 3');