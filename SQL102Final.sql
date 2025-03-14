/* Final Project SQL 102 Satr.Code */
USE schooldb; -- DB FROM SQL101

-- Task1.1: Create a table for students with GPA > 90
CREATE TABLE TopStudents(
SELECT * FROM students WHERE GPA > 90
);

-- Task1.2: Create a table for students with GPA < 60
CREATE TABLE FaliedStudents(
SELECT * FROM students WHERE GPA < 90
);

SELECT * FROM students;
SELECT * FROM topstudents;
SELECT * FROM faliedstudents;


-- Task 2: Display the names of students that start with the letter 'A'.
SELECT StudentName FROM students
WHERE StudentName LIKE "A%";

-- Task 3: Display names of students that contain four characters
SELECT StudentName FROM students
WHERE length(StudentName) = 4;

-- Task 4: Apply AVG, MAX, MIN on the GPA with clear labels
SELECT
AVG(GPA) AS Average_GPA,
MAX(GPA) AS Maximum_GPA,
MIN(GPA) AS Minimum_GPA
FROM students;

-- Task 5: List names of top students in level 6 with GPA = 100
SELECT StudentName  FROM students
WHERE GradeLevel = 6  AND GPA = 100;

-- Task 6: Display students in level 1 aged between 15 and 16
SELECT * FROM students
WHERE GradeLevel = "Grade 1" AND (Age BETWEEN 15 AND 16);

-- Task 7: Display the number of students in level 2
SELECT COUNT(*) FROM students
WHERE GradeLevel = 2;

-- Task 8: Display distinct tracks of students in the school
SELECT DISTINCT(Track) FROM students;

-- Task 9: Display subject names in uppercase
SELECT UPPER(SubjectName) FROM courses;

-- Task 10: Display the average GPA rounded down to the nearest whole number
SELECT FLOOR(AVG(GPA)) FROM students

-- Task 11: Change gender 'F' to 'Female' and 'M' to 'Male'
UPDATE students 
SET Gender = REPLACE(Gender,"F","Female");
UPDATE students
SET Gender =  REPLACE(Gender,"M","Male");

-- Task 12: pdate the GPA for students with GPA < 60 (increasing by 5)
UPDATE STUDENTS
SET GPA = GPA + 5
WHERE GPA < 60 
