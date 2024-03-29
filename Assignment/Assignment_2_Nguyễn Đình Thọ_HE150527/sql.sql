USE [SalesManagement]
GO
/****** Object:  Table [dbo].[Member]    Script Date: 7/10/2022 11:04:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Member](
	[MemberID] [int] IDENTITY(1,1) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[CompanyName] [varchar](40) NOT NULL,
	[City] [varchar](15) NOT NULL,
	[Country] [varchar](15) NOT NULL,
	[Password] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Member] PRIMARY KEY CLUSTERED 
(
	[MemberID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 7/10/2022 11:04:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[MemberID] [int] NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[RequiredDate] [datetime] NULL,
	[ShippedDate] [datetime] NULL,
	[Freight] [money] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 7/10/2022 11:04:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[UnitPrice] [money] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Discount] [float] NOT NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 7/10/2022 11:04:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NOT NULL,
	[ProductName] [varchar](40) NOT NULL,
	[Weight] [varchar](20) NOT NULL,
	[UnitPrice] [money] NOT NULL,
	[UnitInStock] [int] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Member] ON 

INSERT [dbo].[Member] ([MemberID], [Email], [CompanyName], [City], [Country], [Password]) VALUES (1, N'tho', N'123', N'123', N'123', N'123')
INSERT [dbo].[Member] ([MemberID], [Email], [CompanyName], [City], [Country], [Password]) VALUES (2, N'chi', N'123', N'123', N'123', N'123')
INSERT [dbo].[Member] ([MemberID], [Email], [CompanyName], [City], [Country], [Password]) VALUES (3, N'heg', N'123', N'123', N'123', N'123')
INSERT [dbo].[Member] ([MemberID], [Email], [CompanyName], [City], [Country], [Password]) VALUES (4, N'binhh', N'123', N'123', N'123', N'123')
INSERT [dbo].[Member] ([MemberID], [Email], [CompanyName], [City], [Country], [Password]) VALUES (5, N'nam', N'123', N'123', N'123', N'123')
INSERT [dbo].[Member] ([MemberID], [Email], [CompanyName], [City], [Country], [Password]) VALUES (6, N'hien ', N'123', N'123', N'123', N'123')
INSERT [dbo].[Member] ([MemberID], [Email], [CompanyName], [City], [Country], [Password]) VALUES (8, N'admin@fstore.com', N'123', N'123', N'123', N'admin@@')
SET IDENTITY_INSERT [dbo].[Member] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([OrderID], [MemberID], [OrderDate], [RequiredDate], [ShippedDate], [Freight]) VALUES (1, 3, CAST(N'2022-07-10T00:00:00.000' AS DateTime), CAST(N'2022-07-13T00:00:00.000' AS DateTime), CAST(N'2022-07-12T00:00:00.000' AS DateTime), 22000.0000)
INSERT [dbo].[Order] ([OrderID], [MemberID], [OrderDate], [RequiredDate], [ShippedDate], [Freight]) VALUES (3, 3, CAST(N'2022-07-10T00:00:00.000' AS DateTime), CAST(N'2022-07-13T00:00:00.000' AS DateTime), CAST(N'2022-07-12T00:00:00.000' AS DateTime), 22000.0000)
INSERT [dbo].[Order] ([OrderID], [MemberID], [OrderDate], [RequiredDate], [ShippedDate], [Freight]) VALUES (4, 4, CAST(N'2022-07-10T00:00:00.000' AS DateTime), CAST(N'2022-07-13T00:00:00.000' AS DateTime), CAST(N'2022-07-12T00:00:00.000' AS DateTime), 22000.0000)
INSERT [dbo].[Order] ([OrderID], [MemberID], [OrderDate], [RequiredDate], [ShippedDate], [Freight]) VALUES (5, 5, CAST(N'2022-07-10T00:00:00.000' AS DateTime), CAST(N'2022-07-13T00:00:00.000' AS DateTime), CAST(N'2022-07-12T00:00:00.000' AS DateTime), 22000.0000)
INSERT [dbo].[Order] ([OrderID], [MemberID], [OrderDate], [RequiredDate], [ShippedDate], [Freight]) VALUES (6, 2, CAST(N'2022-07-10T00:00:00.000' AS DateTime), CAST(N'2022-07-13T00:00:00.000' AS DateTime), CAST(N'2022-07-12T00:00:00.000' AS DateTime), 1.0000)
INSERT [dbo].[Order] ([OrderID], [MemberID], [OrderDate], [RequiredDate], [ShippedDate], [Freight]) VALUES (7, 3, CAST(N'2022-07-10T00:00:00.000' AS DateTime), CAST(N'2022-07-13T00:00:00.000' AS DateTime), CAST(N'2022-07-12T00:00:00.000' AS DateTime), 1.0000)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
INSERT [dbo].[OrderDetail] ([OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (1, 1, 1000.0000, 2, 10)
INSERT [dbo].[OrderDetail] ([OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (1, 2, 1000.0000, 2, 10)
INSERT [dbo].[OrderDetail] ([OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (1, 3, 2222.0000, 2, 10)
INSERT [dbo].[OrderDetail] ([OrderID], [ProductID], [UnitPrice], [Quantity], [Discount]) VALUES (3, 1, 1000.0000, 2, 10)
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductID], [CategoryID], [ProductName], [Weight], [UnitPrice], [UnitInStock]) VALUES (1, 1, N'Tao', N'100g', 1000.0000, 2)
INSERT [dbo].[Product] ([ProductID], [CategoryID], [ProductName], [Weight], [UnitPrice], [UnitInStock]) VALUES (2, 2, N'Ca chua', N'100g', 1000.0000, 1)
INSERT [dbo].[Product] ([ProductID], [CategoryID], [ProductName], [Weight], [UnitPrice], [UnitInStock]) VALUES (3, 2, N'Cai thao', N'100g', 10000.0000, 1)
INSERT [dbo].[Product] ([ProductID], [CategoryID], [ProductName], [Weight], [UnitPrice], [UnitInStock]) VALUES (4, 1, N'Tao', N'100g', 1000.0000, 2)
INSERT [dbo].[Product] ([ProductID], [CategoryID], [ProductName], [Weight], [UnitPrice], [UnitInStock]) VALUES (5, 1, N'Nhan', N'100g', 1000.0000, 2)
INSERT [dbo].[Product] ([ProductID], [CategoryID], [ProductName], [Weight], [UnitPrice], [UnitInStock]) VALUES (13, 1, N'Tao', N'100g', 1000.0000, 2)
INSERT [dbo].[Product] ([ProductID], [CategoryID], [ProductName], [Weight], [UnitPrice], [UnitInStock]) VALUES (14, 1, N'Tao', N'100g', 1000.0000, 2)
INSERT [dbo].[Product] ([ProductID], [CategoryID], [ProductName], [Weight], [UnitPrice], [UnitInStock]) VALUES (15, 11, N'11', N'11', 11.0000, 11)
INSERT [dbo].[Product] ([ProductID], [CategoryID], [ProductName], [Weight], [UnitPrice], [UnitInStock]) VALUES (18, 1, N'Tao', N'100g', 1000.0000, 2)
INSERT [dbo].[Product] ([ProductID], [CategoryID], [ProductName], [Weight], [UnitPrice], [UnitInStock]) VALUES (19, 1, N'Taoo', N'100g', 1000.0000, 2)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Member] FOREIGN KEY([MemberID])
REFERENCES [dbo].[Member] ([MemberID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Member]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Product]
GO
