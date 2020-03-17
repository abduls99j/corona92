USE [master]
GO

/****** Object:  Database [covid92]    Script Date: 18-Mar-20 12:11:01 AM ******/
CREATE DATABASE [covid92]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'covid92', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\covid92.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'covid92_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\covid92_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [covid92].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [covid92] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [covid92] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [covid92] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [covid92] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [covid92] SET ARITHABORT OFF 
GO

ALTER DATABASE [covid92] SET AUTO_CLOSE ON 
GO

ALTER DATABASE [covid92] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [covid92] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [covid92] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [covid92] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [covid92] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [covid92] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [covid92] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [covid92] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [covid92] SET  ENABLE_BROKER 
GO

ALTER DATABASE [covid92] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [covid92] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [covid92] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [covid92] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [covid92] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [covid92] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [covid92] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [covid92] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [covid92] SET  MULTI_USER 
GO

ALTER DATABASE [covid92] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [covid92] SET DB_CHAINING OFF 
GO

ALTER DATABASE [covid92] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [covid92] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [covid92] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [covid92] SET QUERY_STORE = OFF
GO

ALTER DATABASE [covid92] SET  READ_WRITE 
GO


USE [covid92]
GO

/****** Object:  Table [dbo].[covidCase]    Script Date: 18-Mar-20 12:12:05 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[covidCase](
	[province] [varchar](50) NULL,
	[city] [varchar](50) NULL,
	[lat] [varchar](50) NULL,
	[lng] [varchar](50) NULL,
	[confirmed] [int] NULL,
	[deaths] [int] NULL,
	[recovered] [int] NULL
) ON [PRIMARY]
GO

USE [covid92]
GO


