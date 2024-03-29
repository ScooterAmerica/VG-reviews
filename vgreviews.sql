/****** Object:  ForeignKey [FK_Games_Platforms]    Script Date: 12/06/2010 15:50:42 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[vgreviews].[FK_Games_Platforms]') AND parent_object_id = OBJECT_ID(N'[vgreviews].[Games]'))
ALTER TABLE [vgreviews].[Games] DROP CONSTRAINT [FK_Games_Platforms]
GO
/****** Object:  Table [vgreviews].[Games]    Script Date: 12/06/2010 15:50:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vgreviews].[Games]') AND type in (N'U'))
DROP TABLE [vgreviews].[Games]
GO
/****** Object:  Table [vgreviews].[Platforms]    Script Date: 12/06/2010 15:50:42 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vgreviews].[Platforms]') AND type in (N'U'))
DROP TABLE [vgreviews].[Platforms]
GO
/****** Object:  Schema [vgreviews]    Script Date: 12/06/2010 15:50:42 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'vgreviews')
DROP SCHEMA [vgreviews]
GO
/****** Object:  Role [vgreviews]    Script Date: 12/06/2010 15:50:42 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'vgreviews')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'vgreviews' AND type = 'R')
CREATE ROLE [vgreviews]

END
GO
/****** Object:  Schema [vgreviews]    Script Date: 12/06/2010 15:50:42 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'vgreviews')
EXEC sys.sp_executesql N'CREATE SCHEMA [vgreviews] AUTHORIZATION [vgreviews]'
GO
/****** Object:  Table [vgreviews].[Platforms]    Script Date: 12/06/2010 15:50:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vgreviews].[Platforms]') AND type in (N'U'))
BEGIN
CREATE TABLE [vgreviews].[Platforms](
	[ID] [nchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Platform] [nchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_Platforms] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [vgreviews].[Platforms] ([ID], [Platform]) VALUES (N'1                                                 ', N'Xbox360                                           ')
INSERT [vgreviews].[Platforms] ([ID], [Platform]) VALUES (N'2                                                 ', N'PlayStation 3                                     ')
INSERT [vgreviews].[Platforms] ([ID], [Platform]) VALUES (N'3                                                 ', N'Wii                                               ')
INSERT [vgreviews].[Platforms] ([ID], [Platform]) VALUES (N'4                                                 ', N'PSP                                               ')
/****** Object:  Table [vgreviews].[Games]    Script Date: 12/06/2010 15:50:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[vgreviews].[Games]') AND type in (N'U'))
BEGIN
CREATE TABLE [vgreviews].[Games](
	[Game_ID] [int] NOT NULL,
	[Game] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Review] [varchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Platform_ID] [nchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Review_Date] [smalldatetime] NULL,
 CONSTRAINT [PK_Games] PRIMARY KEY CLUSTERED 
(
	[Game_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [vgreviews].[Games] ([Game_ID], [Game], [Review], [Platform_ID], [Review_Date]) VALUES (1, N'Call of Duty Black Ops', NULL, N'1                                                 ', CAST(0x9E430000 AS SmallDateTime))
INSERT [vgreviews].[Games] ([Game_ID], [Game], [Review], [Platform_ID], [Review_Date]) VALUES (2, N'Guitar Hero: Warriors of Rock', NULL, N'1                                                 ', CAST(0x9E430000 AS SmallDateTime))
INSERT [vgreviews].[Games] ([Game_ID], [Game], [Review], [Platform_ID], [Review_Date]) VALUES (3, N'Star Wars: The Force Unleashed II', NULL, N'1                                                 ', CAST(0x9E430000 AS SmallDateTime))
INSERT [vgreviews].[Games] ([Game_ID], [Game], [Review], [Platform_ID], [Review_Date]) VALUES (4, N'God of War III', NULL, N'2                                                 ', CAST(0x9E430000 AS SmallDateTime))
INSERT [vgreviews].[Games] ([Game_ID], [Game], [Review], [Platform_ID], [Review_Date]) VALUES (5, N'KillZone 3', NULL, N'2                                                 ', CAST(0x9E430000 AS SmallDateTime))
INSERT [vgreviews].[Games] ([Game_ID], [Game], [Review], [Platform_ID], [Review_Date]) VALUES (6, N'Wii Sports Resort', NULL, N'3                                                 ', CAST(0x9E430000 AS SmallDateTime))
INSERT [vgreviews].[Games] ([Game_ID], [Game], [Review], [Platform_ID], [Review_Date]) VALUES (7, N'Mario Kart Wii', NULL, N'3                                                 ', CAST(0x9E430000 AS SmallDateTime))
/****** Object:  ForeignKey [FK_Games_Platforms]    Script Date: 12/06/2010 15:50:42 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[vgreviews].[FK_Games_Platforms]') AND parent_object_id = OBJECT_ID(N'[vgreviews].[Games]'))
ALTER TABLE [vgreviews].[Games]  WITH CHECK ADD  CONSTRAINT [FK_Games_Platforms] FOREIGN KEY([Platform_ID])
REFERENCES [vgreviews].[Platforms] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[vgreviews].[FK_Games_Platforms]') AND parent_object_id = OBJECT_ID(N'[vgreviews].[Games]'))
ALTER TABLE [vgreviews].[Games] CHECK CONSTRAINT [FK_Games_Platforms]
GO
