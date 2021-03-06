-- SQL Manager for SQL Server 3.9.0.3
-- ---------------------------------------
-- Host      : 192.168.0.3
-- Database  : babysitter
-- Version   : Microsoft SQL Server  11.0.5058.0


CREATE DATABASE [babysitter]
ON PRIMARY
  ( NAME = [babysitter],
    FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\babysitter.mdf',
    SIZE = 3 MB,
    MAXSIZE = UNLIMITED,
    FILEGROWTH = 1 MB )
LOG ON
  ( NAME = [babysitter_log],
    FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\babysitter_log.ldf',
    SIZE = 4 MB,
    MAXSIZE = 2097152 MB,
    FILEGROWTH = 10 % )
COLLATE SQL_Latin1_General_CP1_CI_AS
GO

USE [babysitter]
GO

--
-- Definition for role aspnet_Membership_BasicAccess : 
--

CREATE ROLE [aspnet_Membership_BasicAccess]
GO

--
-- Definition for role aspnet_Membership_FullAccess : 
--

CREATE ROLE [aspnet_Membership_FullAccess]
GO

--
-- Definition for role aspnet_Membership_ReportingAccess : 
--

CREATE ROLE [aspnet_Membership_ReportingAccess]
GO

--
-- Definition for role aspnet_Roles_BasicAccess : 
--

CREATE ROLE [aspnet_Roles_BasicAccess]
GO

--
-- Definition for role aspnet_Roles_FullAccess : 
--

CREATE ROLE [aspnet_Roles_FullAccess]
GO

--
-- Definition for role aspnet_Roles_ReportingAccess : 
--

CREATE ROLE [aspnet_Roles_ReportingAccess]
GO

--
-- Definition for table AspNetRoles : 
--

CREATE TABLE [dbo].[AspNetRoles] (
  [Id] nvarchar(128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
  [Name] nvarchar(256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
)
ON [PRIMARY]
GO

--
-- Definition for table AspNetUsers : 
--

CREATE TABLE [dbo].[AspNetUsers] (
  [Id] nvarchar(128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
  [Email] nvarchar(256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [EmailConfirmed] bit NOT NULL,
  [PasswordHash] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [SecurityStamp] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [PhoneNumber] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [PhoneNumberConfirmed] bit NOT NULL,
  [TwoFactorEnabled] bit NOT NULL,
  [LockoutEndDateUtc] datetime NULL,
  [LockoutEnabled] bit NOT NULL,
  [AccessFailedCount] int NOT NULL,
  [UserName] nvarchar(256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
  [Address] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [City] nvarchar(30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [Country] int NULL,
  [Website] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [ThumbURL] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [ThumbImg] image NULL,
  [Facebook] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [Twitter] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [GooglePlus] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [Dribble] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [Pinterest] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [LinkedIn] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [Favorited] bit NULL,
  [Name] nvarchar(30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [Surname] nvarchar(30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [Title] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [BirthDate] date NULL
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

--
-- Definition for table AspNetUserClaims : 
--

CREATE TABLE [dbo].[AspNetUserClaims] (
  [Id] int IDENTITY(1, 1) NOT NULL,
  [UserId] nvarchar(128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
  [ClaimType] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [ClaimValue] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
ON [PRIMARY]
GO

--
-- Definition for table AspNetUserDetails : 
--

CREATE TABLE [dbo].[AspNetUserDetails] (
  [IdDetail] int IDENTITY(1, 1) NOT NULL,
  [IdUser] nvarchar(128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [Detail] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
ON [PRIMARY]
GO

--
-- Definition for table AspNetUserLogins : 
--

CREATE TABLE [dbo].[AspNetUserLogins] (
  [LoginProvider] nvarchar(128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
  [ProviderKey] nvarchar(128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
  [UserId] nvarchar(128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
)
ON [PRIMARY]
GO

--
-- Definition for table AspNetUserRoles : 
--

CREATE TABLE [dbo].[AspNetUserRoles] (
  [UserId] nvarchar(128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
  [RoleId] nvarchar(128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
)
ON [PRIMARY]
GO

--
-- Definition for table Candidates : 
--

CREATE TABLE [dbo].[Candidates] (
  [IdCV] int IDENTITY(1, 1) NOT NULL,
  [User] nvarchar(128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [Experienta] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [DateAdd] date NULL,
  [ImageSRC] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [Titlu] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [WhereWhat] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [Description] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [Content] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [Solicitare] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [Orar] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [MinSal] float NULL,
  [MaxSal] float NULL,
  [Localitate] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [Address] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [ZIP] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [Latitudine] float NULL,
  [Longitudine] float NULL,
  [DateStart] date NULL,
  [DateEnd] date NULL,
  [Region] nvarchar(30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
ON [PRIMARY]
GO

--
-- Definition for table CandidateEducation : 
--

CREATE TABLE [dbo].[CandidateEducation] (
  [Id_Edu] int IDENTITY(1, 1) NOT NULL,
  [Id_CV] int NULL,
  [Description] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [DateStart] date NULL,
  [DateEnd] date NULL
)
ON [PRIMARY]
GO

--
-- Definition for table CandidateExperience : 
--

CREATE TABLE [dbo].[CandidateExperience] (
  [IdExp] int IDENTITY(1, 1) NOT NULL,
  [Id_CV] int NULL,
  [Description] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [DateStart] date NULL,
  [DateEnd] date NULL
)
ON [PRIMARY]
GO

--
-- Definition for table CandidateReq : 
--

CREATE TABLE [dbo].[CandidateReq] (
  [IdReq] int IDENTITY(1, 1) NOT NULL,
  [Id_CV] int NULL,
  [Requirement] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
ON [PRIMARY]
GO

--
-- Definition for table CandidateSkills : 
--

CREATE TABLE [dbo].[CandidateSkills] (
  [Id_Skill] int IDENTITY(1, 1) NOT NULL,
  [Id_CV] int NULL,
  [Title] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [Level] int NULL,
  [Description] nvarchar(30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
ON [PRIMARY]
GO

--
-- Definition for table Jobs : 
--

CREATE TABLE [dbo].[Jobs] (
  [IdJob] int IDENTITY(1, 1) NOT NULL,
  [IdWho] int NULL,
  [User] nvarchar(128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [DateAdd] date NULL,
  [ImageSRC] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [ImagePath] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [Titlu] nchar(64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [WhereWhat] nchar(128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [Description] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [Content] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [Solicitare] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [DateStart] date NULL,
  [DateEnd] date NULL,
  [Orar] nvarchar(30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [Localitate] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [Address] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [Latitudine] float NULL,
  [Longitudine] float NULL,
  [ZIP] nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [Region] nvarchar(30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
ON [PRIMARY]
GO

--
-- Definition for table JobRequirements : 
--

CREATE TABLE [dbo].[JobRequirements] (
  [IdReq] int IDENTITY(1, 1) NOT NULL,
  [Id_Job] int NULL,
  [Requirement] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
ON [PRIMARY]
GO

--
-- Definition for table JobSkills : 
--

CREATE TABLE [dbo].[JobSkills] (
  [IdSkill] int IDENTITY(1, 1) NOT NULL,
  [Id_Job] int NULL,
  [Title] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [Level] int NULL,
  [Description] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
ON [PRIMARY]
GO

--
-- Definition for table markers : 
--

CREATE TABLE [dbo].[markers] (
  [id] int IDENTITY(1, 1) NOT NULL,
  [name] varchar(60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [address] varchar(80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [latitudine] float NULL,
  [longitudine] float NULL,
  [ZIP] varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [informatii] varchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [site] nvarchar(256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
  [email] nvarchar(30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
ON [PRIMARY]
GO

--
-- Definition for user-defined function DistanceBetween : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[DistanceBetween] (@Lat1 as real, 
                @Long1 as real, @Lat2 as real, @Long2 as real)
RETURNS real
AS
BEGIN

DECLARE @dLat1InRad as float(53);
SET @dLat1InRad = @Lat1 * (PI()/180.0);
DECLARE @dLong1InRad as float(53);
SET @dLong1InRad = @Long1 * (PI()/180.0);
DECLARE @dLat2InRad as float(53);
SET @dLat2InRad = @Lat2 * (PI()/180.0);
DECLARE @dLong2InRad as float(53);
SET @dLong2InRad = @Long2 * (PI()/180.0);

DECLARE @dLongitude as float(53);
SET @dLongitude = @dLong2InRad - @dLong1InRad;
DECLARE @dLatitude as float(53);
SET @dLatitude = @dLat2InRad - @dLat1InRad;
/* Intermediate result a. */
DECLARE @a as float(53);
SET @a = SQUARE (SIN (@dLatitude / 2.0)) + COS (@dLat1InRad) 
                 * COS (@dLat2InRad) 
                 * SQUARE(SIN (@dLongitude / 2.0));
/* Intermediate result c (great circle distance in Radians). */
DECLARE @c as real;
SET @c = 2.0 * ATN2 (SQRT (@a), SQRT (1.0 - @a));
DECLARE @kEarthRadius as real;
/* SET kEarthRadius = 3956.0 miles */
SET @kEarthRadius = 6376.5;        /* kms */

DECLARE @dDistance as real;
SET @dDistance = @kEarthRadius * @c;
return (@dDistance);
--return ROUND(@dDistance, 3);
END
GO

--
-- Definition for stored procedure SearchByRadius : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE dbo.SearchByRadius
(
--@Latitude float,
--@Longitude float,
 @distance float,
 @lat float,
 @long float
)

AS

BEGIN
  /* Procedure body */
 DECLARE @Latitude float;
 DECLARE @Longitude float;
 --DECLARE @distance float;
 --SET @Latitude = 44.418836; 
 --SET @Longitude = 26.017786;
 SET @Latitude = @lat; 
 SET @Longitude = @long;
 
 SELECT ROUND(dbo.DistanceBetween(@Latitude, @Longitude, latitudine, longitudine),3) AS Distance, markers.*
 FROM markers
 WHERE ROUND(dbo.DistanceBetween(@Latitude, @Longitude,latitudine, longitudine),3) <= @distance
 ORDER BY distance DESC;
END
GO

--
-- Definition for stored procedure SearchByRadiusCV : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE dbo.SearchByRadiusCV
(
--@Latitude float,
--@Longitude float,
 @distance float,
 @lat float,
 @long float
)

AS

BEGIN
  /* Procedure body */
 DECLARE @Latitude float;
 DECLARE @Longitude float;
 --DECLARE @distance float;
 --SET @Latitude = 44.418836; 
 --SET @Longitude = 26.017786;
 SET @Latitude = @lat; 
 SET @Longitude = @long;
 
 SELECT ROUND(dbo.DistanceBetween(@Latitude, @Longitude, latitudine, longitudine),3) AS Distance, Candidates.*
 FROM Candidates
 WHERE ROUND(dbo.DistanceBetween(@Latitude, @Longitude,latitudine, longitudine),3) <= @distance
 ORDER BY distance DESC;
END
GO

--
-- Definition for stored procedure SearchByRadiusJobs : 
--
GO
SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE dbo.SearchByRadiusJobs
(
--@Latitude float,
--@Longitude float,
 @distance float,
 @lat float,
 @long float
)

AS

BEGIN
  /* Procedure body */
 DECLARE @Latitude float;
 DECLARE @Longitude float;
 --DECLARE @distance float;
 --SET @Latitude = 44.418836; 
 --SET @Longitude = 26.017786;
 SET @Latitude = @lat; 
 SET @Longitude = @long;
 
 SELECT ROUND(dbo.DistanceBetween(@Latitude, @Longitude, latitudine, longitudine),3) AS Distance, Jobs.*
 FROM Jobs
 WHERE ROUND(dbo.DistanceBetween(@Latitude, @Longitude,latitudine, longitudine),3) <= @distance
 ORDER BY distance DESC;
END
GO

--
-- Data for table dbo.AspNetRoles  (LIMIT 0,500)
--

BEGIN TRANSACTION
GO

INSERT INTO [dbo].[AspNetRoles] ([Id], [Name])
VALUES 
  (N'1', N'Admin')
GO

INSERT INTO [dbo].[AspNetRoles] ([Id], [Name])
VALUES 
  (N'2', N'Candidate')
GO

INSERT INTO [dbo].[AspNetRoles] ([Id], [Name])
VALUES 
  (N'3', N'Employer')
GO

COMMIT
GO

--
-- Data for table dbo.AspNetUserRoles  (LIMIT 0,500)
--

BEGIN TRANSACTION
GO

INSERT INTO [dbo].[AspNetUserRoles] ([UserId], [RoleId])
VALUES 
  (N'69715e56-48e8-4824-9a85-14f75f91b144', N'1')
GO

INSERT INTO [dbo].[AspNetUserRoles] ([UserId], [RoleId])
VALUES 
  (N'9f58733d-9dce-475b-8d2b-77061a5ad8fc', N'2')
GO

INSERT INTO [dbo].[AspNetUserRoles] ([UserId], [RoleId])
VALUES 
  (N'fc33c0a3-a070-4906-aa4e-f727b0fc3e37', N'2')
GO

INSERT INTO [dbo].[AspNetUserRoles] ([UserId], [RoleId])
VALUES 
  (N'2e77fcfc-9ee6-4444-9b8c-41793af9a4ee', N'3')
GO

INSERT INTO [dbo].[AspNetUserRoles] ([UserId], [RoleId])
VALUES 
  (N'f5891966-aa6b-4a69-b083-8f30a06abf58', N'3')
GO

COMMIT
GO

--
-- Data for table dbo.AspNetUsers  (LIMIT 0,500)
--

BEGIN TRANSACTION
GO

INSERT INTO [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Address], [City], [Country], [Website], [ThumbURL], [ThumbImg], [Facebook], [Twitter], [GooglePlus], [Dribble], [Pinterest], [LinkedIn], [Favorited], [Name], [Surname], [Title], [BirthDate])
VALUES 
  (N'2e77fcfc-9ee6-4444-9b8c-41793af9a4ee', N'office@maps4u.ro', 0, N'AC3apZgmfmZ9WJWeJo0/41a0oC/svcJwia1yHLAPu2Qk0hlMybNZbJjqX9Ti9mdzYw==', N'5d5abf02-a4ca-465d-9152-a7fdaf40a455', NULL, 0, 0, NULL, 1, 0, N'office@maps4u.ro', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Address], [City], [Country], [Website], [ThumbURL], [ThumbImg], [Facebook], [Twitter], [GooglePlus], [Dribble], [Pinterest], [LinkedIn], [Favorited], [Name], [Surname], [Title], [BirthDate])
VALUES 
  (N'69715e56-48e8-4824-9a85-14f75f91b144', N'laurentiu.lazar@infosystems4u.ro', 0, N'AGm4ZmGEGX98zGfEVB/jrFDrgf6qiU9vTyQdCOzim6RM7ecTdaMYhV0Sj70DpcZVwA==', N'8660b60b-27c8-4845-9b00-660990808510', NULL, 0, 0, NULL, 1, 0, N'laurentiu.lazar@infosystems4u.ro', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Address], [City], [Country], [Website], [ThumbURL], [ThumbImg], [Facebook], [Twitter], [GooglePlus], [Dribble], [Pinterest], [LinkedIn], [Favorited], [Name], [Surname], [Title], [BirthDate])
VALUES 
  (N'6d92118b-7b95-43a8-8a9b-1de865a374eb', N'laurentiu.lazar@hotmail.com', 0, N'AOE+9H4yVozp59S1+7KfkQB11GregraU+2WvncfjlKdfF3R6mbloe79OlLZgFGzX2g==', N'd27e536f-2af0-4d0b-9412-ca6dfd735c81', NULL, 0, 0, NULL, 1, 0, N'laurentiu.lazar@hotmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'LAZAR', N'Laurentiu', NULL, NULL)
GO

INSERT INTO [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Address], [City], [Country], [Website], [ThumbURL], [ThumbImg], [Facebook], [Twitter], [GooglePlus], [Dribble], [Pinterest], [LinkedIn], [Favorited], [Name], [Surname], [Title], [BirthDate])
VALUES 
  (N'9f58733d-9dce-475b-8d2b-77061a5ad8fc', N'mariana.lazar@gmail.com', 0, N'AAOykBhnv3DQRZrEXOc1nicnPhbudMTMKFCsVtrMWsGlpyrY+dzxSnvx0ZgaNQyrxA==', N'0756fac0-b808-474a-8ba3-eaad93bb7316', NULL, 0, 0, NULL, 1, 0, N'mariana.lazar@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Address], [City], [Country], [Website], [ThumbURL], [ThumbImg], [Facebook], [Twitter], [GooglePlus], [Dribble], [Pinterest], [LinkedIn], [Favorited], [Name], [Surname], [Title], [BirthDate])
VALUES 
  (N'f5891966-aa6b-4a69-b083-8f30a06abf58', N'office@infosystems4u.ro', 0, N'AHKVOU33uSX43R3tdSLMMhrOauQ7Dl1g/xnSiM9YZJfxnex3GVAdndumWNc12qJhFw==', N'f8d0a778-a644-48ad-be8c-f118fa5d3087', NULL, 0, 0, NULL, 1, 0, N'office@infosystems4u.ro', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Address], [City], [Country], [Website], [ThumbURL], [ThumbImg], [Facebook], [Twitter], [GooglePlus], [Dribble], [Pinterest], [LinkedIn], [Favorited], [Name], [Surname], [Title], [BirthDate])
VALUES 
  (N'fc33c0a3-a070-4906-aa4e-f727b0fc3e37', N'laurentiu.lazar@gmail.com', 0, N'AAmQN2fTm9L18v8vn4ZcpO+xrXRfzZQ7riu+HNnXhwFbO8eSrF1L1ksa2ZrlTYF+RQ==', N'fb70964e-0491-4303-ad31-707de13479d8', NULL, 0, 0, NULL, 1, 0, N'laurentiu.lazar@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'LAZAR', N'Mariana', NULL, NULL)
GO

COMMIT
GO

--
-- Data for table dbo.CandidateEducation  (LIMIT 0,500)
--

SET IDENTITY_INSERT [dbo].[CandidateEducation] ON
GO

BEGIN TRANSACTION
GO

INSERT INTO [dbo].[CandidateEducation] ([Id_Edu], [Id_CV], [Description], [DateStart], [DateEnd])
VALUES 
  (1, 1, N'Scoala Generala', NULL, NULL)
GO

INSERT INTO [dbo].[CandidateEducation] ([Id_Edu], [Id_CV], [Description], [DateStart], [DateEnd])
VALUES 
  (2, 1, N'Liceul', NULL, NULL)
GO

INSERT INTO [dbo].[CandidateEducation] ([Id_Edu], [Id_CV], [Description], [DateStart], [DateEnd])
VALUES 
  (3, 1, N'UPB', NULL, NULL)
GO

INSERT INTO [dbo].[CandidateEducation] ([Id_Edu], [Id_CV], [Description], [DateStart], [DateEnd])
VALUES 
  (4, 2, N'Gradinita', NULL, NULL)
GO

INSERT INTO [dbo].[CandidateEducation] ([Id_Edu], [Id_CV], [Description], [DateStart], [DateEnd])
VALUES 
  (5, 2, N'Gimnaziu', NULL, NULL)
GO

INSERT INTO [dbo].[CandidateEducation] ([Id_Edu], [Id_CV], [Description], [DateStart], [DateEnd])
VALUES 
  (6, 2, N'Colegiu', NULL, NULL)
GO

COMMIT
GO

SET IDENTITY_INSERT [dbo].[CandidateEducation] OFF
GO

--
-- Data for table dbo.CandidateExperience  (LIMIT 0,500)
--

SET IDENTITY_INSERT [dbo].[CandidateExperience] ON
GO

BEGIN TRANSACTION
GO

INSERT INTO [dbo].[CandidateExperience] ([IdExp], [Id_CV], [Description], [DateStart], [DateEnd])
VALUES 
  (1, 1, N'O firma', NULL, NULL)
GO

INSERT INTO [dbo].[CandidateExperience] ([IdExp], [Id_CV], [Description], [DateStart], [DateEnd])
VALUES 
  (2, 1, N'Alta Firma', NULL, NULL)
GO

INSERT INTO [dbo].[CandidateExperience] ([IdExp], [Id_CV], [Description], [DateStart], [DateEnd])
VALUES 
  (3, 2, N'Fima 1', NULL, NULL)
GO

INSERT INTO [dbo].[CandidateExperience] ([IdExp], [Id_CV], [Description], [DateStart], [DateEnd])
VALUES 
  (4, 2, N'Firma 2', NULL, NULL)
GO

COMMIT
GO

SET IDENTITY_INSERT [dbo].[CandidateExperience] OFF
GO

--
-- Data for table dbo.CandidateReq  (LIMIT 0,500)
--

SET IDENTITY_INSERT [dbo].[CandidateReq] ON
GO

BEGIN TRANSACTION
GO

INSERT INTO [dbo].[CandidateReq] ([IdReq], [Id_CV], [Requirement])
VALUES 
  (1, 1, N'Free lunch')
GO

INSERT INTO [dbo].[CandidateReq] ([IdReq], [Id_CV], [Requirement])
VALUES 
  (2, 1, N'Ergonomic chair')
GO

INSERT INTO [dbo].[CandidateReq] ([IdReq], [Id_CV], [Requirement])
VALUES 
  (3, 1, N'Free transportation')
GO

INSERT INTO [dbo].[CandidateReq] ([IdReq], [Id_CV], [Requirement])
VALUES 
  (4, 2, N'Extra light')
GO

INSERT INTO [dbo].[CandidateReq] ([IdReq], [Id_CV], [Requirement])
VALUES 
  (5, 2, N'Phone & Data plan')
GO

COMMIT
GO

SET IDENTITY_INSERT [dbo].[CandidateReq] OFF
GO

--
-- Data for table dbo.Candidates  (LIMIT 0,500)
--

SET IDENTITY_INSERT [dbo].[Candidates] ON
GO

BEGIN TRANSACTION
GO

INSERT INTO [dbo].[Candidates] ([IdCV], [User], [Experienta], [DateAdd], [ImageSRC], [Titlu], [WhereWhat], [Description], [Content], [Solicitare], [Orar], [MinSal], [MaxSal], [Localitate], [Address], [ZIP], [Latitudine], [Longitudine], [DateStart], [DateEnd], [Region])
VALUES 
  (1, N'fc33c0a3-a070-4906-aa4e-f727b0fc3e37', NULL, N'2015-04-07', N'/Assets/Images/face-5.png', N'Software Architect', N'Romania/Bucharest', N'dot.net sotware developper', N'Sunt cel mai tare', N'Long Term Job', NULL, 1500, 5000, N'Bucuresti', N'Aleea Baiut 9A', N'12345', 44.418836, 26.017786, NULL, NULL, N'Muntenia')
GO

INSERT INTO [dbo].[Candidates] ([IdCV], [User], [Experienta], [DateAdd], [ImageSRC], [Titlu], [WhereWhat], [Description], [Content], [Solicitare], [Orar], [MinSal], [MaxSal], [Localitate], [Address], [ZIP], [Latitudine], [Longitudine], [DateStart], [DateEnd], [Region])
VALUES 
  (2, N'6d92118b-7b95-43a8-8a9b-1de865a374eb', NULL, N'2015-04-07', N'/Assets/Images/face-4.png', N'Programator', N'Romania', N'razor/mvc', N'Sunt cea mai tare', N'Part time projects', NULL, 2000, 5500, N'Constanta', N'Bulevardul Tomis', N'13254', 44.172077, 28.665344, NULL, NULL, N'Dobrogea')
GO

INSERT INTO [dbo].[Candidates] ([IdCV], [User], [Experienta], [DateAdd], [ImageSRC], [Titlu], [WhereWhat], [Description], [Content], [Solicitare], [Orar], [MinSal], [MaxSal], [Localitate], [Address], [ZIP], [Latitudine], [Longitudine], [DateStart], [DateEnd], [Region])
VALUES 
  (3, N'9f58733d-9dce-475b-8d2b-77061a5ad8fc', NULL, N'2015-04-23', N'/Assets/Images/face-4.png', N'Programator DB', N'Romania/Bucharest', N'SQL', N'SQL oricand', N'Part Time', NULL, 3000, 6000, N'Bucuresti', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO

COMMIT
GO

SET IDENTITY_INSERT [dbo].[Candidates] OFF
GO

--
-- Data for table dbo.CandidateSkills  (LIMIT 0,500)
--

SET IDENTITY_INSERT [dbo].[CandidateSkills] ON
GO

BEGIN TRANSACTION
GO

INSERT INTO [dbo].[CandidateSkills] ([Id_Skill], [Id_CV], [Title], [Level], [Description])
VALUES 
  (1, 1, N'SQL', 75, N'Knowledge of SQL syntax')
GO

INSERT INTO [dbo].[CandidateSkills] ([Id_Skill], [Id_CV], [Title], [Level], [Description])
VALUES 
  (2, 1, N'C#', 70, NULL)
GO

INSERT INTO [dbo].[CandidateSkills] ([Id_Skill], [Id_CV], [Title], [Level], [Description])
VALUES 
  (3, 1, N'dot.net', 75, NULL)
GO

COMMIT
GO

SET IDENTITY_INSERT [dbo].[CandidateSkills] OFF
GO

--
-- Data for table dbo.JobRequirements  (LIMIT 0,500)
--

SET IDENTITY_INSERT [dbo].[JobRequirements] ON
GO

BEGIN TRANSACTION
GO

INSERT INTO [dbo].[JobRequirements] ([IdReq], [Id_Job], [Requirement])
VALUES 
  (1, 1, N'Driving License')
GO

INSERT INTO [dbo].[JobRequirements] ([IdReq], [Id_Job], [Requirement])
VALUES 
  (2, 1, N'Self Housing')
GO

INSERT INTO [dbo].[JobRequirements] ([IdReq], [Id_Job], [Requirement])
VALUES 
  (3, 1, N'Spare Time')
GO

INSERT INTO [dbo].[JobRequirements] ([IdReq], [Id_Job], [Requirement])
VALUES 
  (4, 2, N'Driving License
')
GO

INSERT INTO [dbo].[JobRequirements] ([IdReq], [Id_Job], [Requirement])
VALUES 
  (5, 2, N'Spare Time')
GO

INSERT INTO [dbo].[JobRequirements] ([IdReq], [Id_Job], [Requirement])
VALUES 
  (6, 3, N'Driving License
')
GO

INSERT INTO [dbo].[JobRequirements] ([IdReq], [Id_Job], [Requirement])
VALUES 
  (7, 12, N'Driving License')
GO

INSERT INTO [dbo].[JobRequirements] ([IdReq], [Id_Job], [Requirement])
VALUES 
  (8, 12, N'Weapon License')
GO

INSERT INTO [dbo].[JobRequirements] ([IdReq], [Id_Job], [Requirement])
VALUES 
  (9, 12, N'ORNIS Certificate')
GO

COMMIT
GO

SET IDENTITY_INSERT [dbo].[JobRequirements] OFF
GO

--
-- Data for table dbo.Jobs  (LIMIT 0,500)
--

SET IDENTITY_INSERT [dbo].[Jobs] ON
GO

BEGIN TRANSACTION
GO

INSERT INTO [dbo].[Jobs] ([IdJob], [IdWho], [User], [DateAdd], [ImageSRC], [ImagePath], [Titlu], [WhereWhat], [Description], [Content], [Solicitare], [DateStart], [DateEnd], [Orar], [Localitate], [Address], [Latitudine], [Longitudine], [ZIP], [Region])
VALUES 
  (1, NULL, N'f5891966-aa6b-4a69-b083-8f30a06abf58', N'2015-04-02', N'/Assets/Images/bus-01.png', N'/Assets/Images/Flags/Andalucia.jpg', N'Network Admin', N'Bucharest/RO/infosystems4u s.r.l.', N'Network maintainer', N'Here comes all the bla, bla, bla stuff for network admin job', N'Here comes the demand bla, bla stuff', NULL, NULL, N'', N'Bucuresti', N'Aleea Baiut 9A, bl.C36, apt. 166, sect. 6', 44.418836, 26.017786, NULL, N'Muntenia')
GO

INSERT INTO [dbo].[Jobs] ([IdJob], [IdWho], [User], [DateAdd], [ImageSRC], [ImagePath], [Titlu], [WhereWhat], [Description], [Content], [Solicitare], [DateStart], [DateEnd], [Orar], [Localitate], [Address], [Latitudine], [Longitudine], [ZIP], [Region])
VALUES 
  (2, NULL, N'f5891966-aa6b-4a69-b083-8f30a06abf58', N'2015-04-02', N'/Assets/Images/bus-05.png', N'/Assets/Images/Flags/Andalucia.jpg', N'Constructor', N'Bucharest/RO/Danyia Construct', N'Superintendent of build yard
', N'Here comes all the bla, bla, bla, bla, bla, stuff', N'Here comes the demand bla, bla, bla stuff', NULL, NULL, N'', N'Bucuresti', N'Blvd. Vasile Milea 4', 44.429605, 26.053417, NULL, N'Muntenia')
GO

INSERT INTO [dbo].[Jobs] ([IdJob], [IdWho], [User], [DateAdd], [ImageSRC], [ImagePath], [Titlu], [WhereWhat], [Description], [Content], [Solicitare], [DateStart], [DateEnd], [Orar], [Localitate], [Address], [Latitudine], [Longitudine], [ZIP], [Region])
VALUES 
  (3, NULL, N'f5891966-aa6b-4a69-b083-8f30a06abf58', N'2015-04-03', N'/Assets/Images/bus-03.png', N'/Assets/Images/Flags/Andalucia.jpg', N'Project Manager', N'Bucharest/RO/infosystems4u s.r.l.', N'Proficient dot.net web coder with leader abilities
', N'Here comes all the bla, bla, bla stuff', N'Here comes the demand bla, bla stuff', NULL, NULL, N'', N'Valea Doftanei', N'Strada Sorica 24', 45.402152, 25.766002, NULL, N'Muntenia')
GO

INSERT INTO [dbo].[Jobs] ([IdJob], [IdWho], [User], [DateAdd], [ImageSRC], [ImagePath], [Titlu], [WhereWhat], [Description], [Content], [Solicitare], [DateStart], [DateEnd], [Orar], [Localitate], [Address], [Latitudine], [Longitudine], [ZIP], [Region])
VALUES 
  (4, NULL, N'f5891966-aa6b-4a69-b083-8f30a06abf58', N'2015-04-03', N'/Assets/Images/bus-04.png', NULL, N'Web Developer', N'Bucuresti/RO/ING Office', N'Skilled dot.net web coder', N'Here comes all the bla, bla, bla stuff for web developer
', N'Here comes the demand bla, bla stuff', NULL, NULL, N'', N'Bucuresti', N'Drumul Taberei 90', 44.419458, 26.019913, NULL, N'Muntenia')
GO

INSERT INTO [dbo].[Jobs] ([IdJob], [IdWho], [User], [DateAdd], [ImageSRC], [ImagePath], [Titlu], [WhereWhat], [Description], [Content], [Solicitare], [DateStart], [DateEnd], [Orar], [Localitate], [Address], [Latitudine], [Longitudine], [ZIP], [Region])
VALUES 
  (5, NULL, N'f5891966-aa6b-4a69-b083-8f30a06abf58', N'2015-04-03', N'/Assets/Images/bus-06.png', NULL, N'DBA Admin', N'Bucuresti/RO/BRD', N'MSSQL Server admin
', N'Here comes all the bla, bla, bla stuff for dba admin guy
', N'Here comes the demand bla, bla stuff', NULL, NULL, N'', N'Bucuresti', N'Drumul Taberei 89', 44.419888, 26.019859, NULL, N'Muntenia')
GO

INSERT INTO [dbo].[Jobs] ([IdJob], [IdWho], [User], [DateAdd], [ImageSRC], [ImagePath], [Titlu], [WhereWhat], [Description], [Content], [Solicitare], [DateStart], [DateEnd], [Orar], [Localitate], [Address], [Latitudine], [Longitudine], [ZIP], [Region])
VALUES 
  (6, NULL, N'f5891966-aa6b-4a69-b083-8f30a06abf58', N'2015-04-03', N'/Assets/Images/bus-02.png', NULL, N'UX/UI Designer', N'Timisoara/RO/Siemens', N'Skilled UX/UI expert', N'Here comes all the bla, bla, bla stuff for UI/UX expert job', N'Here comes the demand bla, bla stuff', NULL, NULL, N'', N'Bucuresti', N'Blvd. Lacul Tei 74', 44.460122, 26.113937, NULL, N'Muntenia')
GO

INSERT INTO [dbo].[Jobs] ([IdJob], [IdWho], [User], [DateAdd], [ImageSRC], [ImagePath], [Titlu], [WhereWhat], [Description], [Content], [Solicitare], [DateStart], [DateEnd], [Orar], [Localitate], [Address], [Latitudine], [Longitudine], [ZIP], [Region])
VALUES 
  (7, NULL, N'f5891966-aa6b-4a69-b083-8f30a06abf58', N'2015-04-16', N'/Assets/Images/bus-06.png', NULL, N'SQL Profiler', N'Bucuresti/RO/Kaufland', NULL, N'bla', NULL, NULL, NULL, N'', N'Bucuresti', N'Blvd. Barbu Vacarescu', 44.463621, 26.109908, NULL, N'Muntenia')
GO

INSERT INTO [dbo].[Jobs] ([IdJob], [IdWho], [User], [DateAdd], [ImageSRC], [ImagePath], [Titlu], [WhereWhat], [Description], [Content], [Solicitare], [DateStart], [DateEnd], [Orar], [Localitate], [Address], [Latitudine], [Longitudine], [ZIP], [Region])
VALUES 
  (8, NULL, N'f5891966-aa6b-4a69-b083-8f30a06abf58', N'2015-04-16', N'/Assets/Images/bus-03.png', NULL, N'Sales Manager', N'Bucharest/RO/infosystems4u s.r.l.', NULL, N'bla, bla', NULL, NULL, NULL, N'', N'Bucuresti', N'Str. Valea Oltului', 44.42165, 26.012385, NULL, N'Muntenia')
GO

INSERT INTO [dbo].[Jobs] ([IdJob], [IdWho], [User], [DateAdd], [ImageSRC], [ImagePath], [Titlu], [WhereWhat], [Description], [Content], [Solicitare], [DateStart], [DateEnd], [Orar], [Localitate], [Address], [Latitudine], [Longitudine], [ZIP], [Region])
VALUES 
  (9, NULL, N'f5891966-aa6b-4a69-b083-8f30a06abf58', N'2015-04-16', N'/Assets/Images/bus-03.png', NULL, N'Marketing Manager', N'Bucharest/RO/infosystems4u s.r.l.', NULL, N'bla, bla, bla', NULL, NULL, NULL, N'', N'Otopeni', N'Soseaua Bucuresti Ploiesti', 44.571041, 26.076926, NULL, N'Muntenia')
GO

INSERT INTO [dbo].[Jobs] ([IdJob], [IdWho], [User], [DateAdd], [ImageSRC], [ImagePath], [Titlu], [WhereWhat], [Description], [Content], [Solicitare], [DateStart], [DateEnd], [Orar], [Localitate], [Address], [Latitudine], [Longitudine], [ZIP], [Region])
VALUES 
  (10, NULL, N'f5891966-aa6b-4a69-b083-8f30a06abf58', N'2015-04-16', N'/Assets/Images/bus-03.png', NULL, N'Account Manager', N'Bucharest/RO/infosystems4u s.r.l.', NULL, N'bla, bla, bla, bla', NULL, NULL, NULL, N'', N'Magurele', N'Soseaua de Centura', 44.350602, 26.048735, NULL, N'Muntenia')
GO

INSERT INTO [dbo].[Jobs] ([IdJob], [IdWho], [User], [DateAdd], [ImageSRC], [ImagePath], [Titlu], [WhereWhat], [Description], [Content], [Solicitare], [DateStart], [DateEnd], [Orar], [Localitate], [Address], [Latitudine], [Longitudine], [ZIP], [Region])
VALUES 
  (11, NULL, N'f5891966-aa6b-4a69-b083-8f30a06abf58', N'2015-04-17', N'/Assets/Images/bus-03.png', NULL, N'HR Manager', N'Bucuresti/RO/TNB', NULL, N'blabla', NULL, NULL, NULL, NULL, N'Bucuresti', N'Piata Universitatii', 44.43551, 26.102568, NULL, N'Muntenia')
GO

INSERT INTO [dbo].[Jobs] ([IdJob], [IdWho], [User], [DateAdd], [ImageSRC], [ImagePath], [Titlu], [WhereWhat], [Description], [Content], [Solicitare], [DateStart], [DateEnd], [Orar], [Localitate], [Address], [Latitudine], [Longitudine], [ZIP], [Region])
VALUES 
  (12, NULL, N'f5891966-aa6b-4a69-b083-8f30a06abf58', N'2015-04-17', N'/Assets/Images/bus-03.png', NULL, N'Security Manager', N'Constanta/RO/NTV', N'Mantains security of TV Station', N'Trebuie sa proeicteze si sa implementeze masurile de securitate fizica si informationala aferente postului de televiziune', N'Experienta in structuri militarizate', NULL, NULL, NULL, N'Constanta', N'Strada Remus Opreanu 12', 44.172077, 28.665344, NULL, N'Dobrogea')
GO

INSERT INTO [dbo].[Jobs] ([IdJob], [IdWho], [User], [DateAdd], [ImageSRC], [ImagePath], [Titlu], [WhereWhat], [Description], [Content], [Solicitare], [DateStart], [DateEnd], [Orar], [Localitate], [Address], [Latitudine], [Longitudine], [ZIP], [Region])
VALUES 
  (13, NULL, N'f5891966-aa6b-4a69-b083-8f30a06abf58', N'2015-04-17', NULL, NULL, N'Safety Manager', N'Bucuresti/RO/ITM', NULL, N'blablaba', NULL, NULL, NULL, NULL, N'Bucuresti', N'Str. Nerva Train', NULL, NULL, NULL, N'Muntenia')
GO

INSERT INTO [dbo].[Jobs] ([IdJob], [IdWho], [User], [DateAdd], [ImageSRC], [ImagePath], [Titlu], [WhereWhat], [Description], [Content], [Solicitare], [DateStart], [DateEnd], [Orar], [Localitate], [Address], [Latitudine], [Longitudine], [ZIP], [Region])
VALUES 
  (14, NULL, N'2e77fcfc-9ee6-4444-9b8c-41793af9a4ee', N'2015-04-23', NULL, NULL, N'Programator', NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'Iasi', NULL, NULL, NULL, NULL, N'Moldova')
GO

COMMIT
GO

SET IDENTITY_INSERT [dbo].[Jobs] OFF
GO

--
-- Data for table dbo.JobSkills  (LIMIT 0,500)
--

SET IDENTITY_INSERT [dbo].[JobSkills] ON
GO

BEGIN TRANSACTION
GO

INSERT INTO [dbo].[JobSkills] ([IdSkill], [Id_Job], [Title], [Level], [Description])
VALUES 
  (1, 1, N'Cisco CCNA', 50, N'Medium 
knowledge of CISCO Networking')
GO

INSERT INTO [dbo].[JobSkills] ([IdSkill], [Id_Job], [Title], [Level], [Description])
VALUES 
  (2, 1, N'Layer 3 Firewalling', 75, N'Medium Network protection skills')
GO

INSERT INTO [dbo].[JobSkills] ([IdSkill], [Id_Job], [Title], [Level], [Description])
VALUES 
  (3, 1, N'CAT5 Wireing', 70, N'Medium Network cabling skills')
GO

INSERT INTO [dbo].[JobSkills] ([IdSkill], [Id_Job], [Title], [Level], [Description])
VALUES 
  (4, 2, N'Welding', 25, N'Basic knowledge of Welding techniques')
GO

INSERT INTO [dbo].[JobSkills] ([IdSkill], [Id_Job], [Title], [Level], [Description])
VALUES 
  (5, 2, N'Carpentering', 30, N'Basic knowledge of carpentering techniques')
GO

INSERT INTO [dbo].[JobSkills] ([IdSkill], [Id_Job], [Title], [Level], [Description])
VALUES 
  (6, 3, N'Proficient Organisatoric Skills', 90, NULL)
GO

INSERT INTO [dbo].[JobSkills] ([IdSkill], [Id_Job], [Title], [Level], [Description])
VALUES 
  (7, 3, N'Intuitive', 75, N'Able to found solutions by intuition
')
GO

INSERT INTO [dbo].[JobSkills] ([IdSkill], [Id_Job], [Title], [Level], [Description])
VALUES 
  (8, 4, NULL, 40, NULL)
GO

INSERT INTO [dbo].[JobSkills] ([IdSkill], [Id_Job], [Title], [Level], [Description])
VALUES 
  (9, 4, NULL, 44, NULL)
GO

INSERT INTO [dbo].[JobSkills] ([IdSkill], [Id_Job], [Title], [Level], [Description])
VALUES 
  (10, 5, NULL, 55, NULL)
GO

INSERT INTO [dbo].[JobSkills] ([IdSkill], [Id_Job], [Title], [Level], [Description])
VALUES 
  (11, 5, NULL, 65, NULL)
GO

INSERT INTO [dbo].[JobSkills] ([IdSkill], [Id_Job], [Title], [Level], [Description])
VALUES 
  (12, 6, N'HTML5', 90, N'Knowledge of HTML5 syntax')
GO

INSERT INTO [dbo].[JobSkills] ([IdSkill], [Id_Job], [Title], [Level], [Description])
VALUES 
  (13, 6, N'CSS3', 85, N'Knowledge of CSS syntax')
GO

INSERT INTO [dbo].[JobSkills] ([IdSkill], [Id_Job], [Title], [Level], [Description])
VALUES 
  (14, 6, N'jQuery', 75, N'Knowledge of jQuery scripting')
GO

INSERT INTO [dbo].[JobSkills] ([IdSkill], [Id_Job], [Title], [Level], [Description])
VALUES 
  (15, 6, N'Less', 70, N'Knowledge of Less syntax')
GO

COMMIT
GO

SET IDENTITY_INSERT [dbo].[JobSkills] OFF
GO

--
-- Data for table dbo.markers  (LIMIT 0,500)
--

SET IDENTITY_INSERT [dbo].[markers] ON
GO

BEGIN TRANSACTION
GO

INSERT INTO [dbo].[markers] ([id], [name], [address], [latitudine], [longitudine], [ZIP], [informatii], [site], [email])
VALUES 
  (344, N'AFI Palace Cotroceni', N'Blvd. Vasile Milea 4', 44.429605, 26.053417, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[markers] ([id], [name], [address], [latitudine], [longitudine], [ZIP], [informatii], [site], [email])
VALUES 
  (345, N'Villa', N'Strada Sorica 24', 45.402152, 25.766002, NULL, NULL, N'www.vilafrv.ro
', N'contact@vilafrv.ro
''')
GO

INSERT INTO [dbo].[markers] ([id], [name], [address], [latitudine], [longitudine], [ZIP], [informatii], [site], [email])
VALUES 
  (346, N'acasa', N'Aleea Baiut 9A', 44.418836, 26.017786, N'061954', N'sediul nostru', N'www.infosystems4u.ro
', N'office@infosystems4u.ro''')
GO

INSERT INTO [dbo].[markers] ([id], [name], [address], [latitudine], [longitudine], [ZIP], [informatii], [site], [email])
VALUES 
  (347, N'ING', N'Drumul Taberei 90', 44.419458, 26.019913, NULL, NULL, N'www.ing.ro
', N'office@ing.ro
''')
GO

INSERT INTO [dbo].[markers] ([id], [name], [address], [latitudine], [longitudine], [ZIP], [informatii], [site], [email])
VALUES 
  (348, N'BRD', N'Drumul Taberei 89', 44.419888, 26.019859, NULL, NULL, N'ww.brd.ro
', N'office@brd.ro
''')
GO

INSERT INTO [dbo].[markers] ([id], [name], [address], [latitudine], [longitudine], [ZIP], [informatii], [site], [email])
VALUES 
  (349, N'Cami', N'Blvd. Lacul Tei', 44.460122, 26.113937, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[markers] ([id], [name], [address], [latitudine], [longitudine], [ZIP], [informatii], [site], [email])
VALUES 
  (350, N'Kaufland Tei', N'Blvd. B Vacarescu', 44.463621, 26.109908, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[markers] ([id], [name], [address], [latitudine], [longitudine], [ZIP], [informatii], [site], [email])
VALUES 
  (351, N'Kaufland Valea Oltului', N'Str. Valea Oltului', 44.42165, 26.012385, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[markers] ([id], [name], [address], [latitudine], [longitudine], [ZIP], [informatii], [site], [email])
VALUES 
  (352, N'Aeroportul Otopeni', N'Soseaua Bucuresti Ploiesti', 44.571041, 26.076926, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[markers] ([id], [name], [address], [latitudine], [longitudine], [ZIP], [informatii], [site], [email])
VALUES 
  (353, N'IFA Magurele', N'Soseaua de Centura', 44.350602, 26.048735, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[markers] ([id], [name], [address], [latitudine], [longitudine], [ZIP], [informatii], [site], [email])
VALUES 
  (354, N'Piata Unirii', N'Piata Unirii', 44.42684, 26.102362, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[markers] ([id], [name], [address], [latitudine], [longitudine], [ZIP], [informatii], [site], [email])
VALUES 
  (355, N'Pasajul Nicolae Balcescu', N'Piata Universitatii', 44.43551, 26.102568, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[markers] ([id], [name], [address], [latitudine], [longitudine], [ZIP], [informatii], [site], [email])
VALUES 
  (356, N'Parcul Drumul Taberei', N'Drumul Taberei 44A', 44.422087, 26.034193, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[markers] ([id], [name], [address], [latitudine], [longitudine], [ZIP], [informatii], [site], [email])
VALUES 
  (357, N'Peninsula', N'Strada Remus Opreanu 12', 44.172077, 28.665344, NULL, NULL, NULL, NULL)
GO

COMMIT
GO

SET IDENTITY_INSERT [dbo].[markers] OFF
GO

--
-- Definition for indices : 
--

ALTER TABLE [dbo].[AspNetRoles]
ADD CONSTRAINT [PK_dbo.AspNetRoles] 
PRIMARY KEY CLUSTERED ([Id])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
  ([Name])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  DROP_EXISTING = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  SORT_IN_TEMPDB = OFF,
  ONLINE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[AspNetUsers]
ADD CONSTRAINT [PK_dbo.AspNetUsers] 
PRIMARY KEY CLUSTERED ([Id])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
  ([UserName])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  DROP_EXISTING = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  SORT_IN_TEMPDB = OFF,
  ONLINE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
  ([UserId])
WITH (
  PAD_INDEX = OFF,
  DROP_EXISTING = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  SORT_IN_TEMPDB = OFF,
  ONLINE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[AspNetUserClaims]
ADD CONSTRAINT [PK_dbo.AspNetUserClaims] 
PRIMARY KEY CLUSTERED ([Id])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[AspNetUserDetails]
ADD PRIMARY KEY CLUSTERED ([IdDetail])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
  ([UserId])
WITH (
  PAD_INDEX = OFF,
  DROP_EXISTING = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  SORT_IN_TEMPDB = OFF,
  ONLINE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[AspNetUserLogins]
ADD CONSTRAINT [PK_dbo.AspNetUserLogins] 
PRIMARY KEY CLUSTERED ([LoginProvider], [ProviderKey], [UserId])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
  ([RoleId])
WITH (
  PAD_INDEX = OFF,
  DROP_EXISTING = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  SORT_IN_TEMPDB = OFF,
  ONLINE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
  ([UserId])
WITH (
  PAD_INDEX = OFF,
  DROP_EXISTING = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  SORT_IN_TEMPDB = OFF,
  ONLINE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[AspNetUserRoles]
ADD CONSTRAINT [PK_dbo.AspNetUserRoles] 
PRIMARY KEY CLUSTERED ([UserId], [RoleId])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Candidates]
ADD PRIMARY KEY CLUSTERED ([IdCV])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[CandidateEducation]
ADD PRIMARY KEY CLUSTERED ([Id_Edu])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[CandidateExperience]
ADD PRIMARY KEY CLUSTERED ([IdExp])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[CandidateReq]
ADD PRIMARY KEY CLUSTERED ([IdReq])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[CandidateSkills]
ADD PRIMARY KEY CLUSTERED ([Id_Skill])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Jobs]
ADD PRIMARY KEY CLUSTERED ([IdJob])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[JobRequirements]
ADD PRIMARY KEY CLUSTERED ([IdReq])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[JobSkills]
ADD PRIMARY KEY CLUSTERED ([IdSkill])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[markers]
ADD PRIMARY KEY CLUSTERED ([id])
WITH (
  PAD_INDEX = OFF,
  IGNORE_DUP_KEY = OFF,
  STATISTICS_NORECOMPUTE = OFF,
  ALLOW_ROW_LOCKS = ON,
  ALLOW_PAGE_LOCKS = ON)
ON [PRIMARY]
GO

--
-- Definition for foreign keys : 
--

ALTER TABLE [dbo].[AspNetUserClaims]
ADD CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY ([UserId]) 
  REFERENCES [dbo].[AspNetUsers] ([Id]) 
  ON UPDATE NO ACTION
  ON DELETE CASCADE
GO

ALTER TABLE [dbo].[AspNetUserDetails]
ADD CONSTRAINT [AspNetUserDetails_fk] FOREIGN KEY ([IdUser]) 
  REFERENCES [dbo].[AspNetUsers] ([Id]) 
  ON UPDATE NO ACTION
  ON DELETE CASCADE
GO

ALTER TABLE [dbo].[AspNetUserLogins]
ADD CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY ([UserId]) 
  REFERENCES [dbo].[AspNetUsers] ([Id]) 
  ON UPDATE NO ACTION
  ON DELETE CASCADE
GO

ALTER TABLE [dbo].[AspNetUserRoles]
ADD CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY ([RoleId]) 
  REFERENCES [dbo].[AspNetRoles] ([Id]) 
  ON UPDATE NO ACTION
  ON DELETE CASCADE
GO

ALTER TABLE [dbo].[AspNetUserRoles]
ADD CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY ([UserId]) 
  REFERENCES [dbo].[AspNetUsers] ([Id]) 
  ON UPDATE NO ACTION
  ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Candidates]
ADD CONSTRAINT [Candidates_fk] FOREIGN KEY ([User]) 
  REFERENCES [dbo].[AspNetUsers] ([Id]) 
  ON UPDATE NO ACTION
  ON DELETE NO ACTION
GO

ALTER TABLE [dbo].[CandidateEducation]
ADD CONSTRAINT [CandidateEducation_fk] FOREIGN KEY ([Id_CV]) 
  REFERENCES [dbo].[Candidates] ([IdCV]) 
  ON UPDATE NO ACTION
  ON DELETE CASCADE
GO

ALTER TABLE [dbo].[CandidateExperience]
ADD CONSTRAINT [CandidateExperience_fk] FOREIGN KEY ([Id_CV]) 
  REFERENCES [dbo].[Candidates] ([IdCV]) 
  ON UPDATE NO ACTION
  ON DELETE CASCADE
GO

ALTER TABLE [dbo].[CandidateReq]
ADD CONSTRAINT [CandidateReq_fk] FOREIGN KEY ([Id_CV]) 
  REFERENCES [dbo].[Candidates] ([IdCV]) 
  ON UPDATE NO ACTION
  ON DELETE CASCADE
GO

ALTER TABLE [dbo].[CandidateSkills]
ADD CONSTRAINT [CandidateSkills_fk] FOREIGN KEY ([Id_CV]) 
  REFERENCES [dbo].[Candidates] ([IdCV]) 
  ON UPDATE NO ACTION
  ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Jobs]
ADD CONSTRAINT [Jobs_fk] FOREIGN KEY ([User]) 
  REFERENCES [dbo].[AspNetUsers] ([Id]) 
  ON UPDATE NO ACTION
  ON DELETE CASCADE
GO

ALTER TABLE [dbo].[JobRequirements]
ADD CONSTRAINT [JobRequirements_fk] FOREIGN KEY ([Id_Job]) 
  REFERENCES [dbo].[Jobs] ([IdJob]) 
  ON UPDATE NO ACTION
  ON DELETE CASCADE
GO

ALTER TABLE [dbo].[JobSkills]
ADD CONSTRAINT [JobSkills_fk] FOREIGN KEY ([Id_Job]) 
  REFERENCES [dbo].[Jobs] ([IdJob]) 
  ON UPDATE NO ACTION
  ON DELETE CASCADE
GO

--
-- Role Membership
--

ALTER ROLE [aspnet_Membership_BasicAccess]
  ADD MEMBER [aspnet_Membership_FullAccess]
GO

ALTER ROLE [aspnet_Membership_ReportingAccess]
  ADD MEMBER [aspnet_Membership_FullAccess]
GO

ALTER ROLE [aspnet_Roles_BasicAccess]
  ADD MEMBER [aspnet_Roles_FullAccess]
GO

ALTER ROLE [aspnet_Roles_ReportingAccess]
  ADD MEMBER [aspnet_Roles_FullAccess]
GO

