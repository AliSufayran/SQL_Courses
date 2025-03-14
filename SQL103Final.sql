/* Final Project SQL 103 Satr.Code */
USE schooldb; -- DB FROM SQL101

-- Task 1: Create TeacherStudent Table (Many-to-Many)
CREATE TABLE TeacherStudent (
TeacherID INT,
StudentID INT,
PRIMARY KEY (TeacherID,StudentID),
FOREIGN KEY (TeacherID) REFERENCES Teachers(TeacherID),
FOREIGN KEY (StudentID) REFERENCES Students(StudentID) );

-- Task 2: Create TeacherSubject Table (One-to-One)
CREATE TABLE TeacherSubject(
TeacherID INT,
SubjectID INT,
PRIMARY KEY (TeacherID),
FOREIGN KEY (TeacherID) REFERENCES Teachers(TeacherID),
FOREIGN KEY (SubjectID) REFERENCES Subjects(SubjectID) );

-- Task 3: Create StudentSubject Table (Many-to-Many)
CREATE TABLE StudentSubject (
    StudentID INT,
    SubjectID INT,
    PRIMARY KEY (StudentID, SubjectID),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (SubjectID) REFERENCES Subjects(SubjectID) );
    
-- Task 4: Create Procedure student_info
DELIMITER //
CREATE PROCEDURE student_info ()
BEGIN
    SELECT 
        Students.StudentName, Subjects.SubjectName FROM StudentSubject
    JOIN Students ON StudentSubject.StudentID = Students.StudentID
    JOIN Subjects ON StudentSubject.SubjectID = Subjects.SubjectID;
END;

-- Task 5: Call the Procedure
CALL student_info();

-- Task 6: Create View teacher_info
CREATE VIEW teacher_info AS
SELECT Teachers.TeacherName, Teachers.OfficeNumber, Subjects.SubjectName FROM teachersubject
JOIN Teachers ON teachersubject.TeacherID = Teachers.TeacherID
JOIN Subjects ON teachersubject.SubjectID = Subjects.SubjectID

-- Task 7: Select from View teacher_info
SELECT * FROM teacher_info;

-- Task 8: Drop View teacher_info
DROP VIEW teacher_info

-- Task 9: Create Index on Student Names
CREATE INDEX IndexSt ON Students(StudentName ASC);

-- Task 10: Show Index
SHOW INDEX FROM Students;

-- Task 11: Drop Index
DROP INDEX IndexSt ON Students;
