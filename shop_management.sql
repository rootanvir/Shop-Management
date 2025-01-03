USE [TechShopManagement]
GO
/****** Object:  Table [dbo].[CustomerList]    Script Date: 29/08/2023 11:39:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CustomerList](
	[CustomerId] [varchar](50) NOT NULL,
	[CustomerName] [varchar](50) NOT NULL,
	[CustomerAddress] [varchar](50) NOT NULL,
	[CustomerPhoneNumber] [varchar](50) NOT NULL,
	[CustomerTotalExpense] [numeric](18, 2) NULL,
 CONSTRAINT [PK_CustomerList] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EmployeeList]    Script Date: 29/08/2023 11:39:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EmployeeList](
	[EmployeeId] [varchar](50) NOT NULL,
	[EmployeePassword] [varchar](50) NOT NULL,
	[EmployeeName] [varchar](50) NOT NULL,
	[EmployeeRole] [varchar](50) NOT NULL,
	[JobExperience] [float] NOT NULL,
	[JoiningDate] [varchar](50) NOT NULL,
	[EmployeeDOB] [varchar](50) NOT NULL,
	[EmployeeGender] [varchar](50) NOT NULL,
	[EmployeeBloodGroup] [varchar](50) NOT NULL,
	[EmployeePhoneNumber] [varchar](50) NOT NULL,
	[EmployeeSalary] [numeric](18, 2) NOT NULL,
	[EmployeeAddress] [varchar](50) NOT NULL,
 CONSTRAINT [PK_EmployeeList] PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductCartList]    Script Date: 29/08/2023 11:39:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductCartList](
	[ProductId] [varchar](50) NOT NULL,
	[ProductName] [varchar](50) NOT NULL,
	[Price] [numeric](18, 2) NOT NULL,
	[Quantity] [int] NOT NULL,
	[TotalPrice] [numeric](18, 2) NOT NULL,
 CONSTRAINT [PK_CartList] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductList]    Script Date: 29/08/2023 11:39:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductList](
	[ProductId] [nvarchar](50) NOT NULL,
	[BrandName] [nvarchar](50) NOT NULL,
	[ProductCategory] [nvarchar](50) NOT NULL,
	[ProductName] [nvarchar](50) NOT NULL,
	[Warranty] [int] NOT NULL,
	[Price] [numeric](18, 2) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Description] [nvarchar](50) NULL,
 CONSTRAINT [PK_ProductList] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SoldProductList]    Script Date: 29/08/2023 11:39:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SoldProductList](
	[PurchasedId] [varchar](50) NOT NULL,
	[TotalPrice] [numeric](18, 2) NOT NULL,
	[CustomerId] [varchar](50) NOT NULL,
	[PurchasedDate] [varchar](50) NOT NULL,
 CONSTRAINT [PK_SoldProdutList] PRIMARY KEY CLUSTERED 
(
	[PurchasedId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[EmployeeList]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeList_EmployeeList] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[EmployeeList] ([EmployeeId])
GO
ALTER TABLE [dbo].[EmployeeList] CHECK CONSTRAINT [FK_EmployeeList_EmployeeList]
GO
ALTER TABLE [dbo].[SoldProductList]  WITH CHECK ADD  CONSTRAINT [FK_SoldProdutList_CustomerList] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[CustomerList] ([CustomerId])
GO
ALTER TABLE [dbo].[SoldProductList] CHECK CONSTRAINT [FK_SoldProdutList_CustomerList]
GO
