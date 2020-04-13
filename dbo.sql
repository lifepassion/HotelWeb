/*
Navicat SQL Server Data Transfer

Source Server         : SqlServer
Source Server Version : 140000
Source Host           : DESKTOP-H1CD2SQ\MYSQL2017:1433
Source Database       : test
Source Schema         : dbo

Target Server Type    : SQL Server
Target Server Version : 140000
File Encoding         : 65001

Date: 2020-04-13 11:03:12
*/


-- ----------------------------
-- Table structure for BookInfo
-- ----------------------------
DROP TABLE [dbo].[BookInfo]
GO
CREATE TABLE [dbo].[BookInfo] (
[ID] int NULL ,
[CustomerName] varchar(255) NULL ,
[Phone] nvarchar(50) NULL ,
[Deposit] nchar(10) NULL ,
[CheckInTime] datetime NULL ,
[Days] int NULL ,
[RoomPrice] float(53) NULL ,
[RoomType] nchar(10) NULL ,
[RoomNumber] nchar(10) NULL ,
[Remarks] nchar(10) NULL 
)


GO

-- ----------------------------
-- Records of BookInfo
-- ----------------------------

-- ----------------------------
-- Table structure for CustomerInfo
-- ----------------------------
DROP TABLE [dbo].[CustomerInfo]
GO
CREATE TABLE [dbo].[CustomerInfo] (
[ID] int NOT NULL IDENTITY(1,1) ,
[CustomerName] nchar(10) NULL ,
[Sex] nchar(10) NULL ,
[CredentialNumber] varchar(50) NULL ,
[Phone] varchar(50) NULL ,
[Deposit] nchar(10) NULL ,
[CheckInTime] datetime NOT NULL ,
[Days] int NULL ,
[RoomPrice] nchar(10) NULL ,
[RoomType] nchar(10) NULL ,
[RoomNumber] nchar(10) NULL ,
[Remarks] nchar(10) NULL 
)


GO

-- ----------------------------
-- Records of CustomerInfo
-- ----------------------------
SET IDENTITY_INSERT [dbo].[CustomerInfo] ON
GO
SET IDENTITY_INSERT [dbo].[CustomerInfo] OFF
GO

-- ----------------------------
-- Table structure for Record
-- ----------------------------
DROP TABLE [dbo].[Record]
GO
CREATE TABLE [dbo].[Record] (
[ID] int NOT NULL IDENTITY(1,1) ,
[CustomerName] nchar(10) NULL ,
[Sex] nchar(10) NULL ,
[CredentialNumber] varchar(50) NULL ,
[Phone] varchar(50) NULL ,
[CheckInTime] datetime NULL ,
[CheckOutTime] datetime NULL ,
[Days] int NULL ,
[Spending] float(53) NULL ,
[RoomType] nchar(10) NULL ,
[RoomNumber] nchar(10) NULL ,
[Remarks] nchar(10) NULL 
)


GO

-- ----------------------------
-- Records of Record
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Record] ON
GO
SET IDENTITY_INSERT [dbo].[Record] OFF
GO

-- ----------------------------
-- Table structure for RoomInfo
-- ----------------------------
DROP TABLE [dbo].[RoomInfo]
GO
CREATE TABLE [dbo].[RoomInfo] (
[RoomNumber] nchar(10) NOT NULL ,
[RoomType] nchar(10) NULL ,
[RoomPrice] nchar(10) NULL ,
[RoomStatus] nchar(10) NULL ,
[Remarks] nchar(10) NULL 
)


GO

-- ----------------------------
-- Records of RoomInfo
-- ----------------------------
INSERT INTO [dbo].[RoomInfo] ([RoomNumber], [RoomType], [RoomPrice], [RoomStatus], [Remarks]) VALUES (N'101       ', N'标准单人间     ', N'99        ', N'可供        ', N'无         ')
GO
GO
INSERT INTO [dbo].[RoomInfo] ([RoomNumber], [RoomType], [RoomPrice], [RoomStatus], [Remarks]) VALUES (N'102       ', N'标准单人间     ', N'99        ', N'可供        ', N'无         ')
GO
GO
INSERT INTO [dbo].[RoomInfo] ([RoomNumber], [RoomType], [RoomPrice], [RoomStatus], [Remarks]) VALUES (N'103       ', N'标准单人间     ', N'99        ', N'可供        ', N'无         ')
GO
GO
INSERT INTO [dbo].[RoomInfo] ([RoomNumber], [RoomType], [RoomPrice], [RoomStatus], [Remarks]) VALUES (N'104       ', N'标准双人间     ', N'149       ', N'可供        ', N'无         ')
GO
GO
INSERT INTO [dbo].[RoomInfo] ([RoomNumber], [RoomType], [RoomPrice], [RoomStatus], [Remarks]) VALUES (N'105       ', N'标准双人间     ', N'149       ', N'可供        ', N'无         ')
GO
GO
INSERT INTO [dbo].[RoomInfo] ([RoomNumber], [RoomType], [RoomPrice], [RoomStatus], [Remarks]) VALUES (N'201       ', N'豪华单人间     ', N'199       ', N'可供        ', N'无         ')
GO
GO
INSERT INTO [dbo].[RoomInfo] ([RoomNumber], [RoomType], [RoomPrice], [RoomStatus], [Remarks]) VALUES (N'202       ', N'豪华单人间     ', N'199       ', N'可供        ', N'无         ')
GO
GO
INSERT INTO [dbo].[RoomInfo] ([RoomNumber], [RoomType], [RoomPrice], [RoomStatus], [Remarks]) VALUES (N'203       ', N'豪华单人间     ', N'199       ', N'可供        ', N'无         ')
GO
GO
INSERT INTO [dbo].[RoomInfo] ([RoomNumber], [RoomType], [RoomPrice], [RoomStatus], [Remarks]) VALUES (N'204       ', N'豪华双人间     ', N'249       ', N'可供        ', N'无         ')
GO
GO
INSERT INTO [dbo].[RoomInfo] ([RoomNumber], [RoomType], [RoomPrice], [RoomStatus], [Remarks]) VALUES (N'205       ', N'豪华双人间     ', N'249       ', N'可供        ', N'无         ')
GO
GO
INSERT INTO [dbo].[RoomInfo] ([RoomNumber], [RoomType], [RoomPrice], [RoomStatus], [Remarks]) VALUES (N'301       ', N'商务套房      ', N'299       ', N'可供        ', N'无         ')
GO
GO
INSERT INTO [dbo].[RoomInfo] ([RoomNumber], [RoomType], [RoomPrice], [RoomStatus], [Remarks]) VALUES (N'302       ', N'商务套房      ', N'299       ', N'可供        ', N'无         ')
GO
GO
INSERT INTO [dbo].[RoomInfo] ([RoomNumber], [RoomType], [RoomPrice], [RoomStatus], [Remarks]) VALUES (N'303       ', N'商务套房      ', N'299       ', N'可供        ', N'无         ')
GO
GO
INSERT INTO [dbo].[RoomInfo] ([RoomNumber], [RoomType], [RoomPrice], [RoomStatus], [Remarks]) VALUES (N'304       ', N'总统套房      ', N'399       ', N'可供        ', N'无         ')
GO
GO
INSERT INTO [dbo].[RoomInfo] ([RoomNumber], [RoomType], [RoomPrice], [RoomStatus], [Remarks]) VALUES (N'305       ', N'总统套房      ', N'399       ', N'可供        ', N'无         ')
GO
GO

-- ----------------------------
-- Table structure for UserInfo
-- ----------------------------
DROP TABLE [dbo].[UserInfo]
GO
CREATE TABLE [dbo].[UserInfo] (
[UserName] nchar(10) NULL ,
[UserPassword] varchar(53) NULL ,
[UserType] nchar(10) NULL 
)


GO

-- ----------------------------
-- Records of UserInfo
-- ----------------------------
INSERT INTO [dbo].[UserInfo] ([UserName], [UserPassword], [UserType]) VALUES (N'life      ', N'202cb962ac59075b964b07152d234b70', N'管理员       ')
GO
GO

-- ----------------------------
-- Table structure for WebUser
-- ----------------------------
DROP TABLE [dbo].[WebUser]
GO
CREATE TABLE [dbo].[WebUser] (
[username] varchar(255) NULL ,
[password] varchar(255) NULL ,
[telephone] nvarchar(50) NULL 
)


GO

-- ----------------------------
-- Records of WebUser
-- ----------------------------
INSERT INTO [dbo].[WebUser] ([username], [password], [telephone]) VALUES (N'1075794237@qq.com', N'202CB962AC59075B964B07152D234B70', N'15763262612')
GO
GO

-- ----------------------------
-- Indexes structure for table CustomerInfo
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table CustomerInfo
-- ----------------------------
ALTER TABLE [dbo].[CustomerInfo] ADD PRIMARY KEY ([ID])
GO

-- ----------------------------
-- Indexes structure for table Record
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table Record
-- ----------------------------
ALTER TABLE [dbo].[Record] ADD PRIMARY KEY ([ID])
GO
