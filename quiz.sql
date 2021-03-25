CREATE DATABASE IF NOT EXISTS quiz;
USE quiz;

CREATE TABLE IF NOT EXISTS account1 (
	id int(11) NOT NULL AUTO_INCREMENT,
  	username varchar(50) NOT NULL,
  	password varchar(255) NOT NULL,
  	email varchar(100) NOT NULL,
    PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

INSERT INTO account1 (id, username, password, email) VALUES (1, 'Edwin Vincent', 'edu', 'edwinvincent.evt@gmail.com');
select * from account1;

CREATE TABLE IF NOT EXISTS py (
	qs varchar(255) NOT NULL,
	option1 varchar(255),
    option2 varchar(255),
    option3 varchar(255),
    option4 varchar(255),
	ans varchar(10)
);
select * from py ;
INSERT INTO py values(' Is Python case sensitive when dealing with identifiers?','Yes','No','machine dependent','none of the mentioned','Yes');
INSERT INTO py values(' Which of the following cannot be a variable?','__init__','it','in','on','in');
INSERT INTO py values(' Which of these in not a core data type?','Lists','Dictionary','Tuples','Class','Class');
INSERT INTO py values(' Given a function that does not return any value, What value is thrown by default when executed in shell.','int','bool','void','none','none');
INSERT INTO py values(' In order to store values in terms of key and value we use what core data type.','lists','tuple','class','dictionary','dictionary');