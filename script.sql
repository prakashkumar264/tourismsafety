USE [tourism]
GO
/****** Object:  Table [dbo].[feedback]    Script Date: 20-03-2018 22:30:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[feedback](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userid] [int] NULL,
	[locationid] [int] NULL,
	[hygiene] [nvarchar](max) NULL,
	[food] [nvarchar](max) NULL,
	[transportation] [nvarchar](max) NULL,
	[beggars] [nvarchar](max) NULL,
	[accomodation] [nvarchar](max) NULL,
	[womensafety] [nvarchar](max) NULL,
	[miscellaneous] [nvarchar](max) NULL,
	[tips] [nvarchar](max) NULL,
	[cultural] [nvarchar](max) NULL,
	[emergency] [nvarchar](max) NULL,
	[localauthorities] [nvarchar](max) NULL,
	[purposeid] [int] NULL,
	[photogalleyid] [int] NULL,
 CONSTRAINT [PK_feedback] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImageGallery]    Script Date: 20-03-2018 22:30:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImageGallery](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[imagepath] [varchar](max) NULL,
 CONSTRAINT [PK_ImageGallery] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[locationdata]    Script Date: 20-03-2018 22:30:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[locationdata](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[locationid] [int] NULL,
	[purposeid] [int] NULL,
	[hygieneissues] [nvarchar](max) NULL,
	[hygienesolution] [nvarchar](max) NULL,
	[foodissues] [nvarchar](max) NULL,
	[foodsolution] [nvarchar](max) NULL,
	[transportationissues] [nvarchar](max) NULL,
	[transportationsolution] [nvarchar](max) NULL,
	[beggarsissues] [nvarchar](max) NULL,
	[beggarssolution] [nvarchar](max) NULL,
	[accomodationissues] [nvarchar](max) NULL,
	[accomodationsolution] [nvarchar](max) NULL,
	[womensafetyissues] [nvarchar](max) NULL,
	[womensafetysolution] [nvarchar](max) NULL,
	[miscellaneousissues] [nvarchar](max) NULL,
	[miscellaneoussolution] [nvarchar](max) NULL,
	[culturalissues] [nvarchar](max) NULL,
	[culturalsolution] [nvarchar](max) NULL,
	[locationname] [varchar](50) NULL,
 CONSTRAINT [PK_locationdata] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[locationmaster]    Script Date: 20-03-2018 22:30:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[locationmaster](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[state] [nvarchar](max) NULL,
	[country] [nvarchar](max) NULL,
 CONSTRAINT [PK_locationmaster] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[photogallery]    Script Date: 20-03-2018 22:30:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[photogallery](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userid] [int] NULL,
	[locationid] [int] NULL,
	[feedbackid] [int] NULL,
 CONSTRAINT [PK_photogallery] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[purposemaster]    Script Date: 20-03-2018 22:30:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[purposemaster](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
 CONSTRAINT [PK_purposemaster] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[smallfeedback]    Script Date: 20-03-2018 22:30:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[smallfeedback](
	[id] [int] NOT NULL,
	[userid] [nvarchar](max) NULL,
	[goodexp] [nvarchar](max) NULL,
	[badexp] [nvarchar](max) NULL,
	[advice] [nvarchar](max) NULL,
 CONSTRAINT [PK_shortfeedback] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usermaster]    Script Date: 20-03-2018 22:30:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usermaster](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[phone] [nvarchar](max) NULL,
	[email] [nvarchar](max) NULL,
	[homecity] [nvarchar](max) NULL,
	[destinationcity] [nvarchar](max) NULL,
	[password] [nvarchar](max) NULL,
 CONSTRAINT [PK_usermaster] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[locationdata] ON 

INSERT [dbo].[locationdata] ([id], [locationid], [purposeid], [hygieneissues], [hygienesolution], [foodissues], [foodsolution], [transportationissues], [transportationsolution], [beggarsissues], [beggarssolution], [accomodationissues], [accomodationsolution], [womensafetyissues], [womensafetysolution], [miscellaneousissues], [miscellaneoussolution], [culturalissues], [culturalsolution], [locationname]) VALUES (1, 1, 1, N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'jaipur')
INSERT [dbo].[locationdata] ([id], [locationid], [purposeid], [hygieneissues], [hygienesolution], [foodissues], [foodsolution], [transportationissues], [transportationsolution], [beggarsissues], [beggarssolution], [accomodationissues], [accomodationsolution], [womensafetyissues], [womensafetysolution], [miscellaneousissues], [miscellaneoussolution], [culturalissues], [culturalsolution], [locationname]) VALUES (2, 1, 2, N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'jaipur')
INSERT [dbo].[locationdata] ([id], [locationid], [purposeid], [hygieneissues], [hygienesolution], [foodissues], [foodsolution], [transportationissues], [transportationsolution], [beggarsissues], [beggarssolution], [accomodationissues], [accomodationsolution], [womensafetyissues], [womensafetysolution], [miscellaneousissues], [miscellaneoussolution], [culturalissues], [culturalsolution], [locationname]) VALUES (3, 2, 1, N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', NULL)
INSERT [dbo].[locationdata] ([id], [locationid], [purposeid], [hygieneissues], [hygienesolution], [foodissues], [foodsolution], [transportationissues], [transportationsolution], [beggarsissues], [beggarssolution], [accomodationissues], [accomodationsolution], [womensafetyissues], [womensafetysolution], [miscellaneousissues], [miscellaneoussolution], [culturalissues], [culturalsolution], [locationname]) VALUES (4, 2, 2, N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', NULL)
INSERT [dbo].[locationdata] ([id], [locationid], [purposeid], [hygieneissues], [hygienesolution], [foodissues], [foodsolution], [transportationissues], [transportationsolution], [beggarsissues], [beggarssolution], [accomodationissues], [accomodationsolution], [womensafetyissues], [womensafetysolution], [miscellaneousissues], [miscellaneoussolution], [culturalissues], [culturalsolution], [locationname]) VALUES (5, 3, 1, N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', NULL)
INSERT [dbo].[locationdata] ([id], [locationid], [purposeid], [hygieneissues], [hygienesolution], [foodissues], [foodsolution], [transportationissues], [transportationsolution], [beggarsissues], [beggarssolution], [accomodationissues], [accomodationsolution], [womensafetyissues], [womensafetysolution], [miscellaneousissues], [miscellaneoussolution], [culturalissues], [culturalsolution], [locationname]) VALUES (6, 3, 2, N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', N'Sed urna erat, auctor ut congue a, porttitor vel neque. Etiam ornare, est non condimentum eleifend, elit tortor tincidunt lectus, quis lobortis felis leo vel nibh. Suspendisse eros orci, maximus quis fermentum quis', NULL)
SET IDENTITY_INSERT [dbo].[locationdata] OFF
SET IDENTITY_INSERT [dbo].[locationmaster] ON 

INSERT [dbo].[locationmaster] ([id], [name], [state], [country]) VALUES (1, N'Jaipur', N'Rajasthan', N'India')
INSERT [dbo].[locationmaster] ([id], [name], [state], [country]) VALUES (2, N'Jodhpur', N'Rajasthan', N'India')
INSERT [dbo].[locationmaster] ([id], [name], [state], [country]) VALUES (3, N'Jaisalmer', N'Rajasthan', N'India')
INSERT [dbo].[locationmaster] ([id], [name], [state], [country]) VALUES (4, N'Udiapur', N'Rajasthan', N'India')
INSERT [dbo].[locationmaster] ([id], [name], [state], [country]) VALUES (5, N'pushkar', N'Rajasthan', N'India')
INSERT [dbo].[locationmaster] ([id], [name], [state], [country]) VALUES (6, N'ajmer', N'Rajasthan', N'India')
INSERT [dbo].[locationmaster] ([id], [name], [state], [country]) VALUES (7, N'bikaner', N'Rajasthan', N'India')
INSERT [dbo].[locationmaster] ([id], [name], [state], [country]) VALUES (8, N'mount abu', N'Rajasthan', N'India')
INSERT [dbo].[locationmaster] ([id], [name], [state], [country]) VALUES (9, N'bharatpur', N'Rajasthan', N'India')
SET IDENTITY_INSERT [dbo].[locationmaster] OFF
SET IDENTITY_INSERT [dbo].[purposemaster] ON 

INSERT [dbo].[purposemaster] ([id], [name]) VALUES (1, N'business')
INSERT [dbo].[purposemaster] ([id], [name]) VALUES (2, N'wedding')
INSERT [dbo].[purposemaster] ([id], [name]) VALUES (3, N'personal')
SET IDENTITY_INSERT [dbo].[purposemaster] OFF
SET IDENTITY_INSERT [dbo].[usermaster] ON 

INSERT [dbo].[usermaster] ([id], [name], [phone], [email], [homecity], [destinationcity], [password]) VALUES (1, N'prakash', N'1234567891', N'prakas@gmail.com', N'mumbai', N'jaipur', N'abc123')
INSERT [dbo].[usermaster] ([id], [name], [phone], [email], [homecity], [destinationcity], [password]) VALUES (2, N'avinash', N'2354698785', N'avi@gmail.com', N'orissa', N'jaisalmer', N'abc123')
INSERT [dbo].[usermaster] ([id], [name], [phone], [email], [homecity], [destinationcity], [password]) VALUES (3, N'atul', N'2354698785', N'atul@gmail.com', N'mumbai', N'karnataka', N'abc123')
INSERT [dbo].[usermaster] ([id], [name], [phone], [email], [homecity], [destinationcity], [password]) VALUES (4, N'sanjay', N'5469871236', N'sajay@gmail.com', N'Kerla', N'udaipur', N'abc123')
SET IDENTITY_INSERT [dbo].[usermaster] OFF
/****** Object:  StoredProcedure [dbo].[findcitydetail]    Script Date: 20-03-2018 22:30:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[findcitydetail] 
	-- Add the parameters for the stored procedure here
            @locationid int,
			@purposeid int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from locationdata where locationid=@locationid and purposeid=@purposeid
END
GO
/****** Object:  StoredProcedure [dbo].[getlocationdetails]    Script Date: 20-03-2018 22:30:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getlocationdetails]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT id,name from locationmaster
END
GO
/****** Object:  StoredProcedure [dbo].[getpurpose]    Script Date: 20-03-2018 22:30:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getpurpose]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT id,name from purposemaster
end
GO
