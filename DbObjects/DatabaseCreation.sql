USE [master]
GO

/****** Object:  Database [NAB]    Script Date: 21/08/2021 10:49:18 AM ******/
CREATE DATABASE [NAB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'NAB', FILENAME = N'C:\Users\Vivek\NAB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'NAB_log', FILENAME = N'C:\Users\Vivek\NAB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [NAB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [NAB] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [NAB] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [NAB] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [NAB] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [NAB] SET ARITHABORT OFF 
GO

ALTER DATABASE [NAB] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [NAB] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [NAB] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [NAB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [NAB] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [NAB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [NAB] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [NAB] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [NAB] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [NAB] SET  DISABLE_BROKER 
GO

ALTER DATABASE [NAB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [NAB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [NAB] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [NAB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [NAB] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [NAB] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [NAB] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [NAB] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [NAB] SET  MULTI_USER 
GO

ALTER DATABASE [NAB] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [NAB] SET DB_CHAINING OFF 
GO

ALTER DATABASE [NAB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [NAB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [NAB] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [NAB] SET QUERY_STORE = OFF
GO

USE [NAB]
GO

ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO

ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO

ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO

ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO

ALTER DATABASE [NAB] SET  READ_WRITE 
GO


