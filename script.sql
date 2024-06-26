USE [DemoStud06A]
GO
/****** Object:  Table [dbo].[client_a_import]    Script Date: 26.05.2023 14:15:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[client_a_import](
	[id_client] [int] NOT NULL,
	[Last_name] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[Surname] [nvarchar](50) NULL,
	[Date_of_birth] [date] NULL,
	[Telephone] [numeric](18, 0) NULL,
	[Email] [nvarchar](50) NULL,
	[Gender] [bit] NULL,
	[Registration_date] [datetime] NULL,
 CONSTRAINT [PK_client_a_import] PRIMARY KEY CLUSTERED 
(
	[id_client] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employees_a_import]    Script Date: 26.05.2023 14:15:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employees_a_import](
	[id_employees] [int] NOT NULL,
	[Last_name] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[Surname] [nvarchar](50) NULL,
	[Passport_series] [nchar](10) NULL,
	[Passport_number] [nchar](10) NULL,
	[Subdivision_code] [nchar](10) NULL,
	[Gender] [bit] NULL,
	[Pay_factor] [float] NULL,
	[Date_of_birth] [date] NULL,
	[Category_of_specialist] [nvarchar](50) NULL,
 CONSTRAINT [PK_employees_a_import] PRIMARY KEY CLUSTERED 
(
	[id_employees] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[manufacturer_a_import]    Script Date: 26.05.2023 14:15:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[manufacturer_a_import](
	[id_manufacturers] [int] NOT NULL,
	[Manufacturers_name] [nvarchar](50) NOT NULL,
	[Start_date] [date] NULL,
 CONSTRAINT [PK_manufacturer_a_import] PRIMARY KEY CLUSTERED 
(
	[Manufacturers_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_a_import]    Script Date: 26.05.2023 14:15:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_a_import](
	[id_product] [int] NOT NULL,
	[Name_of_product] [nvarchar](100) NOT NULL,
	[Main_image] [nvarchar](50) NULL,
	[Manufacturer] [nvarchar](50) NULL,
	[Active] [float] NULL,
	[Price] [money] NULL,
 CONSTRAINT [PK_product_a_import] PRIMARY KEY CLUSTERED 
(
	[Name_of_product] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[productsale_a_import]    Script Date: 26.05.2023 14:15:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[productsale_a_import](
	[id_productsale] [int] NOT NULL,
	[Product] [nvarchar](100) NULL,
	[Quantity] [int] NULL,
	[Date_and_time_of_sale] [datetime] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[manufacturer_a_import] ([id_manufacturers], [Manufacturers_name], [Start_date]) VALUES (24, N'76', CAST(N'2017-02-03' AS Date))
INSERT [dbo].[manufacturer_a_import] ([id_manufacturers], [Manufacturers_name], [Start_date]) VALUES (13, N'Airline', CAST(N'2016-03-26' AS Date))
INSERT [dbo].[manufacturer_a_import] ([id_manufacturers], [Manufacturers_name], [Start_date]) VALUES (47, N'Airtex', CAST(N'2015-10-21' AS Date))
INSERT [dbo].[manufacturer_a_import] ([id_manufacturers], [Manufacturers_name], [Start_date]) VALUES (46, N'ALСA', CAST(N'2016-10-01' AS Date))
INSERT [dbo].[manufacturer_a_import] ([id_manufacturers], [Manufacturers_name], [Start_date]) VALUES (27, N'ASHIKA', CAST(N'2018-06-13' AS Date))
INSERT [dbo].[manufacturer_a_import] ([id_manufacturers], [Manufacturers_name], [Start_date]) VALUES (10, N'Automega', CAST(N'2016-07-01' AS Date))
INSERT [dbo].[manufacturer_a_import] ([id_manufacturers], [Manufacturers_name], [Start_date]) VALUES (16, N'Bendix', CAST(N'2015-04-25' AS Date))
INSERT [dbo].[manufacturer_a_import] ([id_manufacturers], [Manufacturers_name], [Start_date]) VALUES (4, N'Benson', CAST(N'2015-04-09' AS Date))
INSERT [dbo].[manufacturer_a_import] ([id_manufacturers], [Manufacturers_name], [Start_date]) VALUES (14, N'BILSTEIN', CAST(N'2018-03-06' AS Date))
INSERT [dbo].[manufacturer_a_import] ([id_manufacturers], [Manufacturers_name], [Start_date]) VALUES (35, N'BOGE', CAST(N'2016-01-18' AS Date))
INSERT [dbo].[manufacturer_a_import] ([id_manufacturers], [Manufacturers_name], [Start_date]) VALUES (49, N'BOSCH', CAST(N'2017-06-21' AS Date))
INSERT [dbo].[manufacturer_a_import] ([id_manufacturers], [Manufacturers_name], [Start_date]) VALUES (30, N'Castrol', CAST(N'2015-04-16' AS Date))
INSERT [dbo].[manufacturer_a_import] ([id_manufacturers], [Manufacturers_name], [Start_date]) VALUES (48, N'Elf', CAST(N'2016-10-16' AS Date))
INSERT [dbo].[manufacturer_a_import] ([id_manufacturers], [Manufacturers_name], [Start_date]) VALUES (7, N'Ferodo', CAST(N'2015-08-11' AS Date))
INSERT [dbo].[manufacturer_a_import] ([id_manufacturers], [Manufacturers_name], [Start_date]) VALUES (43, N'Ford', CAST(N'2016-10-12' AS Date))
INSERT [dbo].[manufacturer_a_import] ([id_manufacturers], [Manufacturers_name], [Start_date]) VALUES (44, N'General Motors', CAST(N'2016-10-05' AS Date))
INSERT [dbo].[manufacturer_a_import] ([id_manufacturers], [Manufacturers_name], [Start_date]) VALUES (36, N'Glaser', CAST(N'2015-12-29' AS Date))
INSERT [dbo].[manufacturer_a_import] ([id_manufacturers], [Manufacturers_name], [Start_date]) VALUES (37, N'Goodyear', CAST(N'2015-12-05' AS Date))
INSERT [dbo].[manufacturer_a_import] ([id_manufacturers], [Manufacturers_name], [Start_date]) VALUES (3, N'Honda', CAST(N'2016-06-12' AS Date))
INSERT [dbo].[manufacturer_a_import] ([id_manufacturers], [Manufacturers_name], [Start_date]) VALUES (31, N'Hyundai/Kia', CAST(N'2016-01-07' AS Date))
INSERT [dbo].[manufacturer_a_import] ([id_manufacturers], [Manufacturers_name], [Start_date]) VALUES (33, N'Idemitsu', CAST(N'2018-01-21' AS Date))
INSERT [dbo].[manufacturer_a_import] ([id_manufacturers], [Manufacturers_name], [Start_date]) VALUES (45, N'KASHIYAMA', CAST(N'2015-10-16' AS Date))
INSERT [dbo].[manufacturer_a_import] ([id_manufacturers], [Manufacturers_name], [Start_date]) VALUES (25, N'Kayaba', CAST(N'2016-02-08' AS Date))
INSERT [dbo].[manufacturer_a_import] ([id_manufacturers], [Manufacturers_name], [Start_date]) VALUES (29, N'King Bearings', CAST(N'2016-09-12' AS Date))
INSERT [dbo].[manufacturer_a_import] ([id_manufacturers], [Manufacturers_name], [Start_date]) VALUES (8, N'Lemforder', CAST(N'2016-11-15' AS Date))
INSERT [dbo].[manufacturer_a_import] ([id_manufacturers], [Manufacturers_name], [Start_date]) VALUES (21, N'Liqui Moly', CAST(N'2015-03-24' AS Date))
INSERT [dbo].[manufacturer_a_import] ([id_manufacturers], [Manufacturers_name], [Start_date]) VALUES (23, N'LUK', CAST(N'2015-12-02' AS Date))
INSERT [dbo].[manufacturer_a_import] ([id_manufacturers], [Manufacturers_name], [Start_date]) VALUES (50, N'Lukoil', CAST(N'2017-12-19' AS Date))
INSERT [dbo].[manufacturer_a_import] ([id_manufacturers], [Manufacturers_name], [Start_date]) VALUES (11, N'Magneti Marelli', CAST(N'2017-05-27' AS Date))
INSERT [dbo].[manufacturer_a_import] ([id_manufacturers], [Manufacturers_name], [Start_date]) VALUES (22, N'Mando', CAST(N'2015-03-24' AS Date))
INSERT [dbo].[manufacturer_a_import] ([id_manufacturers], [Manufacturers_name], [Start_date]) VALUES (5, N'Mazda', CAST(N'2018-01-23' AS Date))
INSERT [dbo].[manufacturer_a_import] ([id_manufacturers], [Manufacturers_name], [Start_date]) VALUES (17, N'Mercedes', CAST(N'2016-03-16' AS Date))
INSERT [dbo].[manufacturer_a_import] ([id_manufacturers], [Manufacturers_name], [Start_date]) VALUES (18, N'Mitsubishi', CAST(N'2017-04-23' AS Date))
INSERT [dbo].[manufacturer_a_import] ([id_manufacturers], [Manufacturers_name], [Start_date]) VALUES (40, N'Mobil', CAST(N'2016-10-24' AS Date))
INSERT [dbo].[manufacturer_a_import] ([id_manufacturers], [Manufacturers_name], [Start_date]) VALUES (19, N'Motul', CAST(N'2018-01-07' AS Date))
INSERT [dbo].[manufacturer_a_import] ([id_manufacturers], [Manufacturers_name], [Start_date]) VALUES (12, N'Nissan', CAST(N'2015-01-21' AS Date))
INSERT [dbo].[manufacturer_a_import] ([id_manufacturers], [Manufacturers_name], [Start_date]) VALUES (32, N'Opel', CAST(N'2015-03-04' AS Date))
INSERT [dbo].[manufacturer_a_import] ([id_manufacturers], [Manufacturers_name], [Start_date]) VALUES (41, N'OPTIMAL', CAST(N'2016-08-19' AS Date))
INSERT [dbo].[manufacturer_a_import] ([id_manufacturers], [Manufacturers_name], [Start_date]) VALUES (15, N'Petro-Canada', CAST(N'2017-03-22' AS Date))
INSERT [dbo].[manufacturer_a_import] ([id_manufacturers], [Manufacturers_name], [Start_date]) VALUES (2, N'Pierburg', CAST(N'2017-01-10' AS Date))
INSERT [dbo].[manufacturer_a_import] ([id_manufacturers], [Manufacturers_name], [Start_date]) VALUES (1, N'Profix', CAST(N'2017-10-02' AS Date))
INSERT [dbo].[manufacturer_a_import] ([id_manufacturers], [Manufacturers_name], [Start_date]) VALUES (20, N'Shell', CAST(N'2016-11-14' AS Date))
INSERT [dbo].[manufacturer_a_import] ([id_manufacturers], [Manufacturers_name], [Start_date]) VALUES (34, N'Stels', CAST(N'2017-05-16' AS Date))
INSERT [dbo].[manufacturer_a_import] ([id_manufacturers], [Manufacturers_name], [Start_date]) VALUES (38, N'Suzuki', CAST(N'2017-05-18' AS Date))
INSERT [dbo].[manufacturer_a_import] ([id_manufacturers], [Manufacturers_name], [Start_date]) VALUES (26, N'Total', CAST(N'2015-03-05' AS Date))
INSERT [dbo].[manufacturer_a_import] ([id_manufacturers], [Manufacturers_name], [Start_date]) VALUES (9, N'Toyota', CAST(N'2016-06-03' AS Date))
INSERT [dbo].[manufacturer_a_import] ([id_manufacturers], [Manufacturers_name], [Start_date]) VALUES (28, N'VAG', CAST(N'2018-05-16' AS Date))
INSERT [dbo].[manufacturer_a_import] ([id_manufacturers], [Manufacturers_name], [Start_date]) VALUES (6, N'Zekkert', CAST(N'2018-03-08' AS Date))
INSERT [dbo].[manufacturer_a_import] ([id_manufacturers], [Manufacturers_name], [Start_date]) VALUES (42, N'ZIC', CAST(N'2015-02-07' AS Date))
INSERT [dbo].[manufacturer_a_import] ([id_manufacturers], [Manufacturers_name], [Start_date]) VALUES (39, N'ZIMMERMANN', CAST(N'2017-12-14' AS Date))
GO
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (80, N'Жилет светоотражающий взрослый ARW-AV-02', N' Товары автосервиса\D4D0CE67.jpg', N' Airline', 1, 150.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (95, N'Кредитница  Кожа B6 6 95 1349', N' Товары автосервиса\63C09E91.jpg', N' Mercedes', 1, 6770.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (57, N'Моторное масло 76 08880-803ENGINE OIL-GO', N' Товары автосервиса\0070C563.jpg', N' Toyota', 1, 1630.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (84, N'Моторное масло 76 A000989PKW Motorenol0213BLER', N' Товары автосервиса\2E00E06C.jpg', N' Mercedes', 1, 2510.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (67, N'Моторное масло 76 Top Tec 420061', N' Товары автосервиса\03D096CB.jpg', N' Liqui Moly', 1, 3440.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (35, N'Моторное масло 8100 X-CESS 102870', N' Товары автосервиса\E9308929.jpg', N' Motul', 1, 3190.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (39, N'Моторное масло Dexos 2 19 42 000', N' Товары автосервиса\2390848B.jpg', N' Opel', 1, 1410.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (20, N'Моторное масло Dexos 2 19 42 002', N' Товары автосервиса\23F0848B.jpg', N' Opel', 1, 1300.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (90, N'Моторное масло Dexos 2 19 42 003', N' Товары автосервиса\8430842A.jpg', N' Opel', 1, 1490.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (55, N'Моторное масло Dexos 2 93165554', N' Товары автосервиса\45008C52.jpg', N' General Motors', 1, 1380.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (63, N'Моторное масло Dexos 2 93165556', N' Товары автосервиса\43E08C52.jpg', N' General Motors', 1, 1340.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (10, N'Моторное масло Dexos 2 93165557', N' Товары автосервиса\45908C52.jpg', N' General Motors', 1, 1500.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (5, N'Моторное масло Dexos 2 95599405', N' Товары автосервиса\AD00B713.jpg', N' General Motors', 1, 1410.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (43, N'Моторное масло Ecstar F9000 99M00-22R02-004', N' Товары автосервиса\21B0E533.jpg', N' Suzuki', 1, 2330.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (92, N'Моторное масло EDGE LL Titanium FST 15669A', N' Товары автосервиса\8BC0C1A9.jpg', N' Castrol', 1, 3000.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (69, N'Моторное масло EDGE Professional LL III Titanium FST 157AD6', N' Товары автосервиса\96E0C1E7.jpg', N' Castrol', 1, 1760.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (91, N'Моторное масло ENGINE OIL 08880-80365-GO', N' Товары автосервиса\CC10C869.jpg', N' Toyota', 1, 3580.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (8, N'Моторное масло ENGINE OIL 08880-80375-GO', N' Товары автосервиса\CC40C869.jpg', N' Toyota', 0, 2710.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (47, N'Моторное масло ENGINE OIL MZ 320753', N' Товары автосервиса\5BB0C351.jpg', N' Mitsubishi', 0, 1590.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (12, N'Моторное масло ENGINE OIL MZ 320754', N' Товары автосервиса\3B70C57C.jpg', N' Mitsubishi', 1, 2140.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (94, N'Моторное масло ENGINE OIL MZ 320756', N' Товары автосервиса\5BE0C351.jpg', N' Mitsubishi', 0, 1600.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (97, N'Моторное масло ENGINE OIL MZ 320757', N' Товары автосервиса\0D30C4EE.jpg', N' Mitsubishi', 1, 2210.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (82, N'Моторное масло Evolution 900 SXR 10160501', N' Товары автосервиса\BD80E8D5.jpg', N' Elf', 1, 1750.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (26, N'Моторное масло Evolution 900 SXR 194839', N' Товары автосервиса\F8E0B138.jpg', N' Elf', 0, 2340.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (28, N'Моторное масло Evolution 900 SXR 194877', N' Товары автосервиса\E3A0B18A.jpg', N' Elf', 1, 2470.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (16, N'Моторное масло Evolution 900 SXR 194878', N' Товары автосервиса\E320BB7C.jpg', N' Elf', 1, 2010.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (22, N'Моторное масло Formula F 15595E', N' Товары автосервиса\5250C855.jpg', N' Ford', 0, 1750.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (86, N'Моторное масло Formula F 155D3A', N' Товары автосервиса\39D0C188.jpg', N' Ford', 1, 1830.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (56, N'Моторное масло Formula F Fuel Economy HC 155D4B', N' Товары автосервиса\39A0C188.jpg', N' Ford', 1, 1450.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (66, N'Моторное масло Fuel Economy 08880-80845', N' Товары автосервиса\23106A35.jpg', N' Toyota', 1, 2560.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (21, N'Моторное масло Gasoline Fully- Synthetic 30021326-746', N' Товары автосервиса\27B0C883.jpg', N' Idemitsu', 1, 1650.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (44, N'Моторное масло Genesis Armortech 1539424', N' Товары автосервиса\B0F0CB59.jpg', N' Lukoil', 1, 1710.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (13, N'Моторное масло Genesis Armortech 3148675', N' Товары автосервиса\C9C0F036.jpg', N' Lukoil', 0, 1660.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (49, N'Моторное масло Genuine A000989790211BIFR', N' Товары автосервиса\2E30E06C.jpg', N' Mercedes', 0, 1530.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (71, N'Моторное масло Genuine A000989790213BIFR', N' Товары автосервиса\2E60E06C.jpg', N' Mercedes', 1, 2390.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (65, N'Моторное масло Helix HX8 A5/B5 550046777', N' Товары автосервиса\F160E078.jpg', N' Shell', 1, 1530.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (2, N'Моторное масло Helix Ultra 550046361', N' Товары автосервиса\F310E078.jpg', N' Shell', 1, 2120.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (53, N'Моторное масло Helix Ultra 550046367', N' Товары автосервиса\F2E0E078.jpg', N' Shell', 0, 1650.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (45, N'Моторное масло Helix Ultra 550046387', N' Товары автосервиса\F2B0E078.jpg', N' Shell', 0, 2160.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (73, N'Моторное масло Helix Ultra Pro AM-L 550046353', N' Товары автосервиса\3DF0E4BC.jpg', N' Shell', 1, 2110.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (64, N'Моторное масло Leichtlauf Special AA 7516', N' Товары автосервиса\47E07CB5.jpg', N' Liqui Moly', 1, 2360.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (18, N'Моторное масло Longlife III G 052 195 M2', N' Товары автосервиса\E5507A37.jpg', N' VAG', 1, 1910.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (34, N'Моторное масло Longlife III G 052 195 M4', N' Товары автосервиса\D9605006.jpg', N' VAG', 1, 4100.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (70, N'Моторное масло Magnatec A3/B4 156E9D', N' Товары автосервиса\9290C1E7.jpg', N' Castrol', 1, 1610.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (38, N'Моторное масло Magnatec A3/B4 156E9E', N' Товары автосервиса\92C0C1E7.jpg', N' Castrol', 1, 2130.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (36, N'Моторное масло Magnatec A5 15583D', N' Товары автосервиса\9380C1E7.jpg', N' Castrol', 1, 2220.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (60, N'Моторное масло Mobil 1 ESP 154279', N' Товары автосервиса\F460E078.jpg', N' Mobil', 1, 1860.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (9, N'Моторное масло Mobil 1 ESP 154285', N' Товары автосервиса\F490E078.jpg', N' Mobil', 1, 2890.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (48, N'Моторное масло Mobil 1 ESP Formula 152621', N' Товары автосервиса\DC70BEC3.jpg', N' Mobil', 0, 2920.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (87, N'Моторное масло Mobil 1 FS 153692', N' Товары автосервиса\6080DCD5.jpg', N' Mobil', 1, 3020.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (30, N'Моторное масло Molygen New Generation 9042', N' Товары автосервиса\0D60A8A4.jpg', N' Liqui Moly', 1, 2510.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (6, N'Моторное масло Molygen New Generation 9054', N' Товары автосервиса\0DF0A8A4.jpg', N' Liqui Moly', 1, 2670.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (32, N'Моторное масло Motor Oil KE900-90032-R', N' Товары автосервиса\54B0795D.jpg', N' Nissan', 1, 1450.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (25, N'Моторное масло Motor Oil KE900-90042', N' Товары автосервиса\90505D31.jpg', N' Nissan', 1, 2020.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (1, N'Моторное масло Motor Oil KE900-90042-R', N' Товары автосервиса\8FE07916.jpg', N' Nissan', 1, 2060.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (15, N'Моторное масло Optimal Synth 2293', N' Товары автосервиса\C310B9F3.jpg', N' Liqui Moly', 1, 2520.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (14, N'Моторное масло Optimal Synth 3926', N' Товары автосервиса\EFC05011.jpg', N' Liqui Moly', 1, 1880.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (75, N'Моторное масло Original oil Ultra 0530-05-TFE', N' Товары автосервиса\85C04040.jpg', N' Mazda', 1, 2930.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (33, N'Моторное масло Original oil Ultra 8300-77-992', N' Товары автосервиса\EF80D790.jpg', N' Mazda', 0, 2770.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (41, N'Моторное масло Premium DPF Diesel 05200-00120', N' Товары автосервиса\2D709062.jpg', N' Hyundai/Kia', 1, 1460.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (99, N'Моторное масло Premium DPF Diesel 05200-00620', N' Товары автосервиса\9B3075EB.jpg', N' Hyundai/Kia', 1, 2470.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (81, N'Моторное масло Premium LF Gasoline 05100-00451', N' Товары автосервиса\2B609062.jpg', N' Hyundai/Kia', 1, 1620.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (93, N'Моторное масло QUARTZ 9000 148597', N' Товары автосервиса\8F909ED7.jpg', N' Total', 0, 1700.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (85, N'Моторное масло QUARTZ 9000 ENERGY HKS 175392', N' Товары автосервиса\6DA0A012.jpg', N' Total', 0, 1530.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (76, N'Моторное масло QUARTZ 9000 ENERGY HKS 175393', N' Товары автосервиса\6DD0A012.jpg', N' Total', 1, 2830.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (100, N'Моторное масло QUARTZ 9000 FUTURE NFC 10230501', N' Товары автосервиса\3970E753.jpg', N' Total', 0, 1650.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (40, N'Моторное масло QUARTZ 9000 FUTURE NFC 171839', N' Товары автосервиса\D2508F32.jpg', N' Total', 1, 1560.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (54, N'Моторное масло QUARTZ 9000 FUTURE NFC 183199', N' Товары автосервиса\6CE0A012.jpg', N' Total', 1, 2040.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (58, N'Моторное масло QUARTZ 9000 FUTURE NFC 183450', N' Товары автосервиса\FA90B138.jpg', N' Total', 1, 1660.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (74, N'Моторное масло QUARTZ INEO ECS 151510', N' Товары автосервиса\8F609ED7.jpg', N' Total', 1, 1920.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (31, N'Моторное масло QUARTZ INEO ECS 166252', N' Товары автосервиса\D0D08F32.jpg', N' Total', 1, 1600.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (24, N'Моторное масло SN 08880-10705', N' Товары автосервиса\43909176.jpg', N' Toyota', 1, 2200.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (89, N'Моторное масло SN 08880-10706', N' Товары автосервиса\43C09176.jpg', N' Toyota', 1, 1640.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (27, N'Моторное масло SN/GF-5 SN5W30C', N' Товары автосервиса\5A30A7EE.jpg', N' Profix', 1, 1550.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (17, N'Моторное масло Special C G 055 167 M4', N' Товары автосервиса\6730A31C.jpg', N' VAG', 1, 4720.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (42, N'Моторное масло Special G G 052 502 M2', N' Товары автосервиса\E0D0E079.jpg', N' VAG', 1, 1820.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (78, N'Моторное масло Special G G 052 502 M4', N' Товары автосервиса\E0A0E079.jpg', N' VAG', 1, 3090.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (19, N'Моторное масло Special Tec LL 8055', N' Товары автосервиса\B590AA7B.jpg', N' Liqui Moly', 0, 2420.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (61, N'Моторное масло Super 3000 X1 152061', N' Товары автосервиса\40409946.jpg', N' Mobil', 1, 2010.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (3, N'Моторное масло Super 3000 X1 152566', N' Товары автосервиса\6CA0BE73.jpg', N' Mobil', 0, 1820.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (46, N'Моторное масло Super 3000 X1 152567', N' Товары автосервиса\F200BC2F.jpg', N' Mobil', 1, 1550.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (11, N'Моторное масло Super 3000 X1 Diesel 152572', N' Товары автосервиса\B0A0C186.jpg', N' Mobil', 1, 1870.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (51, N'Моторное масло Super 3000 X1 Formula FE 152564', N' Товары автосервиса\59B0BE73.jpg', N' Mobil', 1, 1890.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (62, N'Моторное масло Super Extra Gasoline 05100-00410', N' Товары автосервиса\2A109062.jpg', N' Hyundai/Kia', 1, 1230.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (72, N'Моторное масло Supreme Synthetic MOSYN53C16', N' Товары автосервиса\69C0CD62.jpg', N' Petro-Canada', 1, 1910.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (59, N'Моторное масло Top Tec 4100 7501', N' Товары автосервиса\022096CB.jpg', N' Liqui Moly', 1, 2580.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (7, N'Моторное масло Top Tec 4600 8033', N' Товары автосервиса\B790A6AA.jpg', N' Liqui Moly', 0, 2580.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (4, N'Моторное масло Turbo SYN Gasoline 05100-00441', N' Товары автосервиса\2B009062.jpg', N' Hyundai/Kia', 1, 1870.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (50, N'Моторное масло ULTRA 152624', N' Товары автосервиса\BA30C186.jpg', N' Mobil', 1, 1940.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (77, N'Моторное масло Ultra LEO-SN 08217-99974', N' Товары автосервиса\97809225.jpg', N' Honda', 1, 2980.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (68, N'Моторное масло X9 162613', N' Товары автосервиса\30E0C751.jpg', N' ZIC', 1, 1530.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (98, N'Моторное масло Zepro Eco Medalist 3583-001', N' Товары автосервиса\6800BB8A.jpg', N' Idemitsu', 1, 1770.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (88, N'Моторное масло Zepro Eco Medalist 3583-004', N' Товары автосервиса\3DA0B713.jpg', N' Idemitsu', 1, 2520.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (52, N'Моторное масло Zepro Euro Spec SN/CF 1849-001', N' Товары автосервиса\90A0B807.jpg', N' Idemitsu', 1, 1730.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (23, N'Моторное масло Zepro Euro Spec SN/CF 1849-004', N' Товары автосервиса\90D0B807.jpg', N' Idemitsu', 1, 2400.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (96, N'Моторное масло Zepro Touring 1845-001', N' Товары автосервиса\7B70B9C6.jpg', N' Idemitsu', 1, 1720.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (83, N'Моторное масло Zepro Touring 1845-004', N' Товары автосервиса\5180B90E.jpg', N' Idemitsu', 1, 2380.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (79, N'Моторное масло Люкс 207465', N' Товары автосервиса\8E20A863.jpg', N' Lukoil', 1, 1090.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (29, N'Трос буксировочный 12 тонн 54384', N' Товары автосервиса\9750DA76.jpg', N' Stels', 1, 410.0000)
INSERT [dbo].[product_a_import] ([id_product], [Name_of_product], [Main_image], [Manufacturer], [Active], [Price]) VALUES (37, N'Щетка для снега со съемным скребком GY000202', N' Товары автосервиса\3760D73F.jpg', N' Goodyear', 1, 350.0000)
GO
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (1, N'Моторное масло Mobil 1 ESP 154285', 2, CAST(N'2019-02-22T15:30:53.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (2, N'Моторное масло ENGINE OIL MZ 320756', 3, CAST(N'2019-11-20T17:05:24.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (3, N'Моторное масло QUARTZ 9000 FUTURE NFC 171839', 1, CAST(N'2019-10-05T17:25:12.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (4, N'Моторное масло EDGE LL Titanium FST 15669A', 2, CAST(N'2019-10-06T15:45:52.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (5, N'Моторное масло Top Tec 4600 8033', 1, CAST(N'2019-02-11T18:18:45.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (6, N'Моторное масло ENGINE OIL 08880-80375-GO', 2, CAST(N'2019-11-03T19:48:14.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (7, N'Жилет светоотражающий взрослый ARW-AV-02', 3, CAST(N'2019-08-25T09:14:40.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (8, N'Моторное масло Super 3000 X1 152567', 2, CAST(N'2019-04-08T19:12:39.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (9, N'Моторное масло Motor Oil KE900-90032-R', 3, CAST(N'2019-10-07T18:30:53.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (10, N'Моторное масло Premium LF Gasoline 05100-00451', 2, CAST(N'2019-12-30T13:56:10.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (11, N'Моторное масло ENGINE OIL MZ 320757', 2, CAST(N'2019-07-23T13:22:18.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (12, N'Моторное масло Dexos 2 93165556', 1, CAST(N'2019-05-08T16:32:17.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (13, N'Моторное масло Evolution 900 SXR 194877', 1, CAST(N'2019-02-25T18:40:43.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (14, N'Моторное масло Magnatec A3/B4 156E9D', 3, CAST(N'2019-11-16T16:36:00.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (15, N'Моторное масло Genesis Armortech 3148675', 3, CAST(N'2019-01-05T14:29:56.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (16, N'Моторное масло ENGINE OIL MZ 320754', 3, CAST(N'2019-01-03T14:05:29.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (17, N'Моторное масло Premium DPF Diesel 05200-00120', 3, CAST(N'2019-11-22T08:16:05.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (18, N'Моторное масло Dexos 2 93165554', 2, CAST(N'2019-12-18T15:30:51.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (19, N'Моторное масло Formula F Fuel Economy HC 155D4B', 2, CAST(N'2019-02-11T13:31:04.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (20, N'Моторное масло Evolution 900 SXR 10160501', 3, CAST(N'2019-11-09T14:29:57.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (21, N'Моторное масло Premium DPF Diesel 05200-00620', 3, CAST(N'2019-01-17T09:33:19.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (22, N'Моторное масло QUARTZ INEO ECS 151510', 3, CAST(N'2019-07-27T12:18:45.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (23, N'Моторное масло Helix Ultra 550046361', 1, CAST(N'2019-05-02T14:04:39.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (24, N'Моторное масло Magnatec A5 15583D', 3, CAST(N'2019-03-23T12:33:48.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (25, N'Моторное масло Zepro Eco Medalist 3583-001', 2, CAST(N'2019-08-31T10:27:10.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (26, N'Моторное масло QUARTZ 9000 FUTURE NFC 183199', 3, CAST(N'2019-04-02T15:49:55.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (27, N'Моторное масло SN 08880-10706', 2, CAST(N'2019-02-14T16:30:00.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (28, N'Моторное масло Super 3000 X1 152566', 3, CAST(N'2019-06-30T15:04:55.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (29, N'Моторное масло QUARTZ 9000 FUTURE NFC 183450', 1, CAST(N'2019-01-15T10:32:43.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (30, N'Моторное масло Zepro Euro Spec SN/CF 1849-004', 3, CAST(N'2019-12-25T09:20:39.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (31, N'Моторное масло Special G G 052 502 M2', 2, CAST(N'2019-04-24T17:19:15.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (32, N'Моторное масло SN 08880-10706', 1, CAST(N'2019-05-11T16:15:00.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (33, N'Моторное масло Evolution 900 SXR 194878', 2, CAST(N'2019-01-21T13:44:02.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (34, N'Моторное масло Premium DPF Diesel 05200-00620', 2, CAST(N'2019-08-22T09:42:19.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (35, N'Моторное масло Dexos 2 19 42 003', 1, CAST(N'2019-11-10T17:27:19.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (36, N'Моторное масло 76 Top Tec 420061', 3, CAST(N'2019-01-20T17:36:33.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (37, N'Моторное масло Special Tec LL 8055', 2, CAST(N'2019-08-06T10:47:18.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (38, N'Моторное масло 76 A000989PKW Motorenol0213BLER', 2, CAST(N'2019-09-25T09:23:18.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (39, N'Моторное масло Formula F Fuel Economy HC 155D4B', 3, CAST(N'2019-01-13T15:27:07.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (40, N'Моторное масло QUARTZ INEO ECS 151510', 1, CAST(N'2019-11-21T15:51:29.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (41, N'Моторное масло Helix Ultra 550046367', 1, CAST(N'2019-03-02T09:33:38.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (42, N'Моторное масло Dexos 2 19 42 000', 1, CAST(N'2019-02-16T08:02:50.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (43, N'Моторное масло Evolution 900 SXR 194878', 2, CAST(N'2019-07-22T17:12:57.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (44, N'Моторное масло Genuine A000989790211BIFR', 2, CAST(N'2019-12-26T19:19:02.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (45, N'Трос буксировочный 12 тонн 54384', 3, CAST(N'2019-07-18T08:43:03.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (46, N'Моторное масло Mobil 1 ESP Formula 152621', 2, CAST(N'2019-06-02T19:06:42.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (47, N'Моторное масло ENGINE OIL MZ 320753', 3, CAST(N'2019-07-22T10:28:38.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (48, N'Жилет светоотражающий взрослый ARW-AV-02', 2, CAST(N'2019-03-27T19:34:17.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (49, N'Моторное масло Genuine A000989790211BIFR', 3, CAST(N'2019-09-01T17:03:46.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (50, N'Моторное масло 76 A000989PKW Motorenol0213BLER', 2, CAST(N'2019-02-27T17:52:43.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (51, N'Моторное масло Zepro Eco Medalist 3583-004', 3, CAST(N'2019-02-22T15:07:25.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (52, N'Трос буксировочный 12 тонн 54384', 2, CAST(N'2019-01-18T14:44:16.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (53, N'Моторное масло QUARTZ 9000 148597', 3, CAST(N'2019-03-24T18:10:35.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (54, N'Моторное масло Magnatec A5 15583D', 2, CAST(N'2019-10-21T10:29:19.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (55, N'Моторное масло X9 162613', 3, CAST(N'2019-06-11T09:34:14.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (56, N'Моторное масло Original oil Ultra 8300-77-992', 1, CAST(N'2019-06-08T14:12:26.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (57, N'Моторное масло Formula F 155D3A', 3, CAST(N'2019-03-23T09:48:58.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (58, N'Трос буксировочный 12 тонн 54384', 1, CAST(N'2019-07-21T08:46:28.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (59, N'Моторное масло Evolution 900 SXR 10160501', 2, CAST(N'2019-04-13T12:41:52.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (60, N'Моторное масло Люкс 207465', 1, CAST(N'2019-01-24T16:39:39.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (61, N'Кредитница, Кожа B6 6 95 1349', 3, CAST(N'2019-02-15T13:41:46.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (62, N'Моторное масло Helix Ultra 550046361', 2, CAST(N'2019-07-04T17:30:40.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (63, N'Моторное масло Dexos 2 93165557', 3, CAST(N'2019-03-27T18:28:09.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (64, N'Моторное масло Optimal Synth 3926', 2, CAST(N'2019-11-14T08:58:07.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (65, N'Моторное масло Dexos 2 95599405', 2, CAST(N'2019-06-12T10:24:41.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (66, N'Моторное масло Mobil 1 ESP Formula 152621', 2, CAST(N'2019-08-07T18:21:42.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (67, N'Моторное масло Longlife III G 052 195 M4', 1, CAST(N'2019-09-26T16:57:40.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (68, N'Моторное масло ENGINE OIL MZ 320753', 3, CAST(N'2019-09-04T08:03:50.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (69, N'Моторное масло X9 162613', 1, CAST(N'2019-02-19T08:36:15.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (70, N'Моторное масло Genuine A000989790213BIFR', 1, CAST(N'2019-05-14T16:03:31.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (71, N'Моторное масло ENGINE OIL MZ 320754', 1, CAST(N'2019-07-14T09:32:31.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (72, N'Моторное масло Gasoline Fully- Synthetic 30021326-746', 1, CAST(N'2019-01-01T08:47:04.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (73, N'Моторное масло QUARTZ 9000 148597', 2, CAST(N'2019-01-08T10:57:01.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (74, N'Моторное масло X9 162613', 2, CAST(N'2019-03-07T17:37:12.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (75, N'Моторное масло Optimal Synth 3926', 2, CAST(N'2019-05-08T16:55:35.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (76, N'Моторное масло Super 3000 X1 Diesel 152572', 3, CAST(N'2019-07-29T09:29:15.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (77, N'Моторное масло Zepro Eco Medalist 3583-004', 3, CAST(N'2019-01-17T18:25:51.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (78, N'Моторное масло Formula F 15595E', 1, CAST(N'2019-01-02T08:49:59.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (79, N'Моторное масло Molygen New Generation 9042', 3, CAST(N'2019-04-27T12:25:55.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (80, N'Моторное масло SN/GF-5 SN5W30C', 2, CAST(N'2019-10-11T16:56:48.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (81, N'Моторное масло Fuel Economy 08880-80845', 3, CAST(N'2019-11-16T13:32:23.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (82, N'Моторное масло Longlife III G 052 195 M2', 1, CAST(N'2019-07-28T10:56:06.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (83, N'Моторное масло ENGINE OIL 08880-80365-GO', 2, CAST(N'2019-05-29T13:09:10.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (84, N'Моторное масло Fuel Economy 08880-80845', 1, CAST(N'2019-05-23T12:00:25.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (85, N'Моторное масло Special Tec LL 8055', 3, CAST(N'2019-12-24T10:08:28.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (86, N'Моторное масло Evolution 900 SXR 194878', 1, CAST(N'2019-03-10T08:00:50.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (87, N'Моторное масло QUARTZ 9000 ENERGY HKS 175392', 3, CAST(N'2019-08-20T18:45:14.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (88, N'Моторное масло Helix Ultra 550046367', 1, CAST(N'2019-03-27T12:05:57.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (89, N'Моторное масло Fuel Economy 08880-80845', 3, CAST(N'2019-02-13T13:40:11.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (90, N'Моторное масло Top Tec 4600 8033', 2, CAST(N'2019-09-20T08:56:22.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (91, N'Моторное масло QUARTZ 9000 FUTURE NFC 183199', 1, CAST(N'2019-10-03T12:31:48.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (92, N'Моторное масло Zepro Eco Medalist 3583-001', 2, CAST(N'2019-10-08T12:30:44.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (93, N'Моторное масло Longlife III G 052 195 M2', 3, CAST(N'2019-08-19T10:01:32.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (94, N'Моторное масло QUARTZ 9000 148597', 2, CAST(N'2019-10-09T18:21:47.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (95, N'Моторное масло Optimal Synth 2293', 3, CAST(N'2019-01-09T17:04:05.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (96, N'Моторное масло ENGINE OIL MZ 320754', 2, CAST(N'2019-07-26T13:42:01.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (97, N'Моторное масло Magnatec A3/B4 156E9E', 1, CAST(N'2019-04-29T18:19:10.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (98, N'Моторное масло Longlife III G 052 195 M2', 3, CAST(N'2019-11-22T14:44:14.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (99, N'Моторное масло Mobil 1 FS 153692', 1, CAST(N'2019-01-28T08:59:40.000' AS DateTime))
INSERT [dbo].[productsale_a_import] ([id_productsale], [Product], [Quantity], [Date_and_time_of_sale]) VALUES (100, N'Моторное масло ENGINE OIL MZ 320757', 3, CAST(N'2019-05-25T12:03:17.000' AS DateTime))
GO
ALTER TABLE [dbo].[product_a_import]  WITH NOCHECK ADD  CONSTRAINT [FK_product_a_import_manufacturer_a_import] FOREIGN KEY([Manufacturer])
REFERENCES [dbo].[manufacturer_a_import] ([Manufacturers_name])
GO
ALTER TABLE [dbo].[product_a_import] CHECK CONSTRAINT [FK_product_a_import_manufacturer_a_import]
GO
ALTER TABLE [dbo].[productsale_a_import]  WITH NOCHECK ADD  CONSTRAINT [FK_productsale_a_import_product_a_import] FOREIGN KEY([Product])
REFERENCES [dbo].[product_a_import] ([Name_of_product])
GO
ALTER TABLE [dbo].[productsale_a_import] CHECK CONSTRAINT [FK_productsale_a_import_product_a_import]
GO
