-- Create the database in SQL Server Management Studio (SSMS). The database you create must follow your ER model.

-- Creates the database
CREATE DATABASE School;
GO

-- Using the database
USE School;
GO

-- Creates the roles table
CREATE TABLE Roles(
	RoleId INT PRIMARY KEY IDENTITY(1,1),
	RoleName NVARCHAR(50)
);
GO

-- Creates the staff table
-- Has an FK that refers to the roles table
CREATE TABLE Staff(
	StaffId INT PRIMARY KEY IDENTITY(1,1),
	FirstName NVARCHAR(50),
	LastName NVARCHAR(50),
	RoleId INT NOT NULL,
	FOREIGN KEY(RoleId) REFERENCES Roles(RoleId)
);
GO

-- Creates the students table
CREATE TABLE Students(
	StudentId INT PRIMARY KEY IDENTITY(1,1),
	FirstName NVARCHAR(50),
	LastName NVARCHAR(50),
	PersonalNumber BIGINT NOT NULL
);
GO

-- Creates the courses table
CREATE TABLE Courses(
	CourseId INT PRIMARY KEY IDENTITY(1,1),
	CourseName NVARCHAR(50) NOT NULL
);
GO

-- Creates the enroment table
-- It has foreign keys pointing to the Students table, Courses table and to the staff who set the grade
CREATE TABLE Enrolment(
	EnrolmentId INT PRIMARY KEY IDENTITY(1,1),
	CourseId INT NOT NULL,
	StudentId INT NOT NULL,
	StaffId INT NOT NULL,
	Grade CHAR(1),
	GradeDate DATETIME,
	FOREIGN KEY(CourseId) REFERENCES Courses(CourseId),
	FOREIGN KEY(StudentId) REFERENCES Students(StudentId),
	FOREIGN KEY(StaffId) REFERENCES Staff(StaffId)
);
GO

-- Insert data into Roles table
INSERT INTO Roles (RoleName)
VALUES ('Teacher'), ('Principal'), ('Administrator');

-- Insert data into Staff table
INSERT INTO Staff (FirstName, LastName, RoleId)
VALUES 
('Alice', 'Johnson', 1), -- Teacher
('Bob', 'Smith', 1),     -- Teacher
('Catherine', 'Lee', 2), -- Principal
('David', 'Brown', 3);   -- Administrator

-- Insert data into Students table
INSERT INTO Students (FirstName, LastName, PersonalNumber)
VALUES 
('Emma', 'Anderson', 200101015678),
('Liam', 'Walker', 200305157856),
('Sophia', 'Martinez', 200412145678),
('Mason', 'Clark', 200506172345);

-- Insert data into Courses table
INSERT INTO Courses (CourseName)
VALUES 
('Mathematics'),
('Science'),
('History'),
('English');

-- Insert data into Enrolment table
INSERT INTO Enrolment (CourseId, StudentId, StaffId, Grade, GradeDate)
VALUES
(1, 1, 1, 'A', '2024-01-10'), -- Mathematics, Emma, Alice
(2, 2, 1, 'B', '2024-01-15'), -- Science, Liam, Alice
(3, 3, 2, 'C', '2024-02-01'), -- History, Sophia, Bob
(4, 4, 2, 'A', '2024-02-15'); -- English, Mason, Bob
