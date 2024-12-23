USE [master]
GO
/****** Object:  Database [School]    Script Date: 2024-12-16 13:27:43 ******/
CREATE DATABASE [School]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'School', FILENAME = N'C:\Users\Onni\School.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'School_log', FILENAME = N'C:\Users\Onni\School_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [School] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [School].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [School] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [School] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [School] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [School] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [School] SET ARITHABORT OFF 
GO
ALTER DATABASE [School] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [School] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [School] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [School] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [School] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [School] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [School] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [School] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [School] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [School] SET  ENABLE_BROKER 
GO
ALTER DATABASE [School] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [School] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [School] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [School] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [School] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [School] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [School] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [School] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [School] SET  MULTI_USER 
GO
ALTER DATABASE [School] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [School] SET DB_CHAINING OFF 
GO
ALTER DATABASE [School] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [School] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [School] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [School] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [School] SET QUERY_STORE = OFF
GO
USE [School]
GO
/****** Object:  Table [dbo].[Courses]    Script Date: 2024-12-16 13:27:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Courses](
	[CourseId] [int] IDENTITY(1,1) NOT NULL,
	[CourseName] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enrolment]    Script Date: 2024-12-16 13:27:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enrolment](
	[EnrolmentId] [int] IDENTITY(1,1) NOT NULL,
	[CourseId] [int] NOT NULL,
	[StudentId] [int] NOT NULL,
	[StaffId] [int] NOT NULL,
	[Grade] [char](1) NULL,
	[GradeDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[EnrolmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 2024-12-16 13:27:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 2024-12-16 13:27:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[StaffId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[RoleId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[StaffId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 2024-12-16 13:27:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[StudentId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[PersonalNumber] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Courses] ON 

INSERT [dbo].[Courses] ([CourseId], [CourseName]) VALUES (1, N'Math 101')
INSERT [dbo].[Courses] ([CourseId], [CourseName]) VALUES (2, N'English 101')
INSERT [dbo].[Courses] ([CourseId], [CourseName]) VALUES (3, N'History 101')
INSERT [dbo].[Courses] ([CourseId], [CourseName]) VALUES (4, N'Science 101')
INSERT [dbo].[Courses] ([CourseId], [CourseName]) VALUES (5, N'Art 101')
INSERT [dbo].[Courses] ([CourseId], [CourseName]) VALUES (6, N'Music 101')
INSERT [dbo].[Courses] ([CourseId], [CourseName]) VALUES (7, N'Physical Education 101')
INSERT [dbo].[Courses] ([CourseId], [CourseName]) VALUES (8, N'Computer Science 101')
INSERT [dbo].[Courses] ([CourseId], [CourseName]) VALUES (9, N'Business 101')
INSERT [dbo].[Courses] ([CourseId], [CourseName]) VALUES (10, N'Social Studies 101')
SET IDENTITY_INSERT [dbo].[Courses] OFF
GO
SET IDENTITY_INSERT [dbo].[Enrolment] ON 

INSERT [dbo].[Enrolment] ([EnrolmentId], [CourseId], [StudentId], [StaffId], [Grade], [GradeDate]) VALUES (1, 1, 1, 3, N'A', CAST(N'2024-12-08T19:19:13.523' AS DateTime))
INSERT [dbo].[Enrolment] ([EnrolmentId], [CourseId], [StudentId], [StaffId], [Grade], [GradeDate]) VALUES (2, 2, 2, 4, N'B', CAST(N'2024-12-01T19:19:13.523' AS DateTime))
INSERT [dbo].[Enrolment] ([EnrolmentId], [CourseId], [StudentId], [StaffId], [Grade], [GradeDate]) VALUES (3, 3, 3, 5, N'C', CAST(N'2024-11-24T19:19:13.523' AS DateTime))
INSERT [dbo].[Enrolment] ([EnrolmentId], [CourseId], [StudentId], [StaffId], [Grade], [GradeDate]) VALUES (4, 4, 4, 6, N'A', CAST(N'2024-12-12T19:19:13.523' AS DateTime))
INSERT [dbo].[Enrolment] ([EnrolmentId], [CourseId], [StudentId], [StaffId], [Grade], [GradeDate]) VALUES (5, 5, 5, 7, N'B', CAST(N'2024-12-09T19:19:13.523' AS DateTime))
INSERT [dbo].[Enrolment] ([EnrolmentId], [CourseId], [StudentId], [StaffId], [Grade], [GradeDate]) VALUES (6, 6, 6, 8, N'C', CAST(N'2024-11-27T19:19:13.523' AS DateTime))
INSERT [dbo].[Enrolment] ([EnrolmentId], [CourseId], [StudentId], [StaffId], [Grade], [GradeDate]) VALUES (7, 7, 7, 9, N'A', CAST(N'2024-12-06T19:19:13.523' AS DateTime))
INSERT [dbo].[Enrolment] ([EnrolmentId], [CourseId], [StudentId], [StaffId], [Grade], [GradeDate]) VALUES (8, 8, 8, 10, N'B', CAST(N'2024-11-25T19:19:13.523' AS DateTime))
INSERT [dbo].[Enrolment] ([EnrolmentId], [CourseId], [StudentId], [StaffId], [Grade], [GradeDate]) VALUES (9, 9, 9, 11, N'C', CAST(N'2024-12-04T19:19:13.523' AS DateTime))
INSERT [dbo].[Enrolment] ([EnrolmentId], [CourseId], [StudentId], [StaffId], [Grade], [GradeDate]) VALUES (10, 10, 10, 12, N'A', CAST(N'2024-12-14T19:19:13.523' AS DateTime))
INSERT [dbo].[Enrolment] ([EnrolmentId], [CourseId], [StudentId], [StaffId], [Grade], [GradeDate]) VALUES (11, 1, 11, 3, N'B', CAST(N'2024-11-20T19:19:13.523' AS DateTime))
INSERT [dbo].[Enrolment] ([EnrolmentId], [CourseId], [StudentId], [StaffId], [Grade], [GradeDate]) VALUES (12, 2, 12, 4, N'C', CAST(N'2024-12-05T19:19:13.523' AS DateTime))
INSERT [dbo].[Enrolment] ([EnrolmentId], [CourseId], [StudentId], [StaffId], [Grade], [GradeDate]) VALUES (13, 3, 13, 5, N'A', CAST(N'2024-12-11T19:19:13.523' AS DateTime))
INSERT [dbo].[Enrolment] ([EnrolmentId], [CourseId], [StudentId], [StaffId], [Grade], [GradeDate]) VALUES (14, 4, 14, 6, N'B', CAST(N'2024-12-13T19:19:13.523' AS DateTime))
INSERT [dbo].[Enrolment] ([EnrolmentId], [CourseId], [StudentId], [StaffId], [Grade], [GradeDate]) VALUES (15, 5, 15, 7, N'C', CAST(N'2024-12-10T19:19:13.523' AS DateTime))
INSERT [dbo].[Enrolment] ([EnrolmentId], [CourseId], [StudentId], [StaffId], [Grade], [GradeDate]) VALUES (16, 6, 16, 8, N'A', CAST(N'2024-12-02T19:19:13.523' AS DateTime))
INSERT [dbo].[Enrolment] ([EnrolmentId], [CourseId], [StudentId], [StaffId], [Grade], [GradeDate]) VALUES (17, 7, 17, 9, N'B', CAST(N'2024-11-23T19:19:13.523' AS DateTime))
INSERT [dbo].[Enrolment] ([EnrolmentId], [CourseId], [StudentId], [StaffId], [Grade], [GradeDate]) VALUES (18, 8, 18, 10, N'C', CAST(N'2024-12-03T19:19:13.523' AS DateTime))
INSERT [dbo].[Enrolment] ([EnrolmentId], [CourseId], [StudentId], [StaffId], [Grade], [GradeDate]) VALUES (19, 9, 19, 11, N'A', CAST(N'2024-11-30T19:19:13.523' AS DateTime))
INSERT [dbo].[Enrolment] ([EnrolmentId], [CourseId], [StudentId], [StaffId], [Grade], [GradeDate]) VALUES (20, 10, 20, 12, N'B', CAST(N'2024-11-26T19:19:13.523' AS DateTime))
SET IDENTITY_INSERT [dbo].[Enrolment] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([RoleId], [RoleName]) VALUES (1, N'Principal')
INSERT [dbo].[Roles] ([RoleId], [RoleName]) VALUES (2, N'Vice Principal')
INSERT [dbo].[Roles] ([RoleId], [RoleName]) VALUES (3, N'Math Teacher')
INSERT [dbo].[Roles] ([RoleId], [RoleName]) VALUES (4, N'English Teacher')
INSERT [dbo].[Roles] ([RoleId], [RoleName]) VALUES (5, N'History Teacher')
INSERT [dbo].[Roles] ([RoleId], [RoleName]) VALUES (6, N'Science Teacher')
INSERT [dbo].[Roles] ([RoleId], [RoleName]) VALUES (7, N'Physical Education Teacher')
INSERT [dbo].[Roles] ([RoleId], [RoleName]) VALUES (8, N'Art Teacher')
INSERT [dbo].[Roles] ([RoleId], [RoleName]) VALUES (9, N'Music Teacher')
INSERT [dbo].[Roles] ([RoleId], [RoleName]) VALUES (10, N'Computer Science Teacher')
INSERT [dbo].[Roles] ([RoleId], [RoleName]) VALUES (11, N'Librarian')
INSERT [dbo].[Roles] ([RoleId], [RoleName]) VALUES (12, N'Counselor')
INSERT [dbo].[Roles] ([RoleId], [RoleName]) VALUES (13, N'Nurse')
INSERT [dbo].[Roles] ([RoleId], [RoleName]) VALUES (14, N'Janitor')
INSERT [dbo].[Roles] ([RoleId], [RoleName]) VALUES (15, N'Secretary')
INSERT [dbo].[Roles] ([RoleId], [RoleName]) VALUES (16, N'Administrator')
INSERT [dbo].[Roles] ([RoleId], [RoleName]) VALUES (17, N'Substitute Teacher')
INSERT [dbo].[Roles] ([RoleId], [RoleName]) VALUES (18, N'Language Teacher')
INSERT [dbo].[Roles] ([RoleId], [RoleName]) VALUES (19, N'Business Teacher')
INSERT [dbo].[Roles] ([RoleId], [RoleName]) VALUES (20, N'Social Studies Teacher')
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[Staff] ON 

INSERT [dbo].[Staff] ([StaffId], [FirstName], [LastName], [RoleId]) VALUES (1, N'Alice', N'Smith', 1)
INSERT [dbo].[Staff] ([StaffId], [FirstName], [LastName], [RoleId]) VALUES (2, N'Bob', N'Johnson', 2)
INSERT [dbo].[Staff] ([StaffId], [FirstName], [LastName], [RoleId]) VALUES (3, N'Charlie', N'Williams', 3)
INSERT [dbo].[Staff] ([StaffId], [FirstName], [LastName], [RoleId]) VALUES (4, N'Diana', N'Brown', 4)
INSERT [dbo].[Staff] ([StaffId], [FirstName], [LastName], [RoleId]) VALUES (5, N'Evan', N'Jones', 5)
INSERT [dbo].[Staff] ([StaffId], [FirstName], [LastName], [RoleId]) VALUES (6, N'Fiona', N'Garcia', 6)
INSERT [dbo].[Staff] ([StaffId], [FirstName], [LastName], [RoleId]) VALUES (7, N'George', N'Martinez', 7)
INSERT [dbo].[Staff] ([StaffId], [FirstName], [LastName], [RoleId]) VALUES (8, N'Hannah', N'Rodriguez', 8)
INSERT [dbo].[Staff] ([StaffId], [FirstName], [LastName], [RoleId]) VALUES (9, N'Ian', N'Hernandez', 9)
INSERT [dbo].[Staff] ([StaffId], [FirstName], [LastName], [RoleId]) VALUES (10, N'Julia', N'Lopez', 10)
INSERT [dbo].[Staff] ([StaffId], [FirstName], [LastName], [RoleId]) VALUES (11, N'Kevin', N'Gonzalez', 11)
INSERT [dbo].[Staff] ([StaffId], [FirstName], [LastName], [RoleId]) VALUES (12, N'Laura', N'Wilson', 12)
INSERT [dbo].[Staff] ([StaffId], [FirstName], [LastName], [RoleId]) VALUES (13, N'Mike', N'Anderson', 13)
INSERT [dbo].[Staff] ([StaffId], [FirstName], [LastName], [RoleId]) VALUES (14, N'Nina', N'Thomas', 14)
INSERT [dbo].[Staff] ([StaffId], [FirstName], [LastName], [RoleId]) VALUES (15, N'Oscar', N'Moore', 15)
INSERT [dbo].[Staff] ([StaffId], [FirstName], [LastName], [RoleId]) VALUES (16, N'Paula', N'Taylor', 16)
INSERT [dbo].[Staff] ([StaffId], [FirstName], [LastName], [RoleId]) VALUES (17, N'Quinn', N'Jackson', 17)
INSERT [dbo].[Staff] ([StaffId], [FirstName], [LastName], [RoleId]) VALUES (18, N'Riley', N'White', 18)
INSERT [dbo].[Staff] ([StaffId], [FirstName], [LastName], [RoleId]) VALUES (19, N'Sophia', N'Harris', 19)
INSERT [dbo].[Staff] ([StaffId], [FirstName], [LastName], [RoleId]) VALUES (20, N'Tom', N'Clark', 20)
SET IDENTITY_INSERT [dbo].[Staff] OFF
GO
SET IDENTITY_INSERT [dbo].[Students] ON 

INSERT [dbo].[Students] ([StudentId], [FirstName], [LastName], [PersonalNumber]) VALUES (1, N'Aaron', N'Adams', 100001)
INSERT [dbo].[Students] ([StudentId], [FirstName], [LastName], [PersonalNumber]) VALUES (2, N'Betty', N'Baker', 100002)
INSERT [dbo].[Students] ([StudentId], [FirstName], [LastName], [PersonalNumber]) VALUES (3, N'Cathy', N'Carter', 100003)
INSERT [dbo].[Students] ([StudentId], [FirstName], [LastName], [PersonalNumber]) VALUES (4, N'David', N'Davis', 100004)
INSERT [dbo].[Students] ([StudentId], [FirstName], [LastName], [PersonalNumber]) VALUES (5, N'Ella', N'Evans', 100005)
INSERT [dbo].[Students] ([StudentId], [FirstName], [LastName], [PersonalNumber]) VALUES (6, N'Frank', N'Ford', 100006)
INSERT [dbo].[Students] ([StudentId], [FirstName], [LastName], [PersonalNumber]) VALUES (7, N'Grace', N'Green', 100007)
INSERT [dbo].[Students] ([StudentId], [FirstName], [LastName], [PersonalNumber]) VALUES (8, N'Harry', N'Hall', 100008)
INSERT [dbo].[Students] ([StudentId], [FirstName], [LastName], [PersonalNumber]) VALUES (9, N'Ivy', N'Irwin', 100009)
INSERT [dbo].[Students] ([StudentId], [FirstName], [LastName], [PersonalNumber]) VALUES (10, N'Jack', N'Jones', 100010)
INSERT [dbo].[Students] ([StudentId], [FirstName], [LastName], [PersonalNumber]) VALUES (11, N'Kara', N'King', 100011)
INSERT [dbo].[Students] ([StudentId], [FirstName], [LastName], [PersonalNumber]) VALUES (12, N'Liam', N'Lewis', 100012)
INSERT [dbo].[Students] ([StudentId], [FirstName], [LastName], [PersonalNumber]) VALUES (13, N'Mia', N'Martin', 100013)
INSERT [dbo].[Students] ([StudentId], [FirstName], [LastName], [PersonalNumber]) VALUES (14, N'Noah', N'Nelson', 100014)
INSERT [dbo].[Students] ([StudentId], [FirstName], [LastName], [PersonalNumber]) VALUES (15, N'Olivia', N'Owens', 100015)
INSERT [dbo].[Students] ([StudentId], [FirstName], [LastName], [PersonalNumber]) VALUES (16, N'Peter', N'Parker', 100016)
INSERT [dbo].[Students] ([StudentId], [FirstName], [LastName], [PersonalNumber]) VALUES (17, N'Quinn', N'Quincy', 100017)
INSERT [dbo].[Students] ([StudentId], [FirstName], [LastName], [PersonalNumber]) VALUES (18, N'Rachel', N'Reed', 100018)
INSERT [dbo].[Students] ([StudentId], [FirstName], [LastName], [PersonalNumber]) VALUES (19, N'Sam', N'Smith', 100019)
INSERT [dbo].[Students] ([StudentId], [FirstName], [LastName], [PersonalNumber]) VALUES (20, N'Tina', N'Turner', 100020)
SET IDENTITY_INSERT [dbo].[Students] OFF
GO
ALTER TABLE [dbo].[Enrolment]  WITH CHECK ADD FOREIGN KEY([CourseId])
REFERENCES [dbo].[Courses] ([CourseId])
GO
ALTER TABLE [dbo].[Enrolment]  WITH CHECK ADD FOREIGN KEY([StaffId])
REFERENCES [dbo].[Staff] ([StaffId])
GO
ALTER TABLE [dbo].[Enrolment]  WITH CHECK ADD FOREIGN KEY([StudentId])
REFERENCES [dbo].[Students] ([StudentId])
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([RoleId])
GO
USE [master]
GO
ALTER DATABASE [School] SET  READ_WRITE 
GO
