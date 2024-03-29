USE [PRN211]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 6/24/2022 12:47:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](15) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 6/24/2022 12:47:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](40) NOT NULL,
	[UnitPrice] [money] NOT NULL,
	[UnitsInStock] [smallint] NOT NULL,
	[CategoryID] [int] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (2, N'Condiments')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (3, N'Confections')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (4, N'Dairy Products')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (5, N'Grains/Cereals')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (6, N'Meat/Pultry')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (7, N'Produce')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (8, N'Seafood')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (9, N'hihi')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (10, N'a')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (11, N'Becerages')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (12, N'dd')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName]) VALUES (13, N'Becerages')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock], [CategoryID]) VALUES (4, N'Aniseed Syrup', 40.0000, 13, 3)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock], [CategoryID]) VALUES (5, N'Perth Pasties ', 22.0000, 53, 2)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock], [CategoryID]) VALUES (6, N'Carnarvon Tigers ', 21.3500, 0, 4)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock], [CategoryID]) VALUES (7, N'Gula Malacca', 25.0000, 120, 2)
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [UnitsInStock], [CategoryID]) VALUES (8, N'Steeleye', 30.0000, 15, 7)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([CategoryID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
