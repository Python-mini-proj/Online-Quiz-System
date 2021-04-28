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
	ans varchar(255)
);

select * from py ;
INSERT INTO py values(' Is Python case sensitive when dealing with identifiers?','Yes','No','machine dependent','none of the mentioned','Yes');
INSERT INTO py values(' Which of the following cannot be a variable?','__init__','it','in','on','in');
INSERT INTO py values(' Which of these in not a core data type?','Lists','Dictionary','Tuples','Class','Class');
INSERT INTO py values(' Given a function that does not return any value, What value is thrown by default when executed in shell.','int','bool','void','none','none');
INSERT INTO py values(' In order to store values in terms of key and value we use what core data type.','lists','tuple','class','dictionary','dictionary');

CREATE TABLE IF NOT EXISTS pyscore (
	counter INT  NOT NULL ,
  	Name varchar(50) NOT NULL,
  	score int NOT NULL
    
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

insert into pyscore value(6,"Christopher", 3);
insert into pyscore value(2,"Abhishek", 4);
insert into pyscore value(4,"Pratik", 3);
select * from pyscore;
select * from pyscore order by score desc , counter asc;
truncate table pyscore;
truncate table account1;
select * from py;
-- 1
INSERT INTO py values(' Is Python case sensitive when dealing with identifiers?','Yes','No','machine dependent','none of the mentioned','Yes');
-- 2
INSERT INTO py values(' Which of the following cannot be a variable?','__init__','it','in','on','in');
-- 3
INSERT INTO py values(' Which of these in not a core data type?','Lists','Dictionary','Tuples','Class','Class');
-- 4
INSERT INTO py values(' Given a function that does not return any value, What value is thrown by default when executed in shell.','int','bool','void','none','none');
-- 5
INSERT INTO py values(' In order to store values in terms of key and value we use what core data type.','lists','tuple','class','dictionary','dictionary');
-- 6
 INSERT INTO py VALUES(' Operators with the same precedence are evaluated in which manner?', 'left to right', 'right to left', 'cant say', 'none of the above', 'left to right');
-- 7
INSERT INTO py VALUES(' Which one of the following has the highest precedence in the expression?', 'exponential', 'addition', 'multiplication', 'parentheses', 'parantheses');
-- 8
INSERT INTO py VALUES(' What happens if the base condition isnt defined in recursive programs?', 'program gets into an infinite loop', 'program runs once', 'program runs n number of times where n is the argument given to the function', 'an exception is thrown', 'program gets into an infinite loop');
-- 9
INSERT INTO py VALUES(' Which function overloads the == operator?', '__eq__()', '__equ__()', '__isequal__()', 'none of the mentioned', '__eq__()');
-- 10
INSERT INTO py VALUES(' Which operator is overloaded by the __or__() function?', '||', '|', '//', '/', '|');


-- ----------------MP------------------------
CREATE TABLE IF NOT EXISTS mp (
	qs varchar(255) NOT NULL,
	option1 varchar(255),
    option2 varchar(255),
    option3 varchar(255),
    option4 varchar(255),
	ans varchar(255)
);
select * from mp;
-- 1
INSERT INTO mp VALUES(' In register address mode, the operand is stored in', '8-bit general purpose register', '16-bit general purpose register', 'si or di', 'all of the mentioned', 'all of the mentioned');
-- 2
INSERT INTO mp VALUES(' The instruction, MOV AX, 0005H belongs to the address mode', 'register', 'direct', 'immidiate', 'register relative', 'immidiate');
-- 3
INSERT INTO mp VALUES(' The instruction, MOV AX,[BX] is an example of', 'direct addressing mode', 'register addressing mode', 'register relative addressing mode', 'register indirect addressing mode','register indirect addressing mode');
-- 4
INSERT INTO mp VALUES(' The bits that affect the result of arithmetic operations like ADD, SUB, MUL, DIV are', 'condition code bits', 'rounding control bits', 'masking bits', 'precision control bits','precision control bits');
-- 5
INSERT INTO mp VALUES(' The coded object modules of the program to be assembled are present in', '.ASM file','.OBJ file', '.EXE file','.OBJECT file','.OBJ file');
-- 6
INSERT INTO mp VALUES(' The 80286 is able to address the physical memory of', '8 MB', '16 MB', '24MB', '64 MB', '16MB');
-- 7
INSERT INTO mp VALUES(' The process of making the physical memory free by storing the portion of program and partial results in the secondary storage called', 'mapping', 'swapping in', 'swapping out', 'pipelining', 'swapping out');
-- 8
INSERT INTO mp VALUES(' The memory management and protection mechanisms are enabled with advanced instruction set when 80286 is operated in', 'normal mode', 'real address mode', 'virtual address mode', 'all of the mentioned', 'virtual address mode');
-- 9
INSERT INTO mp VALUES(' The CPU of 80286 contains', '16-bit general purpose registers', '16-bit segment registers', 'status and control register', 'all of the mentioned', 'all of the mentioned');
-- 10
INSERT INTO mp VALUES(' Which of the block is not considered as a block of an architecture of 80286?', 'address unit', 'bus unit', 'instruction unit', 'control unit', 'control unit');

-- ------------------------------OS--------------------------
CREATE TABLE IF NOT EXISTS os (
	qs varchar(255) NOT NULL,
	option1 varchar(255),
    option2 varchar(255),
    option3 varchar(255),
    option4 varchar(255),
	ans varchar(255)
);
select * from os;

-- 1
INSERT INTO os VALUES(' Which module gives control of the CPU to the process selected by the short-term scheduler?','dispatcher', 'interrupt', 'scheduler', 'none of the mentioned', 'dipatcher');
-- 2
INSERT INTO os VALUES(' In priority scheduling algorithm ____________', 'CPU is allocated to the process with highest priority', 'CPU is allocated to the process with lowest priority', ' Equal priority processes can not be scheduled', ' None of the mentioned', 'CPU is allocated to the process with highest priority');
-- 3
INSERT INTO os VALUES(' In Unix, Which system call creates the new process?', 'fork', 'create', 'new', 'none of the mentioned', 'fork');
-- 4
INSERT INTO os VALUES(' Which system call can be used by a parent process to determine the termination of child process?', 'wait', 'exit', 'fork', 'get', 'wait');
-- 5
INSERT INTO os VALUES(' _________ replacement allows each process to only select from its own set of allocated frames.', 'local', 'universal', 'global', 'public', 'local');
-- 6
INSERT INTO os VALUES(' What is a reusable resource?', 'that can be used by one process at a time and is not depleted by that use', 'that can be used by more than one process at a time', 'that can be shared between various threads', 'none of the mentioned', 'that can be used by one process at a time and is not depleted by that use');
-- 7
INSERT INTO os VALUES(' Which one of the following is the deadlock avoidance algorithm?', 'bankers algorithm' ,'round robin algorithm', 'elevator algorithm', 'karns algorithm', 'bankers algorithm');
-- 8
INSERT INTO os VALUES(' A problem encountered in multitasking when a process is perpetually denied necessary resources is called ____________', 'deadlock', 'starvation', 'inversion', 'aging', 'starvation');
-- 9
INSERT INTO os VALUES(' A memory buffer used to accommodate a speed differential is called __________', 'stack pointer', 'cache', 'accumulator', 'disk buffer', 'cache');
-- 10
INSERT INTO os VALUES(' Which one of the following is a synchronization tool?', 'thread', 'pipe', 'semaphore', 'socket', 'semaphore');

-- --------------AOA----------------------
CREATE TABLE IF NOT EXISTS aoa (
	qs varchar(255) NOT NULL,
	option1 varchar(255),
    option2 varchar(255),
    option3 varchar(255),
    option4 varchar(255),
	ans varchar(255)
);
SELECT * FROM aoa;

-- 1 
INSERT INTO aoa VALUES(' What is the average case time complexity of binary search using recursion?', 'O(nlogn)', 'O(logn)', 'O(n)', 'O(n^2)', 'O(logn)');
-- 2
INSERT INTO aoa VALUES(' What is the worst case complexity of binary search using recursion?', 'O(nlogn)', 'O(logn)', 'O(n)', 'O(n^2)', 'O(logn)');
-- 3
INSERT INTO aoa VALUES(' What is the time complexity of binary search with iteration?', 'O(nlogn)', 'O(logn)', 'O(n)', 'O(n^2)', 'O(logn)');
-- 4
INSERT INTO aoa VALUES(' Which of the following method is used for sorting in merge sort?', 'merging', 'partioninng', 'selection', 'exchanging', 'merging');
-- 5
INSERT INTO aoa VALUES(' Which of the following is not in place sorting algorithm by default?', 'merge sort', 'quick sort', 'heap sort', 'insertion sort', 'merge sort');
-- 6
INSERT INTO aoa VALUES(' Which of the following sorting algorithm is best suited if the elements are already sorted?', 'heap sort', 'quick sort', 'merge sort', 'insertion sort', 'insertion sort');
-- 7
INSERT INTO aoa VALUES(' Which of the following is good for sorting arrays having less than 100 elements?', 'quick sort', 'selection sort', 'merge sort', 'insertion sort', 'insertion sort');
-- 8
INSERT INTO aoa VALUES(' Which of the following is not an exchange sort?', 'bubble sort', 'quick sort', 'partition sort', 'insertion sort', 'insertion sort');
-- 9
INSERT INTO aoa VALUES(' Which one of the following sorting algorithm is best suited to sort an array of 1 million elements?', 'bubble sort', 'insertion sort', 'merge sort', 'quick sort', 'quick sort');
-- 10
INSERT INTO aoa VALUES(' How many priority queue operations are involved in Dijkstras Algorithm?', '1', '2', '3', '4', '3');


-- ----------------DBMS---------------
CREATE TABLE IF NOT EXISTS DBMS (
	qs varchar(255) NOT NULL,
	option1 varchar(255),
    option2 varchar(255),
    option3 varchar(255),
    option4 varchar(255),
	ans varchar(255)
);
SELECT * FROM DBMS;
-- 1 
INSERT INTO DBMS VALUES(' A collection of related data.', 'information', 'valuable information', 'database', 'metadata', 'database');
-- 2
INSERT INTO DBMS VALUES(' Which of the following is not an object-based logical model?', 'ER', 'network', 'semantic', 'functional', 'network');
-- 3
INSERT INTO DBMS VALUES(' Which of these query will display the the table given above ?', 'select employee from name', 'select name', 'select name from employee', 'select employee', 'select name from employee');
-- 4
INSERT INTO DBMS VALUES(' The descriptive property possessed by each entity set is _________', 'entity', 'attribute','relation', 'model', 'attribute');
-- 5
INSERT INTO DBMS VALUES(' Which one of the following uniquely identifies the elements in the relation?', 'secondary key', 'primary key', 'foreign key', 'composite key', 'primary key');
-- 6 
INSERT INTO DBMS VALUES(' ____________ is preferred method for enforcing data integrity','constraints', 'stored procedure', 'triggers', 'cursors', 'constraints');
-- 7
INSERT INTO DBMS VALUES(' To remove a relation from an SQL database, we use the ______ command.', 'delete', 'purge', 'remove', 'drop table', 'drop table');
-- 8
INSERT INTO DBMS VALUES(' Updates that violate __________ are disallowed.', 'integrity constraints', 'transaction control', 'authorization', 'ddl constraints', 'integrity constraints');
-- 9
INSERT INTO DBMS VALUES(' _____ operator is used for appending two strings.', '&', '%', '||', '_', '||');
-- 10
INSERT INTO DBMS VALUES(' Which one of the following attribute can be taken as a primary key?', 'name', 'street', 'Id', 'department', 'Id');

-- -----------------APTITUDE-----------------
CREATE TABLE IF NOT EXISTS GK (
	qs varchar(255) NOT NULL,
	option1 varchar(255),
    option2 varchar(255),
    option3 varchar(255),
    option4 varchar(255),
	ans varchar(255)
);
SELECT * FROM GK;

-- 1
INSERT INTO GK VALUES(' The length of the bridge, which a train 130 metres long and travelling at 45 km/hr can cross in 30 seconds, is: ', '200m', '245m', '225m', '250m', '245m');
-- 2
INSERT INTO GK VALUES(' A train 125 m long passes a man, running at 5 km/hr in the same direction in which the train is going, in 10 seconds. The speed of the train is:(IN KM/H)', '45', '50', '55', '54', '50');
-- 3
INSERT INTO GK VALUES(' Find the one which does not belong to that group ?', '16', '28' ,'36', '64', '28');
-- 4
INSERT INTO GK VALUES(' Find the one which does not belong to that group ?', '13', '23', '53', '57', '57');
-- 5
INSERT INTO GK VALUES(' What number has a 5:1 ratio to the number 10?', '42', '50', '55', '62', '50');
-- 6 
INSERT INTO GK VALUES(' Rs.160 contained in a box consists of one rupee, 50 paisa and 25 paisa coins in the ratio 4:5:6. What is the number of 25 paisa coins?', '100', '115', '120', '150', '120');
-- 7
INSERT INTO GK VALUES(' What is the probability that a leap year has 53 Sundays and 52 Mondays?', '0', '1/7', '2/7', '6/7', '1/7');
-- 8
INSERT INTO GK VALUES(' A certain amount earns simple interest of Rs. 1750 after 7 years. Had the interest been 2% more, how much more interest would it have earned?', '35', '245', '359', 'CANNOT BE DETERMINED', 'CANNOT BE DETERMINED');
-- 9
INSERT INTO GK VALUES(' A lent Rs. 600 to B for 2 years and Rs. 150 to c for 4 years and receive as together from both Rs. 90 as simple interest. The rate of interest is:', '4%', '5%', '10%', '12%', '5%');
-- 10
INSERT INTO GK VALUES(' A man buys an article and sells it at a profit of 20%. If he had bought it at 20% less and sold it for Rs.75 less, he could have gained 25%. What is the cost price?', 'Rs.370', 'Rs.375', 'Rs.350', 'Rs.300', 'Rs.375');






