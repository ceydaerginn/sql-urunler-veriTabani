USE [NerthusDesign]
GO
/****** Object:  Table [dbo].[SatışKanalları]    Script Date: 29.12.2022 19:32:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SatışKanalları](
	[SatışKanalları_ID] [int] NOT NULL,
	[SatışKanalları_AD] [varchar](20) NULL,
 CONSTRAINT [PK_SatışKanalları] PRIMARY KEY CLUSTERED 
(
	[SatışKanalları_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SatışSorumluları]    Script Date: 29.12.2022 19:32:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SatışSorumluları](
	[SatışSorumluları_ID] [int] NULL,
	[SatışSorumluları_AD] [varchar](50) NULL,
	[SatışSorumluları_SOYAD] [varchar](50) NULL,
	[SatışKanalları_ID] [int] NULL,
	[Şehirler_ID] [nchar](10) NULL,
	[SatışSorumluları_TELEFONNO] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Şehirler]    Script Date: 29.12.2022 19:32:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Şehirler](
	[Şehirler_ID] [int] NOT NULL,
	[Şehirler_AD] [varchar](20) NULL,
 CONSTRAINT [PK_Şehirler] PRIMARY KEY CLUSTERED 
(
	[Şehirler_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AnaÜrünGrubu]    Script Date: 29.12.2022 19:32:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnaÜrünGrubu](
	[AnaÜrünGrubu_ID] [int] NULL,
	[AnaÜrünGrubu_AD] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ürünler]    Script Date: 29.12.2022 19:32:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ürünler](
	[Ürünler_ID] [int] NOT NULL,
	[Ürün_AD] [varchar](50) NULL,
	[Ürün_RENK] [varchar](20) NULL,
	[AnaÜrünGrubu_ID] [int] NULL,
	[Ürün_FİYAT] [money] NULL,
 CONSTRAINT [PK_Ürünler] PRIMARY KEY CLUSTERED 
(
	[Ürünler_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[İndirimler]    Script Date: 29.12.2022 19:32:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[İndirimler](
	[İndirimler_ID] [int] NOT NULL,
	[AnaÜrünGrubu_ID] [int] NULL,
	[Ürünler_ID] [int] NULL,
	[İndirimTutarı] [int] NULL,
 CONSTRAINT [PK_İndirimler] PRIMARY KEY CLUSTERED 
(
	[İndirimler_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Müşteriler]    Script Date: 29.12.2022 19:32:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Müşteriler](
	[Müşteri_ID] [int] NOT NULL,
	[Müşteri_AD] [varchar](50) NULL,
	[Müşteri_SOYAD] [varchar](50) NULL,
	[Müşteri_ADRES] [varchar](20) NULL,
	[Şehirler_ID] [int] NULL,
	[Müşteri_TELEFONNO] [int] NULL,
 CONSTRAINT [PK_Müşter] PRIMARY KEY CLUSTERED 
(
	[Müşteri_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KrediKartı]    Script Date: 29.12.2022 19:32:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KrediKartı](
	[KrediKartı_ID] [int] NOT NULL,
	[KrediKartı_AD] [varchar](50) NULL,
 CONSTRAINT [PK_KrediKartı] PRIMARY KEY CLUSTERED 
(
	[KrediKartı_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AylıkSatışHEdefleri]    Script Date: 29.12.2022 19:32:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AylıkSatışHEdefleri](
	[AylıkSatışHedefleri_ID] [int] NOT NULL,
	[AylıkSatışHedefleri] [int] NULL,
	[SatışKanalları_ID] [int] NULL,
	[AylıkSatışGerçekleşenler_ID] [int] NULL,
 CONSTRAINT [PK_AylıkSatışHEdefleri] PRIMARY KEY CLUSTERED 
(
	[AylıkSatışHedefleri_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AylıkSatışGerçekleşenler]    Script Date: 29.12.2022 19:32:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AylıkSatışGerçekleşenler](
	[AylıkSatışGerçekleşenler_ID] [int] NOT NULL,
	[AylıkSatışGerçekleşenler_MİKTAR] [int] NULL,
	[AnaÜrünGrubu_ID] [int] NULL,
 CONSTRAINT [PK_AylıkSatışGerçekleşenler] PRIMARY KEY CLUSTERED 
(
	[AylıkSatışGerçekleşenler_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HatalıÜrünler]    Script Date: 29.12.2022 19:32:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HatalıÜrünler](
	[HatalıÜrün_ID] [int] NULL,
	[AnaÜrünGrubu_ID] [int] NULL,
	[Ürün_ID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teslimatlar]    Script Date: 29.12.2022 19:32:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teslimatlar](
	[Teslimatlar_ID] [int] NOT NULL,
	[Müşteriler_ID] [int] NULL,
	[ÖdemeTipleri_ID] [int] NULL,
	[Ürünlerr_ID] [int] NULL,
	[Teslimat_TARİHİ] [datetime] NULL,
 CONSTRAINT [PK_Teslimatlar] PRIMARY KEY CLUSTERED 
(
	[Teslimatlar_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[View_1]    Script Date: 29.12.2022 19:32:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_1]
AS
SELECT dbo.Müşteriler.Müşteri_ID, dbo.Ürünler.Ürünler_ID AS Expr2, dbo.Şehirler.Şehirler_ID, dbo.Şehirler.Şehirler_AD, dbo.SatışKanalları.SatışKanalları_ID, dbo.SatışKanalları.SatışKanalları_AD, dbo.AnaÜrünGrubu.AnaÜrünGrubu_ID, 
                  dbo.AnaÜrünGrubu.AnaÜrünGrubu_AD, dbo.SatışSorumluları.SatışSorumluları_ID, dbo.SatışSorumluları.SatışSorumluları_AD, dbo.SatışSorumluları.SatışSorumluları_SOYAD, 
                  dbo.AylıkSatışGerçekleşenler.AylıkSatışGerçekleşenler_ID AS Expr1, dbo.AylıkSatışGerçekleşenler.AylıkSatışGerçekleşenler_MİKTAR, dbo.HatalıÜrünler.HatalıÜrün_ID, dbo.KrediKartı.KrediKartı_ID, dbo.KrediKartı.KrediKartı_AD, 
                  dbo.İndirimler.İndirimler_ID, dbo.İndirimler.İndirimTutarı, dbo.AylıkSatışHEdefleri.AylıkSatışHedefleri_ID, dbo.AylıkSatışHEdefleri.AylıkSatışHedefleri, dbo.AylıkSatışHEdefleri.AylıkSatışGerçekleşenler_ID, dbo.Teslimatlar.Teslimatlar_ID, 
                  dbo.Teslimatlar.KrediKartı_ID AS Expr3, dbo.Teslimatlar.Müşteriler_ID, dbo.Teslimatlar.Ürünler_ID, dbo.Ürünler.Ürün_AD, dbo.Ürünler.Ürün_RENK, dbo.Ürünler.Ürün_FİYAT, dbo.Ürünler.AnaÜrünGrubu_ID AS Expr4, 
                  dbo.AylıkSatışGerçekleşenler.AnaÜrünGrubu_ID AS Expr5, dbo.HatalıÜrünler.AnaÜrünGrubu_ID AS Expr6, dbo.HatalıÜrünler.Ürünler_ID AS Expr7, dbo.AylıkSatışHEdefleri.SatışKanalları_ID AS Expr8, 
                  dbo.İndirimler.AnaÜrünGrubu_ID AS Expr9, dbo.İndirimler.Ürünler_ID AS Expr10, dbo.Müşteriler.Müşteri_AD, dbo.Müşteriler.Müşteri_SOYAD
FROM     dbo.Şehirler INNER JOIN
                  dbo.Müşteriler ON dbo.Şehirler.Şehirler_ID = dbo.Müşteriler.Şehirler_ID INNER JOIN
                  dbo.Teslimatlar ON dbo.Müşteriler.Müşteri_ID = dbo.Teslimatlar.Müşteriler_ID INNER JOIN
                  dbo.KrediKartı ON dbo.Teslimatlar.KrediKartı_ID = dbo.KrediKartı.KrediKartı_ID INNER JOIN
                  dbo.Ürünler ON dbo.Teslimatlar.Ürünler_ID = dbo.Ürünler.Ürünler_ID INNER JOIN
                  dbo.AylıkSatışHEdefleri INNER JOIN
                  dbo.AylıkSatışGerçekleşenler ON dbo.AylıkSatışHEdefleri.AylıkSatışGerçekleşenler_ID = dbo.AylıkSatışGerçekleşenler.AylıkSatışGerçekleşenler_ID INNER JOIN
                  dbo.SatışKanalları ON dbo.AylıkSatışHEdefleri.SatışKanalları_ID = dbo.SatışKanalları.SatışKanalları_ID INNER JOIN
                  dbo.SatışSorumluları ON dbo.SatışKanalları.SatışKanalları_ID = dbo.SatışSorumluları.SatışKanalları_ID INNER JOIN
                  dbo.AnaÜrünGrubu ON dbo.AylıkSatışGerçekleşenler.AnaÜrünGrubu_ID = dbo.AnaÜrünGrubu.AnaÜrünGrubu_ID INNER JOIN
                  dbo.HatalıÜrünler ON dbo.AnaÜrünGrubu.AnaÜrünGrubu_ID = dbo.HatalıÜrünler.AnaÜrünGrubu_ID ON dbo.Ürünler.Ürünler_ID = dbo.HatalıÜrünler.Ürünler_ID CROSS JOIN
                  dbo.İndirimler
GO
INSERT [dbo].[AnaÜrünGrubu] ([AnaÜrünGrubu_ID], [AnaÜrünGrubu_AD]) VALUES (1, N'Kolye')
INSERT [dbo].[AnaÜrünGrubu] ([AnaÜrünGrubu_ID], [AnaÜrünGrubu_AD]) VALUES (2, N'Yüzük')
INSERT [dbo].[AnaÜrünGrubu] ([AnaÜrünGrubu_ID], [AnaÜrünGrubu_AD]) VALUES (3, N'Küpe')
INSERT [dbo].[AnaÜrünGrubu] ([AnaÜrünGrubu_ID], [AnaÜrünGrubu_AD]) VALUES (4, N'Bileklik')
GO
INSERT [dbo].[AylıkSatışGerçekleşenler] ([AylıkSatışGerçekleşenler_ID], [AylıkSatışGerçekleşenler_MİKTAR], [AnaÜrünGrubu_ID]) VALUES (1, 2, 2)
INSERT [dbo].[AylıkSatışGerçekleşenler] ([AylıkSatışGerçekleşenler_ID], [AylıkSatışGerçekleşenler_MİKTAR], [AnaÜrünGrubu_ID]) VALUES (2, 15, 1)
INSERT [dbo].[AylıkSatışGerçekleşenler] ([AylıkSatışGerçekleşenler_ID], [AylıkSatışGerçekleşenler_MİKTAR], [AnaÜrünGrubu_ID]) VALUES (3, 20, 3)
INSERT [dbo].[AylıkSatışGerçekleşenler] ([AylıkSatışGerçekleşenler_ID], [AylıkSatışGerçekleşenler_MİKTAR], [AnaÜrünGrubu_ID]) VALUES (4, 11, 4)
INSERT [dbo].[AylıkSatışGerçekleşenler] ([AylıkSatışGerçekleşenler_ID], [AylıkSatışGerçekleşenler_MİKTAR], [AnaÜrünGrubu_ID]) VALUES (5, 3, 2)
GO
INSERT [dbo].[AylıkSatışHEdefleri] ([AylıkSatışHedefleri_ID], [AylıkSatışHedefleri], [SatışKanalları_ID], [AylıkSatışGerçekleşenler_ID]) VALUES (1, 10, 1, 1)
INSERT [dbo].[AylıkSatışHEdefleri] ([AylıkSatışHedefleri_ID], [AylıkSatışHedefleri], [SatışKanalları_ID], [AylıkSatışGerçekleşenler_ID]) VALUES (2, 15, 2, 2)
INSERT [dbo].[AylıkSatışHEdefleri] ([AylıkSatışHedefleri_ID], [AylıkSatışHedefleri], [SatışKanalları_ID], [AylıkSatışGerçekleşenler_ID]) VALUES (3, 3, 1, 5)
GO
INSERT [dbo].[İndirimler] ([İndirimler_ID], [AnaÜrünGrubu_ID], [Ürünler_ID], [İndirimTutarı]) VALUES (1, 1, 2, 50)
INSERT [dbo].[İndirimler] ([İndirimler_ID], [AnaÜrünGrubu_ID], [Ürünler_ID], [İndirimTutarı]) VALUES (2, 4, 1, 25)
INSERT [dbo].[İndirimler] ([İndirimler_ID], [AnaÜrünGrubu_ID], [Ürünler_ID], [İndirimTutarı]) VALUES (3, 6, 1, 40)
INSERT [dbo].[İndirimler] ([İndirimler_ID], [AnaÜrünGrubu_ID], [Ürünler_ID], [İndirimTutarı]) VALUES (4, 8, 4, 20)
INSERT [dbo].[İndirimler] ([İndirimler_ID], [AnaÜrünGrubu_ID], [Ürünler_ID], [İndirimTutarı]) VALUES (5, 4, 1, 50)
GO
INSERT [dbo].[KrediKartı] ([KrediKartı_ID], [KrediKartı_AD]) VALUES (1, N'Halkbank')
INSERT [dbo].[KrediKartı] ([KrediKartı_ID], [KrediKartı_AD]) VALUES (2, N'Akbank')
INSERT [dbo].[KrediKartı] ([KrediKartı_ID], [KrediKartı_AD]) VALUES (3, N'Ziraatbank')
INSERT [dbo].[KrediKartı] ([KrediKartı_ID], [KrediKartı_AD]) VALUES (4, N'İş Bankası')
INSERT [dbo].[KrediKartı] ([KrediKartı_ID], [KrediKartı_AD]) VALUES (5, N'Garanti Bank')
GO
INSERT [dbo].[Müşteriler] ([Müşteri_ID], [Müşteri_AD], [Müşteri_SOYAD], [Müşteri_ADRES], [Şehirler_ID], [Müşteri_TELEFONNO]) VALUES (101, N'Hilal', N'Keçeci', N'uzun adres', 34, 536451278)
INSERT [dbo].[Müşteriler] ([Müşteri_ID], [Müşteri_AD], [Müşteri_SOYAD], [Müşteri_ADRES], [Şehirler_ID], [Müşteri_TELEFONNO]) VALUES (102, N'Gökçe', N'Küçükler', N'uzun adres', 34, 544128952)
INSERT [dbo].[Müşteriler] ([Müşteri_ID], [Müşteri_AD], [Müşteri_SOYAD], [Müşteri_ADRES], [Şehirler_ID], [Müşteri_TELEFONNO]) VALUES (103, N'Zübeyde', N'Mertoğlu', N'uzun adres', 23, 548751265)
INSERT [dbo].[Müşteriler] ([Müşteri_ID], [Müşteri_AD], [Müşteri_SOYAD], [Müşteri_ADRES], [Şehirler_ID], [Müşteri_TELEFONNO]) VALUES (104, N'Günnur', N'Alyanak', N'uzun adres', 45, 534784521)
INSERT [dbo].[Müşteriler] ([Müşteri_ID], [Müşteri_AD], [Müşteri_SOYAD], [Müşteri_ADRES], [Şehirler_ID], [Müşteri_TELEFONNO]) VALUES (105, N'Yıldız', N'Köylüoğlu', N'uzun adres', 35, 547856215)
INSERT [dbo].[Müşteriler] ([Müşteri_ID], [Müşteri_AD], [Müşteri_SOYAD], [Müşteri_ADRES], [Şehirler_ID], [Müşteri_TELEFONNO]) VALUES (106, N'Olcay', N'Duygulu', N'uzun adres', 35, 536458512)
GO
INSERT [dbo].[SatışKanalları] ([SatışKanalları_ID], [SatışKanalları_AD]) VALUES (10, N'Shopier')
INSERT [dbo].[SatışKanalları] ([SatışKanalları_ID], [SatışKanalları_AD]) VALUES (18, N'Amazon')
INSERT [dbo].[SatışKanalları] ([SatışKanalları_ID], [SatışKanalları_AD]) VALUES (75, N'Hepsiburada')
GO
INSERT [dbo].[SatışSorumluları] ([SatışSorumluları_ID], [SatışSorumluları_AD], [SatışSorumluları_SOYAD], [SatışKanalları_ID], [Şehirler_ID], [SatışSorumluları_TELEFONNO]) VALUES (1, N'Ceyda', N'Ergin', 10, N'35        ', 533439767)
INSERT [dbo].[SatışSorumluları] ([SatışSorumluları_ID], [SatışSorumluları_AD], [SatışSorumluları_SOYAD], [SatışKanalları_ID], [Şehirler_ID], [SatışSorumluları_TELEFONNO]) VALUES (2, N'Aylin', N'Saygılı', 18, N'35        ', 544235685)
INSERT [dbo].[SatışSorumluları] ([SatışSorumluları_ID], [SatışSorumluları_AD], [SatışSorumluları_SOYAD], [SatışKanalları_ID], [Şehirler_ID], [SatışSorumluları_TELEFONNO]) VALUES (3, N'Merve', N'Ateş', 75, N'34        ', 533485689)
INSERT [dbo].[SatışSorumluları] ([SatışSorumluları_ID], [SatışSorumluları_AD], [SatışSorumluları_SOYAD], [SatışKanalları_ID], [Şehirler_ID], [SatışSorumluları_TELEFONNO]) VALUES (4, N'Ali', N'Ender', 18, N'6         ', 534784526)
INSERT [dbo].[SatışSorumluları] ([SatışSorumluları_ID], [SatışSorumluları_AD], [SatışSorumluları_SOYAD], [SatışKanalları_ID], [Şehirler_ID], [SatışSorumluları_TELEFONNO]) VALUES (5, N'Ayşe', N'Gül', 10, N'6         ', 534856931)
GO
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (1, N'Adana')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (2, N'Adıyaman')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (3, N'Afyon')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (4, N'Ağrı')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (5, N'Amasya')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (6, N'Ankara')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (7, N'Antalya')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (8, N'Artvin')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (9, N'Aydın')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (10, N'Balıkesir')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (11, N'Bilecik')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (12, N'Bingöl')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (13, N'Bitlis')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (14, N'Bolu')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (15, N'Burdur')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (16, N'Bursa')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (17, N'Çanakkale')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (18, N'Çankırı')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (19, N'Çorum')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (20, N'Denizli')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (21, N'Diyabakır')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (22, N'Edirne')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (23, N'Elazığ')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (24, N'Erzincan')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (25, N'Erzurum')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (26, N'Eskişehir')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (27, N'Gaziantep')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (28, N'Giresun')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (29, N'Gümüşhane')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (30, N'Hakkari')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (31, N'Hatay')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (32, N'Isparta')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (33, N'İçel')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (34, N'İstanbul')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (35, N'İzmir')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (36, N'Kars')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (37, N'Kastamonu')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (38, N'Kayseri')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (39, N'Kırklareli')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (40, N'Kırşehir')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (41, N'Kocaeli')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (42, N'Konya')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (43, N'Kütahya')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (44, N'Malatya')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (45, N'Manisa')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (46, N'Kahramanmaraş')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (47, N'Mardin')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (48, N'Muğla')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (49, N'Muş')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (50, N'Nevşehir')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (51, N'Niğde')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (52, N'Ordu')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (53, N'Rize')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (54, N'Sakarya')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (55, N'Samsun')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (56, N'Siirt')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (57, N'Sinop')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (58, N'Sivas')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (59, N'Tekirdağ')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (60, N'Tokat')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (61, N'Trabzon')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (62, N'Tunceli')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (63, N'Şanlıurfa')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (64, N'Uşak')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (65, N'Van')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (66, N'Yozgat')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (67, N'Zonguldak')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (68, N'Aksaray')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (69, N'Bayburt')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (70, N'Karaman')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (71, N'Kırıkkale')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (72, N'Batman')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (73, N'Şırnak')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (74, N'Bartın')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (75, N'Ardahan')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (76, N'Iğdır')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (77, N'Yalova')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (78, N'Karabük')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (79, N'Kilis')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (80, N'Osmaniye')
INSERT [dbo].[Şehirler] ([Şehirler_ID], [Şehirler_AD]) VALUES (81, N'Düzce')
GO
INSERT [dbo].[Teslimatlar] ([Teslimatlar_ID], [Müşteriler_ID], [ÖdemeTipleri_ID], [Ürünlerr_ID], [Teslimat_TARİHİ]) VALUES (1, 102, 2, 1, CAST(N'2022-12-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Teslimatlar] ([Teslimatlar_ID], [Müşteriler_ID], [ÖdemeTipleri_ID], [Ürünlerr_ID], [Teslimat_TARİHİ]) VALUES (2, 105, 3, 2, CAST(N'2022-05-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Teslimatlar] ([Teslimatlar_ID], [Müşteriler_ID], [ÖdemeTipleri_ID], [Ürünlerr_ID], [Teslimat_TARİHİ]) VALUES (3, 104, 4, 5, CAST(N'2022-01-07T00:00:00.000' AS DateTime))
INSERT [dbo].[Teslimatlar] ([Teslimatlar_ID], [Müşteriler_ID], [ÖdemeTipleri_ID], [Ürünlerr_ID], [Teslimat_TARİHİ]) VALUES (4, 101, 1, 6, CAST(N'2021-11-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Teslimatlar] ([Teslimatlar_ID], [Müşteriler_ID], [ÖdemeTipleri_ID], [Ürünlerr_ID], [Teslimat_TARİHİ]) VALUES (5, 103, 1, 3, CAST(N'2021-12-12T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Ürünler] ([Ürünler_ID], [Ürün_AD], [Ürün_RENK], [AnaÜrünGrubu_ID], [Ürün_FİYAT]) VALUES (1, N'Diana Yüzük', N'Beyaz', 2, 10.0000)
INSERT [dbo].[Ürünler] ([Ürünler_ID], [Ürün_AD], [Ürün_RENK], [AnaÜrünGrubu_ID], [Ürün_FİYAT]) VALUES (2, N'Aqua Kolye', N'Mavi', 1, 50.0000)
INSERT [dbo].[Ürünler] ([Ürünler_ID], [Ürün_AD], [Ürün_RENK], [AnaÜrünGrubu_ID], [Ürün_FİYAT]) VALUES (3, N'Quetsia Kolye', N'Gümüş', 1, 100.0000)
INSERT [dbo].[Ürünler] ([Ürünler_ID], [Ürün_AD], [Ürün_RENK], [AnaÜrünGrubu_ID], [Ürün_FİYAT]) VALUES (4, N'Luna Kolye', N'Gümüş', 1, 100.0000)
INSERT [dbo].[Ürünler] ([Ürünler_ID], [Ürün_AD], [Ürün_RENK], [AnaÜrünGrubu_ID], [Ürün_FİYAT]) VALUES (5, N'Luna Bileklik', N'Gümüş', 4, 40.0000)
INSERT [dbo].[Ürünler] ([Ürünler_ID], [Ürün_AD], [Ürün_RENK], [AnaÜrünGrubu_ID], [Ürün_FİYAT]) VALUES (6, N'Amazonit Kolye', N'Gümüş', 1, 50.0000)
INSERT [dbo].[Ürünler] ([Ürünler_ID], [Ürün_AD], [Ürün_RENK], [AnaÜrünGrubu_ID], [Ürün_FİYAT]) VALUES (7, N'Ametis Küpe', N'Gümüş', 3, 35.0000)
INSERT [dbo].[Ürünler] ([Ürünler_ID], [Ürün_AD], [Ürün_RENK], [AnaÜrünGrubu_ID], [Ürün_FİYAT]) VALUES (8, N'Ametis Bileklik', N'Gümüş', 4, 45.0000)
INSERT [dbo].[Ürünler] ([Ürünler_ID], [Ürün_AD], [Ürün_RENK], [AnaÜrünGrubu_ID], [Ürün_FİYAT]) VALUES (9, N'Astrea Yüzük', N'Beyaz', 2, 15.0000)
GO
ALTER TABLE [dbo].[Teslimatlar]  WITH CHECK ADD  CONSTRAINT [FK_Teslimatlar_KrediKartı] FOREIGN KEY([ÖdemeTipleri_ID])
REFERENCES [dbo].[KrediKartı] ([KrediKartı_ID])
GO
ALTER TABLE [dbo].[Teslimatlar] CHECK CONSTRAINT [FK_Teslimatlar_KrediKartı]
GO
ALTER TABLE [dbo].[Teslimatlar]  WITH CHECK ADD  CONSTRAINT [FK_Teslimatlar_Müşteriler] FOREIGN KEY([Müşteriler_ID])
REFERENCES [dbo].[Müşteriler] ([Müşteri_ID])
GO
ALTER TABLE [dbo].[Teslimatlar] CHECK CONSTRAINT [FK_Teslimatlar_Müşteriler]
GO
ALTER TABLE [dbo].[Teslimatlar]  WITH CHECK ADD  CONSTRAINT [FK_Teslimatlar_Ürünler] FOREIGN KEY([Ürünlerr_ID])
REFERENCES [dbo].[Ürünler] ([Ürünler_ID])
GO
ALTER TABLE [dbo].[Teslimatlar] CHECK CONSTRAINT [FK_Teslimatlar_Ürünler]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[60] 4[13] 2[8] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Şehirler"
            Begin Extent = 
               Top = 380
               Left = 976
               Bottom = 499
               Right = 1170
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Müşteriler"
            Begin Extent = 
               Top = 343
               Left = 672
               Bottom = 506
               Right = 904
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Teslimatlar"
            Begin Extent = 
               Top = 198
               Left = 1006
               Bottom = 361
               Right = 1200
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "KrediKartı"
            Begin Extent = 
               Top = 187
               Left = 685
               Bottom = 306
               Right = 879
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Ürünler"
            Begin Extent = 
               Top = 16
               Left = 961
               Bottom = 179
               Right = 1174
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "AylıkSatışHEdefleri"
            Begin Extent = 
               Top = 177
               Left = 374
               Bottom = 340
               Right = 649
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "AylıkSatışGerçekleşenler"
            Begin Extent = 
               Top = 7
               Left = 315
               Bottom = 148
               Right = 628
 ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'           End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SatışKanalları"
            Begin Extent = 
               Top = 353
               Left = 41
               Bottom = 472
               Right = 252
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SatışSorumluları"
            Begin Extent = 
               Top = 169
               Left = 22
               Bottom = 332
               Right = 312
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "AnaÜrünGrubu"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 126
               Right = 267
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "HatalıÜrünler"
            Begin Extent = 
               Top = 12
               Left = 684
               Bottom = 153
               Right = 897
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "İndirimler"
            Begin Extent = 
               Top = 372
               Left = 341
               Bottom = 535
               Right = 554
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 12
         Width = 284
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
         Width = 1200
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1176
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1356
         SortOrder = 1416
         GroupBy = 1350
         Filter = 1356
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_1'
GO
