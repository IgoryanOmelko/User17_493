USE [master]
GO
/****** Object:  Database [User17_493]    Script Date: 04.03.2023 16:05:08 ******/
CREATE DATABASE [User17_493]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'User17_493', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\User17_493.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'User17_493_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\User17_493_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [User17_493] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [User17_493].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [User17_493] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [User17_493] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [User17_493] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [User17_493] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [User17_493] SET ARITHABORT OFF 
GO
ALTER DATABASE [User17_493] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [User17_493] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [User17_493] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [User17_493] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [User17_493] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [User17_493] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [User17_493] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [User17_493] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [User17_493] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [User17_493] SET  ENABLE_BROKER 
GO
ALTER DATABASE [User17_493] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [User17_493] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [User17_493] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [User17_493] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [User17_493] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [User17_493] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [User17_493] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [User17_493] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [User17_493] SET  MULTI_USER 
GO
ALTER DATABASE [User17_493] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [User17_493] SET DB_CHAINING OFF 
GO
ALTER DATABASE [User17_493] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [User17_493] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [User17_493] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [User17_493] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [User17_493] SET QUERY_STORE = OFF
GO
USE [User17_493]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 04.03.2023 16:05:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [int] NOT NULL,
	[CategoryName] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manufacturer]    Script Date: 04.03.2023 16:05:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manufacturer](
	[ManufacturerID] [int] NOT NULL,
	[ManufacturerName] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ManufacturerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 04.03.2023 16:05:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] NOT NULL,
	[OrderOrderedDate] [datetime] NOT NULL,
	[OrderDeliveryDate] [datetime] NOT NULL,
	[OrderPickupPoint] [int] NOT NULL,
	[OrderUser] [int] NULL,
	[OrderDeliveryCode] [int] NOT NULL,
	[OrderStatus] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderProduct]    Script Date: 04.03.2023 16:05:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderProduct](
	[OrderID] [int] NOT NULL,
	[ProductArticleNumber] [nvarchar](100) NOT NULL,
	[ProductAmount] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[ProductArticleNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PickupPoint]    Script Date: 04.03.2023 16:05:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PickupPoint](
	[PickupPointID] [int] NOT NULL,
	[PickupPointAddress] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PickupPointID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 04.03.2023 16:05:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductArticleNumber] [nvarchar](100) NOT NULL,
	[ProductName] [nvarchar](max) NOT NULL,
	[ProductUnit] [int] NOT NULL,
	[ProductCost] [decimal](19, 4) NOT NULL,
	[ProductDiscountAmountMax] [tinyint] NULL,
	[ProductManufacturer] [int] NOT NULL,
	[ProductProvider] [int] NOT NULL,
	[ProductCategory] [int] NOT NULL,
	[ProductDiscountAmount] [tinyint] NULL,
	[ProductQuantityInStock] [int] NOT NULL,
	[ProductDescription] [nvarchar](max) NOT NULL,
	[ProductPhoto] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductArticleNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Provider]    Script Date: 04.03.2023 16:05:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provider](
	[ProviderID] [int] NOT NULL,
	[ProviderName] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProviderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 04.03.2023 16:05:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [int] NOT NULL,
	[RoleName] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 04.03.2023 16:05:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[StatusID] [int] NOT NULL,
	[StatusName] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Unit]    Script Date: 04.03.2023 16:05:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Unit](
	[UnitID] [int] NOT NULL,
	[UnitName] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UnitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 04.03.2023 16:05:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] NOT NULL,
	[UserSurname] [nvarchar](100) NOT NULL,
	[UserName] [nvarchar](100) NOT NULL,
	[UserPatronymic] [nvarchar](100) NOT NULL,
	[UserLogin] [nvarchar](max) NOT NULL,
	[UserPassword] [nvarchar](max) NOT NULL,
	[UserRole] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (1, N'Одежда')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (2, N'Спортивный инвентарь')
GO
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (1, N'Abtoys')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (2, N'Atemi')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (3, N'Bradex')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (4, N'Colton')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (5, N'Demix')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (6, N'DFC')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (7, N'Green Hill')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (8, N'Mikasa')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (9, N'Moby Kids')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (10, N'Molten')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (11, N'Nordway')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (12, N'Perfetto Sport')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (13, N'playToday')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (14, N'Ridex')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (15, N'ROMANA Next')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (16, N'Salomon')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (17, N'SKIF')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (18, N'Starfit')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (19, N'X-Match')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (20, N'Совтехстром')
GO
INSERT [dbo].[Order] ([OrderID], [OrderOrderedDate], [OrderDeliveryDate], [OrderPickupPoint], [OrderUser], [OrderDeliveryCode], [OrderStatus]) VALUES (1, CAST(N'2022-05-15T00:00:00.000' AS DateTime), CAST(N'2022-05-21T00:00:00.000' AS DateTime), 18, 7, 401, 1)
INSERT [dbo].[Order] ([OrderID], [OrderOrderedDate], [OrderDeliveryDate], [OrderPickupPoint], [OrderUser], [OrderDeliveryCode], [OrderStatus]) VALUES (2, CAST(N'2022-05-16T00:00:00.000' AS DateTime), CAST(N'2022-05-22T00:00:00.000' AS DateTime), 20, 8, 402, 1)
INSERT [dbo].[Order] ([OrderID], [OrderOrderedDate], [OrderDeliveryDate], [OrderPickupPoint], [OrderUser], [OrderDeliveryCode], [OrderStatus]) VALUES (3, CAST(N'2022-05-17T00:00:00.000' AS DateTime), CAST(N'2022-05-23T00:00:00.000' AS DateTime), 20, 9, 403, 2)
INSERT [dbo].[Order] ([OrderID], [OrderOrderedDate], [OrderDeliveryDate], [OrderPickupPoint], [OrderUser], [OrderDeliveryCode], [OrderStatus]) VALUES (4, CAST(N'2022-05-18T00:00:00.000' AS DateTime), CAST(N'2022-05-24T00:00:00.000' AS DateTime), 22, 10, 404, 1)
INSERT [dbo].[Order] ([OrderID], [OrderOrderedDate], [OrderDeliveryDate], [OrderPickupPoint], [OrderUser], [OrderDeliveryCode], [OrderStatus]) VALUES (5, CAST(N'2022-05-19T00:00:00.000' AS DateTime), CAST(N'2022-05-25T00:00:00.000' AS DateTime), 22, NULL, 405, 1)
INSERT [dbo].[Order] ([OrderID], [OrderOrderedDate], [OrderDeliveryDate], [OrderPickupPoint], [OrderUser], [OrderDeliveryCode], [OrderStatus]) VALUES (6, CAST(N'2022-05-19T00:00:00.000' AS DateTime), CAST(N'2022-05-25T00:00:00.000' AS DateTime), 16, NULL, 406, 1)
INSERT [dbo].[Order] ([OrderID], [OrderOrderedDate], [OrderDeliveryDate], [OrderPickupPoint], [OrderUser], [OrderDeliveryCode], [OrderStatus]) VALUES (7, CAST(N'2022-05-21T00:00:00.000' AS DateTime), CAST(N'2022-05-27T00:00:00.000' AS DateTime), 16, NULL, 407, 2)
INSERT [dbo].[Order] ([OrderID], [OrderOrderedDate], [OrderDeliveryDate], [OrderPickupPoint], [OrderUser], [OrderDeliveryCode], [OrderStatus]) VALUES (8, CAST(N'2022-05-22T00:00:00.000' AS DateTime), CAST(N'2022-05-28T00:00:00.000' AS DateTime), 18, NULL, 408, 2)
INSERT [dbo].[Order] ([OrderID], [OrderOrderedDate], [OrderDeliveryDate], [OrderPickupPoint], [OrderUser], [OrderDeliveryCode], [OrderStatus]) VALUES (9, CAST(N'2022-05-23T00:00:00.000' AS DateTime), CAST(N'2022-05-29T00:00:00.000' AS DateTime), 24, NULL, 409, 1)
INSERT [dbo].[Order] ([OrderID], [OrderOrderedDate], [OrderDeliveryDate], [OrderPickupPoint], [OrderUser], [OrderDeliveryCode], [OrderStatus]) VALUES (10, CAST(N'2022-05-24T00:00:00.000' AS DateTime), CAST(N'2022-05-30T00:00:00.000' AS DateTime), 24, NULL, 410, 2)
GO
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [ProductAmount]) VALUES (1, N'G598Y6', 2)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [ProductAmount]) VALUES (1, N'А112Т4', 2)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [ProductAmount]) VALUES (2, N'D830R5', 3)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [ProductAmount]) VALUES (2, N'F746E6', 3)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [ProductAmount]) VALUES (3, N'D648N7', 10)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [ProductAmount]) VALUES (3, N'F735B6', 10)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [ProductAmount]) VALUES (4, N'E324U7', 1)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [ProductAmount]) VALUES (4, N'F937G4', 1)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [ProductAmount]) VALUES (5, N'D038G6', 10)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [ProductAmount]) VALUES (5, N'N483G5', 10)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [ProductAmount]) VALUES (6, N'C324S5', 2)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [ProductAmount]) VALUES (6, N'G480F5', 2)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [ProductAmount]) VALUES (7, N'J4DF5E', 1)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [ProductAmount]) VALUES (7, N'V312R4', 1)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [ProductAmount]) VALUES (8, N'G522B5', 3)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [ProductAmount]) VALUES (8, N'K432G6', 3)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [ProductAmount]) VALUES (9, N'F047J7', 1)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [ProductAmount]) VALUES (9, N'S374B5', 1)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [ProductAmount]) VALUES (10, N'D927K3', 5)
INSERT [dbo].[OrderProduct] ([OrderID], [ProductArticleNumber], [ProductAmount]) VALUES (10, N'N836R5', 5)
GO
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointAddress]) VALUES (1, N'344288, г. Дубна, ул. Чехова, 1')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointAddress]) VALUES (2, N'614164, г.Дубна,  ул. Степная, 30')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointAddress]) VALUES (3, N'394242, г. Дубна, ул. Коммунистическая, 43')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointAddress]) VALUES (4, N'660540, г. Дубна, ул. Солнечная, 25')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointAddress]) VALUES (5, N'125837, г. Дубна, ул. Шоссейная, 40')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointAddress]) VALUES (6, N'125703, г. Дубна, ул. Партизанская, 49')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointAddress]) VALUES (7, N'625283, г. Дубна, ул. Победы, 46')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointAddress]) VALUES (8, N'614611, г. Дубна, ул. Молодежная, 50')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointAddress]) VALUES (9, N'454311, г.Дубна, ул. Новая, 19')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointAddress]) VALUES (10, N'660007, г.Дубна, ул. Октябрьская, 19')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointAddress]) VALUES (11, N'603036, г. Дубна, ул. Садовая, 4')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointAddress]) VALUES (12, N'450983, г.Дубна, ул. Комсомольская, 26')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointAddress]) VALUES (13, N'394782, г. Дубна, ул. Чехова, 3')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointAddress]) VALUES (14, N'603002, г. Дубна, ул. Дзержинского, 28')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointAddress]) VALUES (15, N'450558, г. Дубна, ул. Набережная, 30')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointAddress]) VALUES (16, N'394060, г.Дубна, ул. Фрунзе, 43')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointAddress]) VALUES (17, N'410661, г. Дубна, ул. Школьная, 50')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointAddress]) VALUES (18, N'625590, г. Дубна, ул. Коммунистическая, 20')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointAddress]) VALUES (19, N'625683, г. Дубна, ул. 8 Марта')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointAddress]) VALUES (20, N'400562, г. Дубна, ул. Зеленая, 32')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointAddress]) VALUES (21, N'614510, г. Дубна, ул. Маяковского, 47')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointAddress]) VALUES (22, N'410542, г. Дубна, ул. Светлая, 46')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointAddress]) VALUES (23, N'620839, г. Дубна, ул. Цветочная, 8')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointAddress]) VALUES (24, N'443890, г. Дубна, ул. Коммунистическая, 1')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointAddress]) VALUES (25, N'603379, г. Дубна, ул. Спортивная, 46')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointAddress]) VALUES (26, N'603721, г. Дубна, ул. Гоголя, 41')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointAddress]) VALUES (27, N'410172, г. Дубна, ул. Северная, 13')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointAddress]) VALUES (28, N'420151, г. Дубна, ул. Вишневая, 32')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointAddress]) VALUES (29, N'125061, г. Дубна, ул. Подгорная, 8')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointAddress]) VALUES (30, N'630370, г. Дубна, ул. Шоссейная, 24')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointAddress]) VALUES (31, N'614753, г. Дубна, ул. Полевая, 35')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointAddress]) VALUES (32, N'426030, г. Дубна, ул. Маяковского, 44')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointAddress]) VALUES (33, N'450375, г. Дубна ул. Клубная, 44')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointAddress]) VALUES (34, N'625560, г. Дубна, ул. Некрасова, 12')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointAddress]) VALUES (35, N'630201, г. Дубна, ул. Комсомольская, 17')
INSERT [dbo].[PickupPoint] ([PickupPointID], [PickupPointAddress]) VALUES (36, N'190949, г. Дубна, ул. Мичурина, 26')
GO
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductDiscountAmountMax], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'B538G6', N'Спортивный костюм', 1, CAST(839.0000 AS Decimal(19, 4)), 5, 13, 2, 1, 3, 17, N'Спортивный костюм playToday (футболка + шорты)', N'B538G6.jpg')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductDiscountAmountMax], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'C324S5', N'Шлем', 1, CAST(4000.0000 AS Decimal(19, 4)), 10, 16, 1, 2, 5, 16, N'Шлем г.л./сноуб. Salomon Grom р.:KS черный (L40836800)', N'')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductDiscountAmountMax], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'D038G6', N'Лыжный комплект', 1, CAST(3000.0000 AS Decimal(19, 4)), 30, 11, 1, 2, 4, 23, N'Лыжный комплект беговые NORDWAY XC Classic, 45-45-45мм, 160см', N'')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductDiscountAmountMax], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'D648N7', N'Набор для хоккея', 1, CAST(350.0000 AS Decimal(19, 4)), 10, 20, 1, 2, 4, 7, N'Набор для хоккея Совтехстром', N'D648N7.jpg')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductDiscountAmountMax], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'D830R5', N'Тренажер прыжков', 1, CAST(1120.0000 AS Decimal(19, 4)), 15, 9, 2, 2, 4, 8, N'Тренажер для прыжков Moby Kids Moby-Jumper со счетчиком', N'D830R5.jpg')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductDiscountAmountMax], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'D893W4', N'Мяч', 1, CAST(900.0000 AS Decimal(19, 4)), 5, 5, 2, 2, 2, 5, N'Мяч футбольный DEMIX 1STLS1JWWW, универсальный, 4-й размер, белый/зеленый', N'')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductDiscountAmountMax], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'D927K3', N'Перчатки ', 1, CAST(660.0000 AS Decimal(19, 4)), 15, 18, 1, 2, 4, 3, N'Перчатки Starfit SU-125 атлетические S черный', N'')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductDiscountAmountMax], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'E324U7', N'Велотренажер', 1, CAST(6480.0000 AS Decimal(19, 4)), 25, 6, 2, 2, 5, 5, N'Велотренажер двойной DFC B804 dual bike', N'E324U7.jpg')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductDiscountAmountMax], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'F047J7', N'Коврик', 1, CAST(720.0000 AS Decimal(19, 4)), 15, 3, 2, 2, 5, 11, N'Коврик Bradex для мягкой йоги дл.:1730мм ш.:610мм т.:3мм серый', N'')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductDiscountAmountMax], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'F687G5', N'Защита голени', 1, CAST(1900.0000 AS Decimal(19, 4)), 15, 7, 2, 2, 4, 6, N'Защита голени GREEN HILL Panther, L, синий/черный', N'')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductDiscountAmountMax], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'F735B6', N'Игровой набор', 1, CAST(320.0000 AS Decimal(19, 4)), 15, 20, 1, 2, 2, 9, N'Игровой набор Совтехстром Кегли и шары', N'F735B6.jpg')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductDiscountAmountMax], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'F746E6', N'Шведская стенка', 1, CAST(9900.0000 AS Decimal(19, 4)), 10, 15, 1, 2, 3, 5, N'Шведская стенка ROMANA Next, pastel', N'F746E6.jpg')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductDiscountAmountMax], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'F937G4', N'Игровой набор', 1, CAST(480.0000 AS Decimal(19, 4)), 10, 1, 2, 2, 4, 12, N'Набор Abtoys Бадминтон и теннис ', N'F937G4.jpg')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductDiscountAmountMax], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'G403T5', N'Тюбинг', 1, CAST(1450.0000 AS Decimal(19, 4)), 15, 11, 2, 2, 4, 13, N'Тюбинг Nordway, 73 см', N'G403T5.jpg')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductDiscountAmountMax], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'G480F5', N'Ролики', 1, CAST(1600.0000 AS Decimal(19, 4)), 15, 14, 2, 2, 4, 7, N'Коньки роликовые Ridex Cricket жен. ABEC 3 кол.:72мм р.:39-42 синий', N'')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductDiscountAmountMax], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'G522B5', N'Ласты', 1, CAST(1980.0000 AS Decimal(19, 4)), 15, 4, 1, 2, 3, 6, N'Ласты Colton CF-02 для плавания р.:33-34 серый/голубой', N'')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductDiscountAmountMax], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'G598Y6', N'Спортивный мат', 1, CAST(2390.0000 AS Decimal(19, 4)), 15, 12, 1, 2, 2, 16, N'Спортивный мат 100x100x10 см Perfetto Sport № 3 бежевый', N'G598Y6.jpg')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductDiscountAmountMax], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'G873H4', N'Велосипед', 1, CAST(14930.0000 AS Decimal(19, 4)), 5, 17, 2, 2, 4, 6, N'Велосипед SKIF 29 Disc (2021), горный (взрослый), рама: 17", колеса: 29", темно-серый', N'')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductDiscountAmountMax], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'J4DF5E', N'Насос', 1, CAST(300.0000 AS Decimal(19, 4)), 5, 10, 2, 2, 4, 12, N'Насос Molten HP-18-B для мячей мультиколор', N'')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductDiscountAmountMax], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'J532D4', N'Перчатки для карате', 1, CAST(1050.0000 AS Decimal(19, 4)), 15, 7, 2, 2, 3, 5, N'Перчатки для каратэ Green Hill KMС-6083 L красный', N'')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductDiscountAmountMax], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'K432G6', N'Шапочка для плавания', 1, CAST(440.0000 AS Decimal(19, 4)), 25, 2, 1, 2, 5, 17, N'Шапочка для плавания Atemi PU 140 ткань с покрытием желтый', N'')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductDiscountAmountMax], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'K937A5', N'Гиря', 1, CAST(890.0000 AS Decimal(19, 4)), 5, 18, 1, 2, 4, 10, N'Гиря Starfit ГМБ4 мягкое 4кг синий/оранжевый', N'')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductDiscountAmountMax], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'N483G5', N'Клюшка', 1, CAST(1299.0000 AS Decimal(19, 4)), 10, 11, 1, 2, 3, 4, N'Клюшка Nordway NDW300 (2019/2020) SR лев. 19 150см', N'')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductDiscountAmountMax], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'N836R5', N'Коньки', 1, CAST(2000.0000 AS Decimal(19, 4)), 10, 2, 1, 2, 3, 16, N'Коньки ATEMI AKSK01DXS, раздвижные, прогулочные, унисекс, 27-30, черный/зеленый', N'')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductDiscountAmountMax], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'N892G6', N'Очки для плавания', 1, CAST(500.0000 AS Decimal(19, 4)), 5, 2, 1, 2, 5, 14, N'Очки для плавания Atemi N8401 синий', N'')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductDiscountAmountMax], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'S374B5', N'Ролик для йоги', 1, CAST(700.0000 AS Decimal(19, 4)), 10, 3, 2, 2, 3, 12, N'Ролик для йоги Bradex Туба d=14см ш.:33см оранжевый', N'')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductDiscountAmountMax], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'V312R4', N'Мяч', 1, CAST(4150.0000 AS Decimal(19, 4)), 20, 8, 1, 2, 2, 5, N'Мяч волейбольный MIKASA VT370W, для зала, 5-й размер, желтый/синий', N'')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductDiscountAmountMax], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'V392H7', N'Степ-платформа', 1, CAST(4790.0000 AS Decimal(19, 4)), 10, 18, 2, 2, 3, 15, N'Степ-платформа Starfit SP-204 серый/черный', N'')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductDiscountAmountMax], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'V423D4', N'Штанга', 1, CAST(5600.0000 AS Decimal(19, 4)), 10, 18, 1, 2, 3, 8, N'Штанга Starfit BB-401 30кг пласт. черный ', N'')
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductUnit], [ProductCost], [ProductDiscountAmountMax], [ProductManufacturer], [ProductProvider], [ProductCategory], [ProductDiscountAmount], [ProductQuantityInStock], [ProductDescription], [ProductPhoto]) VALUES (N'А112Т4', N'Боксерская груша', 1, CAST(778.0000 AS Decimal(19, 4)), 30, 19, 2, 2, 5, 6, N'Боксерская груша X-Match черная', N'А112Т4.jpg')
GO
INSERT [dbo].[Provider] ([ProviderID], [ProviderName]) VALUES (1, N'Декатлон')
INSERT [dbo].[Provider] ([ProviderID], [ProviderName]) VALUES (2, N'Спортмастер')
GO
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (1, N'Клиент')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (2, N'Менеджер')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (3, N'Администратор')
GO
INSERT [dbo].[Status] ([StatusID], [StatusName]) VALUES (1, N'Новый ')
INSERT [dbo].[Status] ([StatusID], [StatusName]) VALUES (2, N'Завершен')
GO
INSERT [dbo].[Unit] ([UnitID], [UnitName]) VALUES (1, N'шт.')
GO
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (1, N'Пахомова', N'Аиша', N'Анатольевна', N'm4ic8j5qgstw@gmail.com', N'2L6KZG', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (2, N'Жуков', N'Роман', N'Богданович', N'd43zfg9tlsyv@gmail.com', N'uzWC67', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (3, N'Киселева', N'Анастасия', N'Максимовна', N'8ohgisf6k45w@outlook.com', N'8ntwUp', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (4, N'Григорьева', N'Арина', N'Арсентьевна', N'hi1brwj46czx@mail.com', N'YOyhfR', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (5, N'Иванов', N'Лев', N'Михайлович', N'fvkbcamhlj52@gmail.com', N'RSbvHv', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (6, N'Григорьев', N'Лев', N'Давидович', N'9qxnce8jwruv@gmail.com', N'rwVDh9', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (7, N'Поляков', N'Степан', N'Егорович', N'dotiex942p1r@gmail.com', N'LdNyos', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (8, N'Леонова', N'Алиса', N'Кирилловна', N'n0bmi2h1xral@tutanota.com', N'gynQMT', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (9, N'Яковлев', N'Платон', N'Константинович', N'sfm3t278kdvz@yahoo.com', N'AtnDjr', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (10, N'Ковалева', N'Ева', N'Яковлевна', N'ilb8rdut0v7e@mail.com', N'JlFRCZ', 1)
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([OrderPickupPoint])
REFERENCES [dbo].[PickupPoint] ([PickupPointID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([OrderStatus])
REFERENCES [dbo].[Status] ([StatusID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([OrderUser])
REFERENCES [dbo].[User] ([UserID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD FOREIGN KEY([ProductArticleNumber])
REFERENCES [dbo].[Product] ([ProductArticleNumber])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([ProductUnit])
REFERENCES [dbo].[Unit] ([UnitID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([ProductManufacturer])
REFERENCES [dbo].[Manufacturer] ([ManufacturerID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([ProductProvider])
REFERENCES [dbo].[Provider] ([ProviderID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([ProductCategory])
REFERENCES [dbo].[Category] ([CategoryID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD FOREIGN KEY([UserRole])
REFERENCES [dbo].[Role] ([RoleID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
USE [master]
GO
ALTER DATABASE [User17_493] SET  READ_WRITE 
GO
