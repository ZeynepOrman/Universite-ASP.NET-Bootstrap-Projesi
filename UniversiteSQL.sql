USE [master]
GO
/****** Object:  Database [Universite_MVCASPNET_Projesi]    Script Date: 8.12.2022 14:38:54 ******/
CREATE DATABASE [Universite_MVCASPNET_Projesi]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Universite(ASP.NET, Bootstrap)', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Universite(ASP.NET, Bootstrap).mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Universite(ASP.NET, Bootstrap)_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Universite(ASP.NET, Bootstrap)_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Universite_MVCASPNET_Projesi] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Universite_MVCASPNET_Projesi].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Universite_MVCASPNET_Projesi] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Universite_MVCASPNET_Projesi] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Universite_MVCASPNET_Projesi] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Universite_MVCASPNET_Projesi] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Universite_MVCASPNET_Projesi] SET ARITHABORT OFF 
GO
ALTER DATABASE [Universite_MVCASPNET_Projesi] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Universite_MVCASPNET_Projesi] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Universite_MVCASPNET_Projesi] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Universite_MVCASPNET_Projesi] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Universite_MVCASPNET_Projesi] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Universite_MVCASPNET_Projesi] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Universite_MVCASPNET_Projesi] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Universite_MVCASPNET_Projesi] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Universite_MVCASPNET_Projesi] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Universite_MVCASPNET_Projesi] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Universite_MVCASPNET_Projesi] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Universite_MVCASPNET_Projesi] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Universite_MVCASPNET_Projesi] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Universite_MVCASPNET_Projesi] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Universite_MVCASPNET_Projesi] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Universite_MVCASPNET_Projesi] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Universite_MVCASPNET_Projesi] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Universite_MVCASPNET_Projesi] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Universite_MVCASPNET_Projesi] SET  MULTI_USER 
GO
ALTER DATABASE [Universite_MVCASPNET_Projesi] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Universite_MVCASPNET_Projesi] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Universite_MVCASPNET_Projesi] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Universite_MVCASPNET_Projesi] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Universite_MVCASPNET_Projesi] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Universite_MVCASPNET_Projesi] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Universite_MVCASPNET_Projesi] SET QUERY_STORE = OFF
GO
USE [Universite_MVCASPNET_Projesi]
GO
/****** Object:  Table [dbo].[Universite_Dersler]    Script Date: 8.12.2022 14:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Universite_Dersler](
	[DersNo] [int] IDENTITY(1,1) NOT NULL,
	[DersAdi] [varchar](50) NULL,
	[DersKodu] [varchar](50) NULL,
	[DersOgretimGorevlisi] [varchar](50) NULL,
	[BaslamaTarihi] [datetime] NULL,
	[BitisTarihi] [datetime] NULL,
	[FakulteBolumNo] [int] NULL,
	[OgretimGorevlisiNo] [int] NULL,
	[OgrenciNo] [int] NULL,
 CONSTRAINT [PK_Universite_Dersler] PRIMARY KEY CLUSTERED 
(
	[DersNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Universite_FakulteBolumleri]    Script Date: 8.12.2022 14:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Universite_FakulteBolumleri](
	[FakulteBolumNo] [int] IDENTITY(1,1) NOT NULL,
	[FakulteBolumBaskani] [varchar](50) NULL,
	[FakulteBolumBasariPuanlamasi] [int] NULL,
	[OgrenciSayisi] [int] NULL,
	[OgretimGorevlisiSayisi] [int] NULL,
	[TelefonNo] [varchar](50) NULL,
	[OgrenciNo] [int] NULL,
	[ProjeNo] [int] NULL,
 CONSTRAINT [PK_Universite_FakulteBolumleri] PRIMARY KEY CLUSTERED 
(
	[FakulteBolumNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Universite_Ogrenciler]    Script Date: 8.12.2022 14:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Universite_Ogrenciler](
	[OgrenciNo] [int] IDENTITY(1,1) NOT NULL,
	[OgrenciAdSoyad] [varchar](50) NULL,
	[OgrenciPuanlama] [int] NULL,
	[Yas] [int] NULL,
	[Adres] [varchar](50) NULL,
	[Odeme] [decimal](18, 0) NULL,
	[ProjeNo] [int] NULL,
	[FakulteBolumNo] [int] NULL,
 CONSTRAINT [PK_Universite_Ogrenciler] PRIMARY KEY CLUSTERED 
(
	[OgrenciNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Universite_OgretimGorevlileri]    Script Date: 8.12.2022 14:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Universite_OgretimGorevlileri](
	[OgretimGorevlisiNo] [int] IDENTITY(1,1) NOT NULL,
	[OgretimGorevlisiAdiSoyadi] [varchar](50) NULL,
	[OgretimGorevlisiOkul] [varchar](50) NULL,
	[OgretimGorevlisiDers] [varchar](50) NULL,
	[OgretimGorevlisiProje] [varchar](50) NULL,
	[TelefonNo] [varchar](50) NULL,
	[FakulteBolumNo] [int] NULL,
 CONSTRAINT [PK_Universite_OgretimGorevlileri] PRIMARY KEY CLUSTERED 
(
	[OgretimGorevlisiNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Universite_Projeler]    Script Date: 8.12.2022 14:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Universite_Projeler](
	[ProjeNo] [int] IDENTITY(1,1) NOT NULL,
	[ProjeAdi] [varchar](50) NULL,
	[ProjeYoneticisi] [varchar](50) NULL,
	[ProjePersoneli] [varchar](50) NULL,
	[BaslamaTarihi] [datetime] NULL,
	[BitisTarihi] [datetime] NULL,
	[ProjePuanlama] [int] NULL,
	[Makale] [bit] NULL,
	[OgretimGorevlisiNo] [int] NULL,
	[OgrenciNo] [int] NULL,
	[FakulteBolumNo] [int] NULL,
 CONSTRAINT [PK_Universite_Projeler] PRIMARY KEY CLUSTERED 
(
	[ProjeNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Universite_Users]    Script Date: 8.12.2022 14:38:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Universite_Users](
	[KullaniciNo] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciAdi] [varchar](50) NULL,
	[Sifre] [varchar](50) NULL,
 CONSTRAINT [PK_Universite_Userrs] PRIMARY KEY CLUSTERED 
(
	[KullaniciNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Universite_Dersler] ON 

INSERT [dbo].[Universite_Dersler] ([DersNo], [DersAdi], [DersKodu], [DersOgretimGorevlisi], [BaslamaTarihi], [BitisTarihi], [FakulteBolumNo], [OgretimGorevlisiNo], [OgrenciNo]) VALUES (2, N'Fizik', N'A123', N'İbrahim Erden', CAST(N'2016-09-09T00:00:00.000' AS DateTime), CAST(N'2017-09-09T00:00:00.000' AS DateTime), 1, 1, 1)
SET IDENTITY_INSERT [dbo].[Universite_Dersler] OFF
GO
SET IDENTITY_INSERT [dbo].[Universite_FakulteBolumleri] ON 

INSERT [dbo].[Universite_FakulteBolumleri] ([FakulteBolumNo], [FakulteBolumBaskani], [FakulteBolumBasariPuanlamasi], [OgrenciSayisi], [OgretimGorevlisiSayisi], [TelefonNo], [OgrenciNo], [ProjeNo]) VALUES (1, N'Fadime Ak', 100, 100, 100, N'5346781234', 1, 2)
SET IDENTITY_INSERT [dbo].[Universite_FakulteBolumleri] OFF
GO
SET IDENTITY_INSERT [dbo].[Universite_Ogrenciler] ON 

INSERT [dbo].[Universite_Ogrenciler] ([OgrenciNo], [OgrenciAdSoyad], [OgrenciPuanlama], [Yas], [Adres], [Odeme], [ProjeNo], [FakulteBolumNo]) VALUES (1, N'Zeynep', 100, 29, N'Kurtköy', CAST(400 AS Decimal(18, 0)), 2, 1)
SET IDENTITY_INSERT [dbo].[Universite_Ogrenciler] OFF
GO
SET IDENTITY_INSERT [dbo].[Universite_OgretimGorevlileri] ON 

INSERT [dbo].[Universite_OgretimGorevlileri] ([OgretimGorevlisiNo], [OgretimGorevlisiAdiSoyadi], [OgretimGorevlisiOkul], [OgretimGorevlisiDers], [OgretimGorevlisiProje], [TelefonNo], [FakulteBolumNo]) VALUES (1, N'Gamze Bal', N'Koç Üniversitesi', N'Matematik', N'Güneş Pilleri', N'5346781245', 1)
SET IDENTITY_INSERT [dbo].[Universite_OgretimGorevlileri] OFF
GO
SET IDENTITY_INSERT [dbo].[Universite_Projeler] ON 

INSERT [dbo].[Universite_Projeler] ([ProjeNo], [ProjeAdi], [ProjeYoneticisi], [ProjePersoneli], [BaslamaTarihi], [BitisTarihi], [ProjePuanlama], [Makale], [OgretimGorevlisiNo], [OgrenciNo], [FakulteBolumNo]) VALUES (2, N'Güneş Pili', N'İbrahim Erden', N'Zeynep Orman Koç', CAST(N'2012-12-12T00:00:00.000' AS DateTime), CAST(N'2012-12-13T00:00:00.000' AS DateTime), 100, 1, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[Universite_Projeler] OFF
GO
SET IDENTITY_INSERT [dbo].[Universite_Users] ON 

INSERT [dbo].[Universite_Users] ([KullaniciNo], [KullaniciAdi], [Sifre]) VALUES (1, N'a', N'a')
SET IDENTITY_INSERT [dbo].[Universite_Users] OFF
GO
ALTER TABLE [dbo].[Universite_Dersler]  WITH CHECK ADD  CONSTRAINT [FK_Universite_Dersler_Universite_FakulteBolumleri] FOREIGN KEY([FakulteBolumNo])
REFERENCES [dbo].[Universite_FakulteBolumleri] ([FakulteBolumNo])
GO
ALTER TABLE [dbo].[Universite_Dersler] CHECK CONSTRAINT [FK_Universite_Dersler_Universite_FakulteBolumleri]
GO
ALTER TABLE [dbo].[Universite_Dersler]  WITH CHECK ADD  CONSTRAINT [FK_Universite_Dersler_Universite_Ogrenciler] FOREIGN KEY([OgrenciNo])
REFERENCES [dbo].[Universite_Ogrenciler] ([OgrenciNo])
GO
ALTER TABLE [dbo].[Universite_Dersler] CHECK CONSTRAINT [FK_Universite_Dersler_Universite_Ogrenciler]
GO
ALTER TABLE [dbo].[Universite_Dersler]  WITH CHECK ADD  CONSTRAINT [FK_Universite_Dersler_Universite_OgretimGorevlileri] FOREIGN KEY([OgretimGorevlisiNo])
REFERENCES [dbo].[Universite_OgretimGorevlileri] ([OgretimGorevlisiNo])
GO
ALTER TABLE [dbo].[Universite_Dersler] CHECK CONSTRAINT [FK_Universite_Dersler_Universite_OgretimGorevlileri]
GO
ALTER TABLE [dbo].[Universite_Ogrenciler]  WITH CHECK ADD  CONSTRAINT [FK_Universite_Ogrenciler_Universite_FakulteBolumleri] FOREIGN KEY([FakulteBolumNo])
REFERENCES [dbo].[Universite_FakulteBolumleri] ([FakulteBolumNo])
GO
ALTER TABLE [dbo].[Universite_Ogrenciler] CHECK CONSTRAINT [FK_Universite_Ogrenciler_Universite_FakulteBolumleri]
GO
ALTER TABLE [dbo].[Universite_Ogrenciler]  WITH CHECK ADD  CONSTRAINT [FK_Universite_Ogrenciler_Universite_Projeler] FOREIGN KEY([ProjeNo])
REFERENCES [dbo].[Universite_Projeler] ([ProjeNo])
GO
ALTER TABLE [dbo].[Universite_Ogrenciler] CHECK CONSTRAINT [FK_Universite_Ogrenciler_Universite_Projeler]
GO
ALTER TABLE [dbo].[Universite_OgretimGorevlileri]  WITH CHECK ADD  CONSTRAINT [FK_Universite_OgretimGorevlileri_Universite_FakulteBolumleri] FOREIGN KEY([FakulteBolumNo])
REFERENCES [dbo].[Universite_FakulteBolumleri] ([FakulteBolumNo])
GO
ALTER TABLE [dbo].[Universite_OgretimGorevlileri] CHECK CONSTRAINT [FK_Universite_OgretimGorevlileri_Universite_FakulteBolumleri]
GO
ALTER TABLE [dbo].[Universite_Projeler]  WITH CHECK ADD  CONSTRAINT [FK_Universite_Projeler_Universite_FakulteBolumleri] FOREIGN KEY([FakulteBolumNo])
REFERENCES [dbo].[Universite_FakulteBolumleri] ([FakulteBolumNo])
GO
ALTER TABLE [dbo].[Universite_Projeler] CHECK CONSTRAINT [FK_Universite_Projeler_Universite_FakulteBolumleri]
GO
ALTER TABLE [dbo].[Universite_Projeler]  WITH CHECK ADD  CONSTRAINT [FK_Universite_Projeler_Universite_OgretimGorevlileri] FOREIGN KEY([OgretimGorevlisiNo])
REFERENCES [dbo].[Universite_OgretimGorevlileri] ([OgretimGorevlisiNo])
GO
ALTER TABLE [dbo].[Universite_Projeler] CHECK CONSTRAINT [FK_Universite_Projeler_Universite_OgretimGorevlileri]
GO
USE [master]
GO
ALTER DATABASE [Universite_MVCASPNET_Projesi] SET  READ_WRITE 
GO
