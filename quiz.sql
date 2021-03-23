CREATE DATABASE IF NOT EXISTS `quiz`;
USE `quiz`;

CREATE TABLE IF NOT EXISTS `account1` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
  	`username` varchar(50) NOT NULL,
  	`password` varchar(255) NOT NULL,
  	`email` varchar(100) NOT NULL,
    `phone` varchar(100) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

INSERT INTO `account1` (`id`, `username`, `password`, `email`,`phone`) VALUES (1, 'Edwin Vincent', 'edu', 'edwinvincent.evt@gmail.com','9876543210');
select * from account1;

CREATE TABLE IF NOT EXISTS `account2` (
  	`username` varchar(50) NOT NULL,
  	`password` varchar(255) NOT NULL,
    PRIMARY KEY (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

INSERT INTO `account2` (`username`, `password`) VALUES ('Edwin Vincent', 'edu');
select * from account2;
