USE [master]
GO
/****** Object:  Database [PingPong(userpass)]    Script Date: 16/06/2021 10:45:02 ******/
CREATE DATABASE [PingPong(userpass)]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PingPong(userpass)', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PingPong(userpass).mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PingPong(userpass)_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PingPong(userpass)_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PingPong(userpass)] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PingPong(userpass)].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PingPong(userpass)] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PingPong(userpass)] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PingPong(userpass)] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PingPong(userpass)] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PingPong(userpass)] SET ARITHABORT OFF 
GO
ALTER DATABASE [PingPong(userpass)] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PingPong(userpass)] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PingPong(userpass)] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PingPong(userpass)] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PingPong(userpass)] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PingPong(userpass)] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PingPong(userpass)] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PingPong(userpass)] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PingPong(userpass)] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PingPong(userpass)] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PingPong(userpass)] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PingPong(userpass)] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PingPong(userpass)] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PingPong(userpass)] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PingPong(userpass)] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PingPong(userpass)] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PingPong(userpass)] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PingPong(userpass)] SET RECOVERY FULL 
GO
ALTER DATABASE [PingPong(userpass)] SET  MULTI_USER 
GO
ALTER DATABASE [PingPong(userpass)] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PingPong(userpass)] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PingPong(userpass)] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PingPong(userpass)] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PingPong(userpass)] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PingPong(userpass)] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'PingPong(userpass)', N'ON'
GO
ALTER DATABASE [PingPong(userpass)] SET QUERY_STORE = OFF
GO
USE [PingPong(userpass)]
GO
/****** Object:  Table [dbo].[choivoimay]    Script Date: 16/06/2021 10:45:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[choivoimay](
	[taikhoan] [varchar](50) NULL,
	[thoigian] [varchar](50) NULL,
	[point] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[userpass]    Script Date: 16/06/2021 10:45:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[userpass](
	[taikhoan] [varchar](50) NULL,
	[matkhau] [varchar](50) NULL,
	[thoigian] [varchar](50) NULL,
	[ten] [varchar](50) NULL,
	[highscore] [varchar](50) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[choivoimay] ([taikhoan], [thoigian], [point]) VALUES (N'hung234', N'13/06/2021 15:55:10', N'0')
INSERT [dbo].[choivoimay] ([taikhoan], [thoigian], [point]) VALUES (N'hung123', N'13/06/2021 15:23:07', N'0')
INSERT [dbo].[choivoimay] ([taikhoan], [thoigian], [point]) VALUES (N'hung123', N'13/06/2021 15:23:12', N'0')
INSERT [dbo].[choivoimay] ([taikhoan], [thoigian], [point]) VALUES (N'hung123', N'13/06/2021 15:23:25', N'1')
INSERT [dbo].[choivoimay] ([taikhoan], [thoigian], [point]) VALUES (N'hung123', N'13/06/2021 15:55:06', N'1')
GO
INSERT [dbo].[userpass] ([taikhoan], [matkhau], [thoigian], [ten], [highscore]) VALUES (N'hung123', N'hung', N'12/06/2021 23:45:27', N'haminhhung1', N'1')
INSERT [dbo].[userpass] ([taikhoan], [matkhau], [thoigian], [ten], [highscore]) VALUES (N'hung234', N'hung', N'13/06/2021 14:09:18', N'haminhhung2', N'0')
GO
ALTER TABLE [dbo].[userpass] ADD  CONSTRAINT [DF_userpass_highscore]  DEFAULT ((0)) FOR [highscore]
GO
USE [master]
GO
ALTER DATABASE [PingPong(userpass)] SET  READ_WRITE 
GO
