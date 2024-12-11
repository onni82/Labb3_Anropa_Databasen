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
-- It has FKs pointing to the Students table, Courses table and to the staff who set the grade
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
GO

-- Insert data into Staff table
INSERT INTO Staff (FirstName, LastName, RoleId)
VALUES 
('Alice', 'Johnson', 1), -- Teacher
('Bob', 'Smith', 1),     -- Teacher
('Catherine', 'Lee', 2), -- Principal
('David', 'Brown', 3);   -- Administrator
GO

-- Insert data into Students table
INSERT INTO Students (FirstName, LastName, PersonalNumber)
VALUES 
('Emma', 'Anderson', 200101015678),
('Liam', 'Walker', 200305157856),
('Sophia', 'Martinez', 200412145678),
('Mason', 'Clark', 200506172345);
GO

-- Insert data into Courses table
INSERT INTO Courses (CourseName)
VALUES 
('Mathematics'),
('Science'),
('History'),
('English');
GO

-- Insert data into Enrolment table
INSERT INTO Enrolment (CourseId, StudentId, StaffId, Grade, GradeDate)
VALUES
(1, 1, 1, 'A', '2024-01-10'), -- Mathematics, Emma, Alice
(2, 2, 1, 'B', '2024-01-15'), -- Science, Liam, Alice
(3, 3, 2, 'C', '2024-02-01'), -- History, Sophia, Bob
(4, 4, 2, 'A', '2024-02-15'); -- English, Mason, Bob
GO

-- Insert additional data into Roles table
INSERT INTO Roles (RoleName)
VALUES 
('Counselor'), 
('Librarian'), 
('Janitor');
GO

-- Insert additional data into Staff table
INSERT INTO Staff (FirstName, LastName, RoleId)
VALUES 
('Eleanor', 'White', 1), -- Teacher
('George', 'Taylor', 1), -- Teacher
('Hannah', 'Moore', 4),  -- Counselor
('Ian', 'Wilson', 4),    -- Counselor
('Julia', 'Hall', 5),    -- Librarian
('Kevin', 'Harris', 6);  -- Janitor
GO

-- Insert additional data into Students table
INSERT INTO Students (FirstName, LastName, PersonalNumber)
VALUES 
('Olivia', 'Thomas', 200701025678),
('Noah', 'King', 200803127856),
('Isabella', 'Scott', 200912145678),
('Logan', 'Green', 201001172345),
('Sophia', 'Adams', 201105157856),
('James', 'Baker', 201209145678),
('Ava', 'Nelson', 201305172345),
('Ethan', 'Carter', 201406112356),
('Mia', 'Mitchell', 201508154567),
('Lucas', 'Perez', 201612174589);
GO

-- Insert additional data into Courses table
INSERT INTO Courses (CourseName)
VALUES 
('Physics'),
('Chemistry'),
('Biology'),
('Art'),
('Physical Education'),
('Music'),
('Computer Science'),
('Economics'),
('Psychology'),
('Geography');
GO

-- Insert additional data into Enrolment table
INSERT INTO Enrolment (CourseId, StudentId, StaffId, Grade, GradeDate)
VALUES
-- Linking students to various courses and teachers with grades and dates
(1, 1, 1, 'B', '2024-03-01'), -- Mathematics, Emma, Alice
(2, 2, 1, 'A', '2024-03-15'), -- Science, Liam, Alice
(3, 3, 2, 'B', '2024-04-01'), -- History, Sophia, Bob
(4, 4, 2, 'A', '2024-04-15'), -- English, Mason, Bob
(5, 5, 3, 'A', '2024-05-01'), -- Physics, Sophia, Eleanor
(6, 6, 3, 'C', '2024-05-15'), -- Chemistry, James, Eleanor
(7, 7, 4, 'B', '2024-06-01'), -- Biology, Ava, George
(8, 8, 4, 'A', '2024-06-15'), -- Art, Ethan, George
(9, 9, 5, 'A', '2024-07-01'), -- Physical Education, Mia, Hannah
(10, 10, 5, 'B', '2024-07-15'), -- Music, Lucas, Hannah
(1, 1, 6, 'C', '2024-08-01'), -- Computer Science, Emma, Ian
(2, 2, 6, 'B', '2024-08-15'), -- Economics, Liam, Ian
(3, 3, 7, 'A', '2024-09-01'), -- Psychology, Sophia, Julia
(4, 4, 7, 'B', '2024-09-15'), -- Geography, Mason, Julia
(5, 5, 8, 'A', '2024-10-01'), -- Physics, Sophia, Kevin
(6, 6, 8, 'B', '2024-10-15'); -- Chemistry, James, Kevin
GO
