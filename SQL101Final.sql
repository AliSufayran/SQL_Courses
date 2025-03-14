/* Final Project SQL 101 Satr.Code */
-- Task 1: Create Database
 CREATE DATABASE schooldb;
 USE schooldb;
 
-- Task 2: Create Tables
-- Task 2.1: Create Students DB
 CREATE table Students( 
 StudentID INT Primary key,
 StudentName VARCHAR(225),
 DateOfBirth DATE,
 Gender VARCHAR(225),
 EnrollDate DATE,
 Email VARCHAR(225),
 GradeLevel INT,
 Track VARCHAR(225),
 GPA DECIMAL(5,2)
 );
 
-- Task2.2: Create Teachers DB
 CREATE TABLE Teachers(
 TeacherID INT PRIMARY KEY,
 TeacherName VARCHAR(225),
 DateOfBirth DATE,
 Gender VARCHAR(225),
 Email VARCHAR(225),
 OfficeNumber INT
 );
 
-- Task2.3: Create Subjects DB
 CREATE TABLE Subjects(
 SubjectID INT PRIMARY KEY,
 SubjectName VARCHAR(225)
 );
 
-- Task 3: Display Tables
USE schooldb;
SHOW TABLES;

-- Task 4: Insert Records into Students Table
USE schooldb;
INSERT INTO students
VALUES (4400,"Ali","2000-08-27","M","2019-08-20","Alisuf@x.com","6","علمي", 100),
(4192,"Fahad","2001-04-25","M","2020-08-29","Fad@x.com","5","علمي", 98.3),
(3843,"Mohammed","2001-04-21","M","2019-08-27","Mo@x.com","6","علمي", 89.4),
(4501, 'Sara', '2002-01-15', 'F', '2021-09-10', 'Sara@x.com', '6', 'ادبي', 97.25),
(4320, 'Omar', '2000-12-05', 'M', '2019-08-20', 'Omar@x.com', '1', 'ادبي', 96.80),
(4102, 'Aisha', '2001-11-12', 'F', '2020-08-29', 'Aisha@x.com', '6', 'علمي', 99.00),
(4255, 'Khalid', '2002-06-30', 'M', '2021-09-01', 'Khalid@x.com', '2', 'ادبي', 89.75),
(3999, 'Fatima', '2001-03-22', 'F', '2019-08-27', 'Fatima@x.com', '6', 'علمي', 94.60),
(6100, 'Samir', '2003-01-10', 'M', '2022-09-15', 'Samir@x.com', '6', 'علمي', 55.00),
(6201, 'Nadia', '2002-12-05', 'F', '2023-01-12', 'Nadia@x.com', '5', 'ادبي', 58.50),
(6302, 'Ali', '2004-03-22', 'M', '2022-05-18', 'Ali@x.com', '6', 'علمي', 59.00),
(6403, 'Sara', '2001-08-10', 'F', '2020-08-20', 'SaraB@x.com', '6', 'علمي', 57.75),
(6504, 'Yasmin', '2000-11-17', 'F', '2019-08-27', 'Yasmin@x.com', '2', 'ادبي', 56.40),
(6605, 'Zain', '2001-06-30', 'M', '2020-09-01', 'Zain@x.com', '1', 'ادبي', 54.80);

-- Task 5: Insert Records into Teachers Table
USE schooldb;
INSERT INTO teachers
VALUES ("1100","Ahmed","1978-02-17","M","A@x.com","209"),
("1902","Lis","1992-04-01","F","L@x.com","190"),
("1020","Sarah","1997-03-30","F","S@x.com","199"),
(1200, 'Aliyah', '1995-12-05', 'F', 'Aliyah@x.com', 210),
(1350, 'Zaid', '1998-07-23', 'M', 'Zaid@x.com', 205),
(1450, 'Nora', '2000-05-16', 'F', 'Nora@x.com', 200),
(1600, 'Yusuf', '1996-11-30', 'M', 'Yusuf@x.com', 215),
(1750, 'Huda', '1994-09-12', 'F', 'Huda@x.com', 198);

-- Task 6: Insert Records into Subjects Table
USE schooldb;
INSERT INTO Subjects
VALUES ("1", "Mathematics"), ("2","Computer Science"), ("3","Physics");

-- Task 7: Display All Data in Tables
USE schooldb;
SELECT * FROM students;
SELECT * FROM teachers;
SELECT * FROM subjects;

-- Task 8: Display Records in Students Table Asc.
USE schooldb;
SELECT * FROM students ORDER BY StudentName ASC;

-- Task 9: Display Records in Students Table using WHERE
USE schooldb;
SELECT * FROM students WHERE StudentName = "Fahad";

-- Task 10: Update Data in Students Table
USE schooldb;
UPDATE STUDENTS
SET Email = "F@x.com" WHERE StudentID = "4192";

-- Task 11: Update Data in Teachers Table
USE schooldb;
UPDATE TEACHERS
SET OfficeNumber = "053" WHERE TeacherID = "1902";

-- TASK 12: Rename Table
USE schooldb;
RENAME TABLE subjects to courses;



