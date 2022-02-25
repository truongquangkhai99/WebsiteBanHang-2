create database hangout

USE [hangout]
GO
/****** Object:  Table [dbo].[Account] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[uID] [int] IDENTITY(1,1) NOT NULL,
	[user] [varchar](255) NULL,
	[pass] [varchar](255) NULL,
	[isSell] [int] NULL,
	[isAdmin] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[uID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[AccountID] [int] NULL,
	[ProductID] [int] NULL,
	[Amount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]   ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[cid] [int] NOT NULL,
	[cname] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[image] [nvarchar](max) NULL,
	[price] [money] NULL,
	[title] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[cateID] [int] NULL,
	[sell_ID] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (1, N'Adam', N'123456', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (2, N'Anjolie', N'SNZ6HE', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (3, N'Ferris', N'RXH3XJ', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (4, N'Katell', N'HWV8ZN', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (5, N'Zahir', N'NPX7OF', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (6, N'Conan', N'WIZ5VZ', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (7, N'Cade', N'ZSW2LU', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (8, N'Micah', N'RVV5SR', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (9, N'Rowan', N'VAI6XR', 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (10, N'Kirby', N'DNX6JK', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (11, N'Tanisha', N'XWU7JP', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (12, N'Howard', N'TSR5MR', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (13, N'Tana', N'EHS8CM', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (14, N'Hadassah', N'YOY7ZW', 1, 0)

SET IDENTITY_INSERT [dbo].[Account] OFF
INSERT [dbo].[Category] ([cid], [cname]) VALUES (1, N'175cc-300cc')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (2, N'300cc-600cc')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (3, N'600cc-900cc')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (4, N'1000cc')

SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (1, N'175cc-300cc', N'https://canary.contestimg.wish.com/api/webimage/5f5ad3f3706bf3003d7acbd3-normal.jpg?cache_buster=10f7d3b88daf4019fa9d8be157793111', 100.000, N'Càng già tôi càng đi chậm lại. Có biker lớn tuổi và biker liều lĩnh, tuy nhiên không có biker nào vừa lớn tuổi lại vừa liều lĩnh cả.4', N'Tôi sống để chạy moto và đi moto để sống.', 1, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (1, N'175cc-300cc', N'https://canary.contestimg.wish.com/api/webimage/5f5ad3f3706bf3003d7acbd3-normal.jpg?cache_buster=10f7d3b88daf4019fa9d8be157793111', 100.000, N'Càng già tôi càng đi chậm lại. Có biker lớn tuổi và biker liều lĩnh, tuy nhiên không có biker nào vừa lớn tuổi lại vừa liều lĩnh cả.4', N'Tôi sống để chạy moto và đi moto để sống.', 2, 6)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (1, N'175cc-300cc', N'https://canary.contestimg.wish.com/api/webimage/5f5ad3f3706bf3003d7acbd3-normal.jpg?cache_buster=10f7d3b88daf4019fa9d8be157793111', 100.000, N'Càng già tôi càng đi chậm lại. Có biker lớn tuổi và biker liều lĩnh, tuy nhiên không có biker nào vừa lớn tuổi lại vừa liều lĩnh cả.4', N'Tôi sống để chạy moto và đi moto để sống.', 1, 7)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (1, N'175cc-300cc', N'https://canary.contestimg.wish.com/api/webimage/5f5ad3f3706bf3003d7acbd3-normal.jpg?cache_buster=10f7d3b88daf4019fa9d8be157793111', 100.000, N'Càng già tôi càng đi chậm lại. Có biker lớn tuổi và biker liều lĩnh, tuy nhiên không có biker nào vừa lớn tuổi lại vừa liều lĩnh cả.4', N'Tôi sống để chạy moto và đi moto để sống.', 2, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (1, N'175cc-300cc', N'https://canary.contestimg.wish.com/api/webimage/5f5ad3f3706bf3003d7acbd3-normal.jpg?cache_buster=10f7d3b88daf4019fa9d8be157793111', 100.000, N'Càng già tôi càng đi chậm lại. Có biker lớn tuổi và biker liều lĩnh, tuy nhiên không có biker nào vừa lớn tuổi lại vừa liều lĩnh cả.4', N'Tôi sống để chạy moto và đi moto để sống.', 1, 6)

select * from Account
select * from Cart
select * from Category