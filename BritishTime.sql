USE [master]
GO
/****** Object:  Database [BritishTime]    Script Date: 25.12.2022 18:43:00 ******/
CREATE DATABASE [BritishTime]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BritishTime', FILENAME = N'C:\Users\Şerife GÖKDAŞ\Desktop\MSSQL15.SQLEXPRESS\MSSQL\DATA\BritishTime.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BritishTime_log', FILENAME = N'C:\Users\Şerife GÖKDAŞ\Desktop\MSSQL15.SQLEXPRESS\MSSQL\DATA\BritishTime_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [BritishTime] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BritishTime].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BritishTime] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BritishTime] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BritishTime] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BritishTime] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BritishTime] SET ARITHABORT OFF 
GO
ALTER DATABASE [BritishTime] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [BritishTime] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BritishTime] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BritishTime] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BritishTime] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BritishTime] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BritishTime] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BritishTime] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BritishTime] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BritishTime] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BritishTime] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BritishTime] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BritishTime] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BritishTime] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BritishTime] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BritishTime] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BritishTime] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BritishTime] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BritishTime] SET  MULTI_USER 
GO
ALTER DATABASE [BritishTime] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BritishTime] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BritishTime] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BritishTime] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BritishTime] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BritishTime] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [BritishTime] SET QUERY_STORE = OFF
GO
USE [BritishTime]
GO
/****** Object:  Table [dbo].[LessonsSet]    Script Date: 25.12.2022 18:43:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LessonsSet](
	[LessonNo] [int] IDENTITY(1,1) NOT NULL,
	[Speech] [nvarchar](max) NOT NULL,
	[BusinessEnglish] [nvarchar](max) NOT NULL,
	[YDSCourse] [nvarchar](max) NOT NULL,
	[ToeflCourse] [nvarchar](max) NOT NULL,
	[IeltsCourse] [nvarchar](max) NOT NULL,
	[StudentsStudentNo] [int] NOT NULL,
	[TeachersTeacherNo] [int] NOT NULL,
 CONSTRAINT [PK_LessonsSet] PRIMARY KEY CLUSTERED 
(
	[LessonNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StaffsSet]    Script Date: 25.12.2022 18:43:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StaffsSet](
	[StaffNo] [int] IDENTITY(1,1) NOT NULL,
	[StaffName] [nvarchar](max) NOT NULL,
	[StaffMail] [nvarchar](max) NOT NULL,
	[StaffPassword] [nvarchar](max) NOT NULL,
	[StaffPhone] [int] NOT NULL,
 CONSTRAINT [PK_StaffsSet] PRIMARY KEY CLUSTERED 
(
	[StaffNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentsSet]    Script Date: 25.12.2022 18:43:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentsSet](
	[StudentNo] [int] IDENTITY(1,1) NOT NULL,
	[StudentName] [nvarchar](max) NOT NULL,
	[StudentPhone] [nvarchar](max) NOT NULL,
	[StudentMail] [nvarchar](max) NOT NULL,
	[TeachersTeacherNo] [int] NOT NULL,
 CONSTRAINT [PK_StudentsSet] PRIMARY KEY CLUSTERED 
(
	[StudentNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TeachersSet]    Script Date: 25.12.2022 18:43:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TeachersSet](
	[TeacherNo] [int] IDENTITY(1,1) NOT NULL,
	[TeacherName] [nvarchar](max) NOT NULL,
	[TeacherPhone] [nvarchar](max) NOT NULL,
	[TeacherMail] [nvarchar](max) NOT NULL,
	[TeacherBranch] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_TeachersSet] PRIMARY KEY CLUSTERED 
(
	[TeacherNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[LessonsSet] ON 

INSERT [dbo].[LessonsSet] ([LessonNo], [Speech], [BusinessEnglish], [YDSCourse], [ToeflCourse], [IeltsCourse], [StudentsStudentNo], [TeachersTeacherNo]) VALUES (1, N'yes', N'yes', N'yes', N'yes', N'yes', 1, 1)
INSERT [dbo].[LessonsSet] ([LessonNo], [Speech], [BusinessEnglish], [YDSCourse], [ToeflCourse], [IeltsCourse], [StudentsStudentNo], [TeachersTeacherNo]) VALUES (2, N'yes', N'yes', N'yes', N'yes', N'yes', 1, 1)
INSERT [dbo].[LessonsSet] ([LessonNo], [Speech], [BusinessEnglish], [YDSCourse], [ToeflCourse], [IeltsCourse], [StudentsStudentNo], [TeachersTeacherNo]) VALUES (3, N'yes', N'yes', N'yes', N'yes', N'yes', 1, 1)
INSERT [dbo].[LessonsSet] ([LessonNo], [Speech], [BusinessEnglish], [YDSCourse], [ToeflCourse], [IeltsCourse], [StudentsStudentNo], [TeachersTeacherNo]) VALUES (4, N'yes', N'yes', N'yes', N'n', N'yes', 1, 1)
SET IDENTITY_INSERT [dbo].[LessonsSet] OFF
GO
SET IDENTITY_INSERT [dbo].[StaffsSet] ON 

INSERT [dbo].[StaffsSet] ([StaffNo], [StaffName], [StaffMail], [StaffPassword], [StaffPhone]) VALUES (1, N'Rabia', N'rsrey', N'123', 45678)
INSERT [dbo].[StaffsSet] ([StaffNo], [StaffName], [StaffMail], [StaffPassword], [StaffPhone]) VALUES (2, N'serife', N'dsgdfg', N'123', 714)
INSERT [dbo].[StaffsSet] ([StaffNo], [StaffName], [StaffMail], [StaffPassword], [StaffPhone]) VALUES (3, N'serife', N'gr', N'1234', 521)
SET IDENTITY_INSERT [dbo].[StaffsSet] OFF
GO
SET IDENTITY_INSERT [dbo].[StudentsSet] ON 

INSERT [dbo].[StudentsSet] ([StudentNo], [StudentName], [StudentPhone], [StudentMail], [TeachersTeacherNo]) VALUES (1, N'erte', N'ret', N'rte', 1)
INSERT [dbo].[StudentsSet] ([StudentNo], [StudentName], [StudentPhone], [StudentMail], [TeachersTeacherNo]) VALUES (2, N'erte', N'ret', N'aaaaaa', 1)
INSERT [dbo].[StudentsSet] ([StudentNo], [StudentName], [StudentPhone], [StudentMail], [TeachersTeacherNo]) VALUES (4, N'eew', N'8578', N'cghg', 1)
INSERT [dbo].[StudentsSet] ([StudentNo], [StudentName], [StudentPhone], [StudentMail], [TeachersTeacherNo]) VALUES (5, N'eew', N'8578', N'cghg', 1)
SET IDENTITY_INSERT [dbo].[StudentsSet] OFF
GO
SET IDENTITY_INSERT [dbo].[TeachersSet] ON 

INSERT [dbo].[TeachersSet] ([TeacherNo], [TeacherName], [TeacherPhone], [TeacherMail], [TeacherBranch]) VALUES (1, N'Şerife', N'5687685', N'fgerg', N'BusinessEnglish')
INSERT [dbo].[TeachersSet] ([TeacherNo], [TeacherName], [TeacherPhone], [TeacherMail], [TeacherBranch]) VALUES (2, N'Şerife', N'5687685', N'fgerg', N'BusinessEnglish')
INSERT [dbo].[TeachersSet] ([TeacherNo], [TeacherName], [TeacherPhone], [TeacherMail], [TeacherBranch]) VALUES (3, N'Şerife', N'5687685', N'aaaaa', N'BusinessEnglish')
INSERT [dbo].[TeachersSet] ([TeacherNo], [TeacherName], [TeacherPhone], [TeacherMail], [TeacherBranch]) VALUES (5, N'Şerife', N'5687685', N'aaaaa', N'BusinessEnglish')
INSERT [dbo].[TeachersSet] ([TeacherNo], [TeacherName], [TeacherPhone], [TeacherMail], [TeacherBranch]) VALUES (7, N'df', N'52', N'tdgutretet', N'YDSCourse')
INSERT [dbo].[TeachersSet] ([TeacherNo], [TeacherName], [TeacherPhone], [TeacherMail], [TeacherBranch]) VALUES (8, N'', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[TeachersSet] OFF
GO
/****** Object:  Index [IX_FK_StudentsLessons]    Script Date: 25.12.2022 18:43:01 ******/
CREATE NONCLUSTERED INDEX [IX_FK_StudentsLessons] ON [dbo].[LessonsSet]
(
	[StudentsStudentNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_TeachersLessons]    Script Date: 25.12.2022 18:43:01 ******/
CREATE NONCLUSTERED INDEX [IX_FK_TeachersLessons] ON [dbo].[LessonsSet]
(
	[TeachersTeacherNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_TeachersStudents]    Script Date: 25.12.2022 18:43:01 ******/
CREATE NONCLUSTERED INDEX [IX_FK_TeachersStudents] ON [dbo].[StudentsSet]
(
	[TeachersTeacherNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LessonsSet]  WITH CHECK ADD  CONSTRAINT [FK_StudentsLessons] FOREIGN KEY([StudentsStudentNo])
REFERENCES [dbo].[StudentsSet] ([StudentNo])
GO
ALTER TABLE [dbo].[LessonsSet] CHECK CONSTRAINT [FK_StudentsLessons]
GO
ALTER TABLE [dbo].[LessonsSet]  WITH CHECK ADD  CONSTRAINT [FK_TeachersLessons] FOREIGN KEY([TeachersTeacherNo])
REFERENCES [dbo].[TeachersSet] ([TeacherNo])
GO
ALTER TABLE [dbo].[LessonsSet] CHECK CONSTRAINT [FK_TeachersLessons]
GO
ALTER TABLE [dbo].[StudentsSet]  WITH CHECK ADD  CONSTRAINT [FK_TeachersStudents] FOREIGN KEY([TeachersTeacherNo])
REFERENCES [dbo].[TeachersSet] ([TeacherNo])
GO
ALTER TABLE [dbo].[StudentsSet] CHECK CONSTRAINT [FK_TeachersStudents]
GO
/****** Object:  StoredProcedure [dbo].[StudentLessons]    Script Date: 25.12.2022 18:43:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[StudentLessons]
as begin 
select StudentNo, StudentName, Speech, BusinessEnglish,YDSCourse,ToeflCourse,IeltsCourse  from LessonsSet l left join StudentsSet s on l.StudentsStudentNo=s.StudentNo
end
GO
/****** Object:  StoredProcedure [dbo].[Teacher1Student]    Script Date: 25.12.2022 18:43:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Teacher1Student]
as begin 
select TeacherNo,StudentNo,StudentName,StudentPhone, StudentMail  from StudentsSet s inner join TeachersSet t on s.TeachersTeacherNo=t.TeacherNo
end
GO
/****** Object:  StoredProcedure [dbo].[TeacherLessons]    Script Date: 25.12.2022 18:43:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[TeacherLessons]
as begin 
select TeacherNo,TeacherName, Speech, BusinessEnglish,YDSCourse,ToeflCourse,IeltsCourse from LessonsSet l left join TeachersSet t on l.TeachersTeacherNo=t.TeacherNo
end
GO
USE [master]
GO
ALTER DATABASE [BritishTime] SET  READ_WRITE 
GO
