CREATE DATABASE IF NOT EXISTS `quiz`;
USE `quiz`;

CREATE TABLE IF NOT EXISTS `account1` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
  	`username` varchar(50) NOT NULL,
  	`password` varchar(255) NOT NULL,
  	`email` varchar(100) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

INSERT INTO `account1` (`id`, `username`, `password`, `email`) VALUES (1, 'Edwin Vincent', 'edu', 'edwinvincent.evt@gmail.com');
select * from account1;
