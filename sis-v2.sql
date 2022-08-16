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

INSERT INTO Course (code, course_name) VALUES ('chem','Chemistry');
INSERT INTO Course (code, course_name) VALUES ('mcb','Microbiology');
INSERT INTO Course (code, course_name) VALUES ('anb','Animal Biology');
INSERT INTO Course (code, course_name) VALUES ('ee','Electrical Engineering');
INSERT INTO Course (code, course_name) VALUES ('phys','Physics');
INSERT INTO Course (code, course_name) VALUES ('nu','Nursing');
INSERT INTO Course (code, course_name) VALUES ('it','Information Technology');
INSERT INTO Course (code, course_name) VALUES ('psych','Psychology');
INSERT INTO Course (code, course_name) VALUES ('cpe','Computer Engineering');
INSERT INTO Course (code, course_name) VALUES ('acc','Accounting');
INSERT INTO Course (code, course_name) VALUES ('his','History');
INSERT INTO Course (code, course_name) VALUES ('polsci','Political Science');
INSERT INTO Course (code, course_name) VALUES ('cve','Civil Engineering');
INSERT INTO Course (code, course_name) VALUES ('cre','Ceramics Engineering');
INSERT INTO Course (code, course_name) VALUES ('mne','Mining Engineering');
INSERT INTO Course (code, course_name) VALUES ('mte','Metallurgical Engineering');
INSERT INTO Course (code, course_name) VALUES ('math','Mathematics');
INSERT INTO Course (code, course_name) VALUES ('zoo','Zoology');
INSERT INTO Course (code, course_name) VALUES ('stat','Statistics');
INSERT INTO Course (code, course_name) VALUES ('econ','Economics');
INSERT INTO Course (code, course_name) VALUES ('entrep','Entrepreneural Marketing');
INSERT INTO Course (code, course_name) VALUES ('fil','Filipino');
INSERT INTO Course (code, course_name) VALUES ('mrb','Marine Biology');
INSERT INTO Course (code, course_name) VALUES ('cheng','Chemistry Engineering');

INSERT INTO Student(studentID, name, coursecode, year, gender) VALUES ('2014-003','Xyvuz Jim Pineda','cs','2nd Year','Male');
INSERT INTO Student(studentID, name, coursecode, year, gender) VALUES ('2014-004','Heisen Jane Esdicul','chem','2nd Year','Female');
INSERT INTO Student(studentID, name, coursecode, year, gender) VALUES ('2014-006','Gon Alicando','cs','2nd Year','Male');
INSERT INTO Student(studentID, name, coursecode, year, gender) VALUES ('2014-010','Jannah Amerol','mcb','2nd Year','Female');
INSERT INTO Student(studentID, name, coursecode, year, gender) VALUES ('2014-011','Richard Sermon','anb','2nd Year','Male');
INSERT INTO Student(studentID, name, coursecode, year, gender) VALUES ('2014-020','Leo Boyose','ee','2nd Year','Male');
INSERT INTO Student(studentID, name, coursecode, year, gender) VALUES ('2014-001','Xander Paman','cs','1st Year','Male');
INSERT INTO Student(studentID, name, coursecode, year, gender) VALUES ('2014-002','Louise Antondy Garbanzos','cs','1st Year','Male');
INSERT INTO Student(studentID, name, coursecode, year, gender) VALUES ('2014-005','Shina Madale','ee','2nd Year','Female');
INSERT INTO Student(studentID, name, coursecode, year, gender) VALUES ('2014-007','Jan Tan','cs','2nd Year','Male');
INSERT INTO Student(studentID, name, coursecode, year, gender) VALUES ('2014-008','Joevan Aliman','phys','2nd Year','Male');
INSERT INTO Student(studentID, name, coursecode, year, gender) VALUES ('2014-009','Khyyam Montañer','ee','2nd Year','Male');
INSERT INTO Student(studentID, name, coursecode, year, gender) VALUES ('2014-012','Jay Joven Baguio','ee','2nd Year','Male');
INSERT INTO Student(studentID, name, coursecode, year, gender) VALUES ('2014-013','Johann Parcon','nu','2nd Year','Male');
INSERT INTO Student(studentID, name, coursecode, year, gender) VALUES ('2014-014','Jan Carlo Alamban','it','2nd Year','Male');
INSERT INTO Student(studentID, name, coursecode, year, gender) VALUES ('2014-015','Earl Andrew Ruelo','it','2nd Year','Male');
INSERT INTO Student(studentID, name, coursecode, year, gender) VALUES ('2014-016','Earyl James Buque','it','2nd Year','Male');
INSERT INTO Student(studentID, name, coursecode, year, gender) VALUES ('2014-017','Shawnrick Yacapin','nu','2nd Year','Male');
INSERT INTO Student(studentID, name, coursecode, year, gender) VALUES ('2014-018','Al Leu Amatiaga','psych','2nd Year','Male');
INSERT INTO Student(studentID, name, coursecode, year, gender) VALUES ('2014-019','Julia Francine Guerra','psych','2nd Year','Female');
INSERT INTO Student(studentID, name, coursecode, year, gender) VALUES ('2014-021','Jun Paolo Bergado','cpe','2nd Year','Male');
INSERT INTO Student(studentID, name, coursecode, year, gender) VALUES ('2014-022','Shodz Christian Caliso','cpe','2nd Year','Male');
INSERT INTO Student(studentID, name, coursecode, year, gender) VALUES ('2014-023','Kyle Paalisbo','cheng','3rd Year','Male');
INSERT INTO Student(studentID, name, coursecode, year, gender) VALUES ('2014-024','Mike Stand','acc','2nd Year','Male');
INSERT INTO Student(studentID, name, coursecode, year, gender) VALUES ('2014-025','Biff Wellington','chem','4th Year','Male');
INSERT INTO Student(studentID, name, coursecode, year, gender) VALUES ('2014-026','Orson Carte','his','3rd Year','Male');
INSERT INTO Student(studentID, name, coursecode, year, gender) VALUES ('2014-027','Sonny Day','polsci','1st Year','Male');
INSERT INTO Student(studentID, name, coursecode, year, gender) VALUES ('2014-028','Jack Pott','cve','2nd Year','Male');
INSERT INTO Student(studentID, name, coursecode, year, gender) VALUES ('2014-029','Mana Lott','cre','3rd Year','Female');
INSERT INTO Student(studentID, name, coursecode, year, gender) VALUES ('2014-030','Ayaka Kamisato','mne','2nd Year','Female');
INSERT INTO Student(studentID, name, coursecode, year, gender) VALUES ('2014-031','Kazuha Kaedehara','mte','4th Year','Male');
INSERT INTO Student(studentID, name, coursecode, year, gender) VALUES ('2014-032','Sara Kujou','math','1st Year','Female');
INSERT INTO Student(studentID, name, coursecode, year, gender) VALUES ('2014-033','Ei Raiden','zoo','2nd Year','Female');
INSERT INTO Student(studentID, name, coursecode, year, gender) VALUES ('2014-034','Judy Lumayag','stat','1st Year','Female');
INSERT INTO Student(studentID, name, coursecode, year, gender) VALUES ('2014-035','Ayato Kamisato','econ','3rd Year','Male');
INSERT INTO Student(studentID, name, coursecode, year, gender) VALUES ('2014-036','Coco Kiryu','entrep','3rd Year','Female');
INSERT INTO Student(studentID, name, coursecode, year, gender) VALUES ('2014-037','Millie Parfait','fil','3rd Year','Female');
INSERT INTO Student(studentID, name, coursecode, year, gender) VALUES ('2014-038','Vox Akuma','his','4th Year','Male');
INSERT INTO Student(studentID, name, coursecode, year, gender) VALUES ('2014-039','Ike Eveland','polsci','4th Year','Male');
INSERT INTO Student(studentID, name, coursecode, year, gender) VALUES ('2014-040','Robert Truya','math','1st Year','Male');
INSERT INTO Student(studentID, name, coursecode, year, gender) VALUES ('2014-041','Mysta Rias','mrb','1st Year','Male');
INSERT INTO Student(studentID, name, coursecode, year, gender) VALUES ('2014-042','Shu Yamino','stat','2nd Year','Male');
INSERT INTO Student(studentID, name, coursecode, year, gender) VALUES ('2014-043','Finana Ryugu','his','3rd Year','Female');
INSERT INTO Student(studentID, name, coursecode, year, gender) VALUES ('2014-044','Suisei Hoshimachi','econ','4th Year','Female');
INSERT INTO Student(studentID, name, coursecode, year, gender) VALUES ('2014-045','Pomu Rainpuff','econ','1st Year','Female');
INSERT INTO Student(studentID, name, coursecode, year, gender) VALUES ('2014-046','Jzean Yrold Caracut','it','Irregular','Male');
INSERT INTO Student(studentID, name, coursecode, year, gender) VALUES ('2014-047','Bonniver Pranaja','zoo','3rd Year','Male');
INSERT INTO Student(studentID, name, coursecode, year, gender) VALUES ('2014-048','Astel Lleda','cve','4th Year','Male');
INSERT INTO Student(studentID, name, coursecode, year, gender) VALUES ('2014-049','Kobo Kanaerua','cve','1st Year','Female');
INSERT INTO Student(studentID, name, coursecode, year, gender) VALUES ('2014-050','Zeta Vestia','cve','1st Year','Female');
