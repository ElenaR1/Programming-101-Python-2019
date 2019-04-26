BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS `student_to_course` (
	`id`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	`course_id`	INTEGER NOT NULL,
	`student_id`	INTEGER NOT NULL
);
INSERT INTO `student_to_course` VALUES (1,1,2);
INSERT INTO `student_to_course` VALUES (2,2,1);
INSERT INTO `student_to_course` VALUES (3,2,4);
INSERT INTO `student_to_course` VALUES (4,3,1);
CREATE TABLE IF NOT EXISTS `student` (
	`id`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	`name`	VARCHAR ( 30 ) NOT NULL UNIQUE
);
INSERT INTO `student` VALUES (1,'Dimitar');
INSERT INTO `student` VALUES (2,'Hristina');
INSERT INTO `student` VALUES (3,'Georgi');
INSERT INTO `student` VALUES (4,'Martin');
INSERT INTO `student` VALUES (5,'Ivo');
INSERT INTO `student` VALUES (6,'Rosi');
INSERT INTO `student` VALUES (7,'Rado');
CREATE TABLE IF NOT EXISTS `course` (
	`id`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	`language`	VARCHAR ( 255 ) NOT NULL,
	`year`	INTEGER NOT NULL
);
INSERT INTO `course` VALUES (1,'Python',2017);
INSERT INTO `course` VALUES (2,'Python',2018);
INSERT INTO `course` VALUES (3,'Python',2019);
INSERT INTO `course` VALUES (4,'Ruby',2018);
COMMIT;