USE master

DROP DATABASE IF EXISTS SEDCACADEMYDB

CREATE DATABASE SEDCACADEMYDB

USE SEDCACADEMYDB

CREATE TABLE Student (
	Id INT PRIMARY KEY,
	FirstName NVARCHAR(20) NOT NULL,
	LastName NVARCHAR(20) NOT NULL,
	DateOfBirth DATE NOT NULL,
	EnrolledDate DATE NOT NULL,
	Gender NVARCHAR(10) NOT NULL,
	NationalIDNumber BIGINT NOT NULL

	CONSTRAINT [PK_Student] PRIMARY KEY (Id)
)
GO
SELECT * FROM dbo.Student


CREATE TABLE Teacher (
	Id INT NOT NULL,
	FirstName NVARCHAR(20) NOT NULL,
	LastName NVARCHAR(20) NOT NULL,
	DateOfBirth DATE NOT NULL,
	AcademicRank NVARCHAR(10) NOT NULL,
	HireDate DATE NOT NULL

	CONSTRAINT [PK_Teacher] PRIMARY KEY (Id)
)
GO
SELECT * FROM dbo.Teacher


CREATE TABLE Grade (
	Id INT NOT NULL,
	StudentId INT NOT NULL,
	CourselId INT NOT NULL,
	TeacherId INT NOT NULL,
	Grade INT NOT NULL,
	Comment NVARCHAR NOT NULL,
	CreatedData DATE NOT NULL

	CONSTRAINT [PK_Grade] PRIMARY KEY (Id)
)
GO
SELECT * FROM dbo.Grade


CREATE TABLE Course (
	Id INT NOT NULL,
	FirstName NVARCHAR(50) NOT NULL,
	Credit INT NOT NULL,
	AcademicYear INT NOT NULL,
	Semester NVARCHAR(30) NOT NULL

	CONSTRAINT [PK_Course] PRIMARY KEY (Id)
)
GO
SELECT * FROM dbo.Course


CREATE TABLE GradeDetails (
	Id INT NOT NULL,
	GradeId INT NOT NULL,
	AchievementTypeId INT NOT NULL,
	AchievementPoints INT NOT NULL,
	AchievementMaxPoints INT NOT NULL,
	AchievementDate DATE NOT NULL

	CONSTRAINT [PK_GradeDetails] PRIMARY KEY (Id)
)
GO
SELECT * FROM dbo.GradeDetails


CREATE TABLE AchievementType (
	Id INT NOT NULL,
	FirstName NVARCHAR(20) NOT NULL,
	[Description] NVARCHAR(20) NULL,
	ParticipationRate NVARCHAR(40)  NULL

	CONSTRAINT [PK_AchievementType] PRIMARY KEY (Id)
)
GO
SELECT * FROM dbo.AchievementType
