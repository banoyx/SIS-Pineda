CREATE DATABASE sis_v2;

use sis_v2;

CREATE TABLE Course(
code VARCHAR(10) PRIMARY KEY,
course_name VARCHAR(30) NOT NULL
);


CREATE TABLE Student(
  studentID CHAR(9), #YYYY-XXXX
  name VARCHAR(30) NOT NULL,
  coursecode VARCHAR(10) NOT NULL,
  year ENUM('1st Year', '2nd Year', '3rd Year', '4th Year', '5th Year', 'Irregular') NOT NULL,
  gender ENUM('Female', 'Male', 'Other') NOT NULL,
  PRIMARY KEY(studentID),
  FOREIGN KEY(coursecode) REFERENCES
  Course(code)
);
