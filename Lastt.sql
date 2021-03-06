USE [master]
GO
/****** Object:  Database [SmartMeterData.sql]    Script Date: 04/09/2020 4:06:42 AM ******/
CREATE DATABASE [SmartMeterData.sql]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SmartMeterData.sql', FILENAME = N'C:\Users\olusegun\SmartMeterData.sql.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SmartMeterData.sql_log', FILENAME = N'C:\Users\olusegun\SmartMeterData.sql_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [SmartMeterData.sql] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SmartMeterData.sql].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SmartMeterData.sql] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SmartMeterData.sql] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SmartMeterData.sql] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SmartMeterData.sql] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SmartMeterData.sql] SET ARITHABORT OFF 
GO
ALTER DATABASE [SmartMeterData.sql] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SmartMeterData.sql] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SmartMeterData.sql] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SmartMeterData.sql] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SmartMeterData.sql] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SmartMeterData.sql] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SmartMeterData.sql] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SmartMeterData.sql] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SmartMeterData.sql] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SmartMeterData.sql] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SmartMeterData.sql] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SmartMeterData.sql] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SmartMeterData.sql] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SmartMeterData.sql] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SmartMeterData.sql] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SmartMeterData.sql] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SmartMeterData.sql] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SmartMeterData.sql] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SmartMeterData.sql] SET  MULTI_USER 
GO
ALTER DATABASE [SmartMeterData.sql] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SmartMeterData.sql] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SmartMeterData.sql] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SmartMeterData.sql] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SmartMeterData.sql] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SmartMeterData.sql] SET QUERY_STORE = OFF
GO
USE [SmartMeterData.sql]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [SmartMeterData.sql]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 04/09/2020 4:06:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 04/09/2020 4:06:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 04/09/2020 4:06:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 04/09/2020 4:06:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 04/09/2020 4:06:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 04/09/2020 4:06:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 04/09/2020 4:06:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 04/09/2020 4:06:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BILLINGS]    Script Date: 04/09/2020 4:06:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BILLINGS](
	[BILLINGS_ID] [int] IDENTITY(1,1) NOT NULL,
	[DEviceId] [int] NOT NULL,
	[SUBSCRIBER_ID] [int] NOT NULL,
	[STAKEHOLDER_ID] [varchar](50) NOT NULL,
	[USAGE_DURATION] [datetime] NOT NULL,
	[AMOUNT_CONSUMPTION_PER_HR] [decimal](26, 25) NULL,
	[MONTHLY_DURATION_PER_HR] [decimal](26, 25) NULL,
PRIMARY KEY CLUSTERED 
(
	[BILLINGS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[billingsInfos]    Script Date: 04/09/2020 4:06:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[billingsInfos](
	[Billings_Id] [int] IDENTITY(1,1) NOT NULL,
	[DEviceId] [int] NOT NULL,
	[Tarrif_Id] [int] NULL,
	[STAKEHOLDER_ID] [nvarchar](max) NULL,
	[SUBSCRIBER_ID] [int] NOT NULL,
	[USAGE_DURATION] [int] NOT NULL,
	[AMOUNT_CONSUMPTION_PER_HR] [decimal](19, 15) NOT NULL,
	[MONTHLY_DURATION_PER_HR] [decimal](19, 15) NOT NULL,
	[TarrifAmount] [decimal](18, 2) NULL,
	[AMOUNT_TO_PAY] [decimal](23, 15) NULL,
	[AMOUNT_PAID] [decimal](23, 15) NULL,
	[BALANCE_OF_PAYMENT] [decimal](23, 15) NULL,
	[STATUS_OF_PAYMENT] [varchar](30) NULL,
	[TIME_OF_TRANSACTION] [datetime] NOT NULL,
	[Base_Location] [varchar](max) NULL,
	[BillingMonth] [varchar](30) NULL,
 CONSTRAINT [PK_billingsInfos] PRIMARY KEY CLUSTERED 
(
	[Billings_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category5]    Script Date: 04/09/2020 4:06:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category5](
	[CatId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](50) NULL,
	[isselected] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[CatId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DEVICEINFO]    Script Date: 04/09/2020 4:06:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DEVICEINFO](
	[DEVICE_ID] [int] IDENTITY(1,1) NOT NULL,
	[SUBSCRIBER_ID] [int] NULL,
	[STAKEHOLDER_ID] [nvarchar](150) NULL,
	[DEVICE_NAME] [nvarchar](50) NULL,
	[IMEI_NUMBER] [nvarchar](50) NOT NULL,
	[ADDRESS] [varchar](100) NOT NULL,
	[BUS_STOP] [varchar](50) NOT NULL,
	[LGA] [varchar](70) NOT NULL,
	[STATE] [varchar](30) NOT NULL,
	[COUNTRY] [varchar](50) NULL,
	[VERIFY_ADDRESS] [varchar](2) NOT NULL,
	[DELIVERY_FLAG] [varchar](3) NOT NULL,
	[FLAG_OPERATION] [varchar](2) NOT NULL,
	[VERIFY_ADDRESS_DATE] [datetime] NOT NULL,
	[DELIVERY_FLAG_DATE] [datetime] NOT NULL,
	[TRANSACTION_DATE] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[deviceInfos]    Script Date: 04/09/2020 4:06:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[deviceInfos](
	[Device_ID] [int] IDENTITY(1,1) NOT NULL,
	[Subscriber_ID] [int] NOT NULL,
	[STAKEHOLDER_ID] [nvarchar](max) NULL,
	[Imei_Number] [varchar](max) NULL,
	[Device_Name] [varchar](max) NULL,
	[IOTDEviceId] [varchar](max) NULL,
	[TypeOfHouseStatus] [varchar](30) NULL,
	[Address] [nvarchar](max) NULL,
	[Bus_Stop] [nvarchar](max) NULL,
	[State] [nvarchar](max) NULL,
	[Lga] [nvarchar](max) NULL,
	[Verify_Address] [nvarchar](5) NULL,
	[Delivery_Flag] [nvarchar](5) NULL,
	[Flag_Operation] [nvarchar](5) NULL,
	[Device_Status] [nvarchar](5) NULL,
	[Country] [nvarchar](max) NULL,
	[Transaction_Date] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_deviceInfos] PRIMARY KEY CLUSTERED 
(
	[Device_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IOTDEviceDetails]    Script Date: 04/09/2020 4:06:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IOTDEviceDetails](
	[IOTDEviceDetail_Id] [int] IDENTITY(1,1) NOT NULL,
	[Subscriber_ID] [int] NOT NULL,
	[STAKEHOLDER_ID] [nvarchar](max) NULL,
	[ScopeID] [varchar](max) NULL,
	[PrimaryKey] [varchar](max) NULL,
	[IOTDEviceId] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[IOTDEviceDetail_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IOTDeviceSmartMeter]    Script Date: 04/09/2020 4:06:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IOTDeviceSmartMeter](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DEviceId] [varchar](max) NULL,
	[messageId] [varchar](3) NULL,
	[EnergyAmountkWh] [decimal](23, 15) NULL,
	[VoltageReading] [decimal](23, 15) NULL,
	[PowerReading] [decimal](23, 15) NULL,
	[ConnectionStatus] [nvarchar](200) NULL,
	[PartitionId] [varchar](3) NULL,
	[EventProcessedUtcTime] [datetime2](7) NULL,
	[EventEnqueuedUtcTime] [datetime] NULL,
	[StartDatetime] [datetime] NULL,
	[EndDatetime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[stackholderInfoModels]    Script Date: 04/09/2020 4:06:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stackholderInfoModels](
	[Stackholder_ID] [int] IDENTITY(1,1) NOT NULL,
	[Sackholder_Name] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[State] [nvarchar](max) NULL,
	[Country] [nvarchar](max) NULL,
	[Date_Of_Registration] [datetime2](7) NOT NULL,
	[UserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_stackholderInfoModels] PRIMARY KEY CLUSTERED 
(
	[Stackholder_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SUBSCRIBER]    Script Date: 04/09/2020 4:06:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SUBSCRIBER](
	[SUBSCRIBER_ID] [int] IDENTITY(1,1) NOT NULL,
	[FIRST_NAME] [varchar](50) NOT NULL,
	[LAST_NAME] [varchar](50) NOT NULL,
	[PHONE] [varchar](30) NOT NULL,
	[GENDER] [varchar](2) NULL,
	[DOFB] [varchar](30) NULL,
	[EMAIL] [varchar](50) NOT NULL,
	[ADDRESS] [varchar](50) NULL,
	[STATE] [varchar](30) NULL,
	[COUNTRY] [varchar](70) NULL,
	[STAKEHOLDER_ID] [varchar](150) NULL,
	[DATE_REGISTERED] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SUBSCRIBER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[subscriberInfos]    Script Date: 04/09/2020 4:06:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[subscriberInfos](
	[Subscriber_ID] [int] IDENTITY(1,1) NOT NULL,
	[STAKEHOLDER_ID] [nvarchar](max) NULL,
	[First_Name] [nvarchar](max) NULL,
	[Last_Name] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[Gender] [nvarchar](max) NULL,
	[Dofb] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[State] [nvarchar](max) NULL,
	[Country] [nvarchar](max) NULL,
	[Date_Of_Registration] [datetime2](7) NOT NULL,
	[UserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_subscriberInfos] PRIMARY KEY CLUSTERED 
(
	[Subscriber_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tarrifInfos]    Script Date: 04/09/2020 4:06:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tarrifInfos](
	[Tarrif_Id] [int] IDENTITY(1,1) NOT NULL,
	[STAKEHOLDER_ID] [nvarchar](max) NULL,
	[TypeOfHouse] [varchar](max) NULL,
	[TypeOfHouseStatus] [varchar](30) NULL,
	[TarrifAmount] [decimal](18, 2) NOT NULL,
	[DateOfTarrifTransaction] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_tarrifInfos] PRIMARY KEY CLUSTERED 
(
	[Tarrif_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[userInfos]    Script Date: 04/09/2020 4:06:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[userInfos](
	[Id] [nvarchar](450) NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[EmailAddress] [nvarchar](max) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_userInfos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200602002332_identityusers', N'3.1.4')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'1d288bf4-b7f1-43cf-adbe-e80b2b25f469', N'Subcriber', N'SUBCRIBER', N'ffcd8776-14f6-4f09-ba6e-eca59467d986')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'3e2c5b8f-f034-4e90-9568-b6514b36b680', N'Admin', N'ADMIN', N'd502337b-1040-4014-8e4e-2b31e22ee298')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'697cc347-7695-476c-8fe2-ebf368915a20', N'StackHolder', N'STACKHOLDER', N'accd3040-ce69-49ad-a466-a978245277a6')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0f7d7e29-ab27-4bbd-8b5e-4efd0aeffbae', N'1d288bf4-b7f1-43cf-adbe-e80b2b25f469')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'fec1ceb1-0803-4df3-821d-2a07afae0f0a', N'1d288bf4-b7f1-43cf-adbe-e80b2b25f469')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'b0b927e5-c505-426a-931a-57eb4e18c02f', N'3e2c5b8f-f034-4e90-9568-b6514b36b680')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'1b64d55e-4d21-4f06-be16-b1af5ae791a5', N'697cc347-7695-476c-8fe2-ebf368915a20')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'1d2f0c6d-d721-496e-9619-caa9478c70bb', N'697cc347-7695-476c-8fe2-ebf368915a20')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'4bfbfc15-db0e-4d5a-916a-7346264aca50', N'697cc347-7695-476c-8fe2-ebf368915a20')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6f04ccbc-a9a2-4b23-af04-795b22858b57', N'697cc347-7695-476c-8fe2-ebf368915a20')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'7f96742b-4584-4569-b8c7-d7be7dcb08c8', N'697cc347-7695-476c-8fe2-ebf368915a20')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e2bf2586-1149-4cd5-b5fc-d98feddca8bd', N'697cc347-7695-476c-8fe2-ebf368915a20')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'0f7d7e29-ab27-4bbd-8b5e-4efd0aeffbae', N'olusegslason@gmail.com', N'OLUSEGSLASON@GMAIL.COM', N'olusegslason@gmail.com', N'OLUSEGSLASON@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEOZiICNtGDIyHapkB4WnIwvnx/+NVKFf6sIGWNfmwL9v4kUDEf5bW8bKegV5WghSMg==', N'GI7KJ47U2ZNJB6SJWKWOLIOJO7KLFBSP', N'963ce930-5f3f-436a-ae67-098ca979d412', N'e43cd76', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'1b64d55e-4d21-4f06-be16-b1af5ae791a5', N'stacholder@smartmeter.com', N'STACHOLDER@SMARTMETER.COM', N'stacholder@smartmeter.com', N'STACHOLDER@SMARTMETER.COM', 1, N'AQAAAAEAACcQAAAAEAyidU7tR9y30JoeVOLNxAE6/QB0+DLroQbrTzqv3IbnGT1s6VZ4U/90/ri3+LHG0w==', N'ZLFPYNXTP65IAAJ7V7B5JYJZ44LNONFS', N'c1d64ebd-01a7-4e64-8df0-10e6770a3ff6', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'1d2f0c6d-d721-496e-9619-caa9478c70bb', N'fcb8c17', N'FCB8C17', N'joseph.olusegun@ptml-ng.com', N'JOSEPH.OLUSEGUN@PTML-NG.COM', 0, N'AQAAAAEAACcQAAAAELfnWXPGdIyWrY2R95cJd1rMY8nkrTS+YoIXmSAPZwe2QpY0/0ZqayHo+nn6qn6bdg==', N'6IZN7Q2KMFJJCM2ZZXJXE67JGYL72KON', N'ac8c9906-af68-409b-8432-ca0de373a329', N'08067041115', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'4bfbfc15-db0e-4d5a-916a-7346264aca50', N'7e5041c', N'7E5041C', N'pelegocoded@gmail.com', N'PELEGOCODED@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEOtIdU2hZTARKc1/MSdWQxYSKsZZf+b8rO7RPFcvY6ypJ7McTMUTA9DNQEZXUDBU+A==', N'K6KMDE7Y3RNVY3H7GTAFHT4KSKCXBTFK', N'e99031aa-f540-48a9-8a6e-91acf832afac', N'08067041115', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'6f04ccbc-a9a2-4b23-af04-795b22858b57', N'f6267b3', N'F6267B3', N'joe@helectric.com', N'JOE@HELECTRIC.COM', 0, N'AQAAAAEAACcQAAAAEBHynH8PXNV31MgVblgpQ3p5MRJaoKrdR2GBekL2ItjTWQkj3n8a8Ddyojy6jXFLaQ==', N'SOO57CTESCZQPNCWEOGA5KN4I7W6BM2E', N'863aebe4-b318-43df-894a-03fa7f2f22d5', N'08067041115', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'7f96742b-4584-4569-b8c7-d7be7dcb08c8', N'934453c', N'934453C', N'john.daniel@ieelectric.com', N'JOHN.DANIEL@IEELECTRIC.COM', 1, N'AQAAAAEAACcQAAAAEIyyYYgFZQ7W3c35YgA1OBLYmEJoV88SyUzJKVhVkX/WRjnRN9uMypTRj03u/LHXTg==', N'TKSWND6B3CQJVZUYKHW6WBNQKTDVTG2X', N'b97f9cda-c0f5-47f3-8cbf-a1296629965e', N'08086743389', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'b0b927e5-c505-426a-931a-57eb4e18c02f', N'admin@smartmeter.com', N'ADMIN@SMARTMETER.COM', N'admin@smartmeter.com', N'ADMIN@SMARTMETER.COM', 1, N'AQAAAAEAACcQAAAAEEpKmHFDUy1nZw24ggq4/WkOxrWzmpEpfQDU71xjAQp9ezujEEMZFIgeq271ZWBlqA==', N'R6VM2TKYY2ENCJQ3KLK4QKAT6FRUIPN5', N'b3831991-51cd-4d84-9454-c8a2e5f00680', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'e2bf2586-1149-4cd5-b5fc-d98feddca8bd', N'd1b17d3', N'D1B17D3', N'olusegunoloyede620@yahoo.com', N'OLUSEGUNOLOYEDE620@YAHOO.COM', 0, N'AQAAAAEAACcQAAAAECt94eZkzrRigZrBKkvCpne+jWmuUczRymmAbYT3t2lkRghHCbCDPhBn4CsJ/CMduw==', N'6X33LPDHP36MI4YE4H2TOPKR5S2GIS3E', N'46ff526a-bc77-468a-a0b8-2fa2b0b62177', N'08067041115', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'fec1ceb1-0803-4df3-821d-2a07afae0f0a', N'subscriber@smartmeter.com', N'SUBSCRIBER@SMARTMETER.COM', N'subscriber@smartmeter.com', N'SUBSCRIBER@SMARTMETER.COM', 1, N'AQAAAAEAACcQAAAAEPhTcCTRzcvLyb79+3QZ3a0vw/jf7nekw+JJqR4MTl8Ekn3NncDorUF2+BQ1IZNS6Q==', N'AKTPAY3SJBCLHGABO6L4F5AKC3ANNQNC', N'3625e950-8aa2-44d5-8ce7-41edefd7fb76', NULL, 0, 0, NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[billingsInfos] ON 

INSERT [dbo].[billingsInfos] ([Billings_Id], [DEviceId], [Tarrif_Id], [STAKEHOLDER_ID], [SUBSCRIBER_ID], [USAGE_DURATION], [AMOUNT_CONSUMPTION_PER_HR], [MONTHLY_DURATION_PER_HR], [TarrifAmount], [AMOUNT_TO_PAY], [AMOUNT_PAID], [BALANCE_OF_PAYMENT], [STATUS_OF_PAYMENT], [TIME_OF_TRANSACTION], [Base_Location], [BillingMonth]) VALUES (1024, 5, 4, N'ade.tunde@appleelectric.com', 6, 744, CAST(97.554529875600000 AS Decimal(19, 15)), CAST(0.131121679940322 AS Decimal(19, 15)), CAST(20.89 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, CAST(N'2020-06-02T03:52:15.743' AS DateTime), N'Lagos', N'May')
INSERT [dbo].[billingsInfos] ([Billings_Id], [DEviceId], [Tarrif_Id], [STAKEHOLDER_ID], [SUBSCRIBER_ID], [USAGE_DURATION], [AMOUNT_CONSUMPTION_PER_HR], [MONTHLY_DURATION_PER_HR], [TarrifAmount], [AMOUNT_TO_PAY], [AMOUNT_PAID], [BALANCE_OF_PAYMENT], [STATUS_OF_PAYMENT], [TIME_OF_TRANSACTION], [Base_Location], [BillingMonth]) VALUES (1025, 5, 4, N'ade.tunde@appleelectric.com', 6, 744, CAST(97.554529875600000 AS Decimal(19, 15)), CAST(0.131121679940322 AS Decimal(19, 15)), NULL, NULL, NULL, NULL, NULL, CAST(N'2020-06-02T03:52:15.747' AS DateTime), N'Lagos', N'May')
INSERT [dbo].[billingsInfos] ([Billings_Id], [DEviceId], [Tarrif_Id], [STAKEHOLDER_ID], [SUBSCRIBER_ID], [USAGE_DURATION], [AMOUNT_CONSUMPTION_PER_HR], [MONTHLY_DURATION_PER_HR], [TarrifAmount], [AMOUNT_TO_PAY], [AMOUNT_PAID], [BALANCE_OF_PAYMENT], [STATUS_OF_PAYMENT], [TIME_OF_TRANSACTION], [Base_Location], [BillingMonth]) VALUES (1028, 11, 4, N'ade.tunde@appleelectric.com', 4, 744, CAST(32.771849412660934 AS Decimal(19, 15)), CAST(0.044048184694436 AS Decimal(19, 15)), NULL, NULL, NULL, NULL, NULL, CAST(N'2020-06-02T03:52:15.750' AS DateTime), N'Lagos', N'May')
INSERT [dbo].[billingsInfos] ([Billings_Id], [DEviceId], [Tarrif_Id], [STAKEHOLDER_ID], [SUBSCRIBER_ID], [USAGE_DURATION], [AMOUNT_CONSUMPTION_PER_HR], [MONTHLY_DURATION_PER_HR], [TarrifAmount], [AMOUNT_TO_PAY], [AMOUNT_PAID], [BALANCE_OF_PAYMENT], [STATUS_OF_PAYMENT], [TIME_OF_TRANSACTION], [Base_Location], [BillingMonth]) VALUES (1030, 5, 4, N'ade.tunde@appleelectric.com', 6, 744, CAST(97.554529875600000 AS Decimal(19, 15)), CAST(0.131121679940322 AS Decimal(19, 15)), NULL, NULL, NULL, NULL, NULL, CAST(N'2020-06-02T23:47:10.510' AS DateTime), N'Lagos', N'May')
INSERT [dbo].[billingsInfos] ([Billings_Id], [DEviceId], [Tarrif_Id], [STAKEHOLDER_ID], [SUBSCRIBER_ID], [USAGE_DURATION], [AMOUNT_CONSUMPTION_PER_HR], [MONTHLY_DURATION_PER_HR], [TarrifAmount], [AMOUNT_TO_PAY], [AMOUNT_PAID], [BALANCE_OF_PAYMENT], [STATUS_OF_PAYMENT], [TIME_OF_TRANSACTION], [Base_Location], [BillingMonth]) VALUES (1031, 5, 4, N'ade.tunde@appleelectric.com', 6, 744, CAST(97.554529875600000 AS Decimal(19, 15)), CAST(0.131121679940322 AS Decimal(19, 15)), NULL, NULL, NULL, NULL, NULL, CAST(N'2020-06-02T23:47:10.510' AS DateTime), N'Lagos', N'May')
INSERT [dbo].[billingsInfos] ([Billings_Id], [DEviceId], [Tarrif_Id], [STAKEHOLDER_ID], [SUBSCRIBER_ID], [USAGE_DURATION], [AMOUNT_CONSUMPTION_PER_HR], [MONTHLY_DURATION_PER_HR], [TarrifAmount], [AMOUNT_TO_PAY], [AMOUNT_PAID], [BALANCE_OF_PAYMENT], [STATUS_OF_PAYMENT], [TIME_OF_TRANSACTION], [Base_Location], [BillingMonth]) VALUES (1034, 11, 4, N'ade.tunde@appleelectric.com', 4, 744, CAST(32.771849412660934 AS Decimal(19, 15)), CAST(0.044048184694436 AS Decimal(19, 15)), NULL, NULL, NULL, NULL, NULL, CAST(N'2020-06-02T23:47:10.513' AS DateTime), N'Lagos', N'June')
INSERT [dbo].[billingsInfos] ([Billings_Id], [DEviceId], [Tarrif_Id], [STAKEHOLDER_ID], [SUBSCRIBER_ID], [USAGE_DURATION], [AMOUNT_CONSUMPTION_PER_HR], [MONTHLY_DURATION_PER_HR], [TarrifAmount], [AMOUNT_TO_PAY], [AMOUNT_PAID], [BALANCE_OF_PAYMENT], [STATUS_OF_PAYMENT], [TIME_OF_TRANSACTION], [Base_Location], [BillingMonth]) VALUES (1049, 2, 1, N'ade.tunde@appleelectric.com', 5, 33, CAST(172.453537591086409 AS Decimal(19, 15)), CAST(5.225864775487466 AS Decimal(19, 15)), NULL, NULL, NULL, NULL, NULL, CAST(N'2020-06-05T01:50:36.310' AS DateTime), N'Lagos', N'August')
INSERT [dbo].[billingsInfos] ([Billings_Id], [DEviceId], [Tarrif_Id], [STAKEHOLDER_ID], [SUBSCRIBER_ID], [USAGE_DURATION], [AMOUNT_CONSUMPTION_PER_HR], [MONTHLY_DURATION_PER_HR], [TarrifAmount], [AMOUNT_TO_PAY], [AMOUNT_PAID], [BALANCE_OF_PAYMENT], [STATUS_OF_PAYMENT], [TIME_OF_TRANSACTION], [Base_Location], [BillingMonth]) VALUES (1052, 2, 1, N'ade.tunde@appleelectric.com', 5, 28, CAST(97.554529875600000 AS Decimal(19, 15)), CAST(0.131121679940322 AS Decimal(19, 15)), NULL, NULL, NULL, NULL, NULL, CAST(N'2020-06-02T23:47:10.510' AS DateTime), N'Lagos  ', N'June')
INSERT [dbo].[billingsInfos] ([Billings_Id], [DEviceId], [Tarrif_Id], [STAKEHOLDER_ID], [SUBSCRIBER_ID], [USAGE_DURATION], [AMOUNT_CONSUMPTION_PER_HR], [MONTHLY_DURATION_PER_HR], [TarrifAmount], [AMOUNT_TO_PAY], [AMOUNT_PAID], [BALANCE_OF_PAYMENT], [STATUS_OF_PAYMENT], [TIME_OF_TRANSACTION], [Base_Location], [BillingMonth]) VALUES (1053, 2, 1, N'ade.tunde@appleelectric.com', 5, 30, CAST(130.554529875600000 AS Decimal(19, 15)), CAST(4.731121679940322 AS Decimal(19, 15)), NULL, NULL, NULL, NULL, NULL, CAST(N'2020-06-02T23:47:10.510' AS DateTime), N'Lagos', N'July')
INSERT [dbo].[billingsInfos] ([Billings_Id], [DEviceId], [Tarrif_Id], [STAKEHOLDER_ID], [SUBSCRIBER_ID], [USAGE_DURATION], [AMOUNT_CONSUMPTION_PER_HR], [MONTHLY_DURATION_PER_HR], [TarrifAmount], [AMOUNT_TO_PAY], [AMOUNT_PAID], [BALANCE_OF_PAYMENT], [STATUS_OF_PAYMENT], [TIME_OF_TRANSACTION], [Base_Location], [BillingMonth]) VALUES (1054, 1014, 19, N'stacholder@smartmeter.com', 1008, 5, CAST(86.822450933942825 AS Decimal(19, 15)), CAST(17.364490186788565 AS Decimal(19, 15)), CAST(30.56 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, CAST(N'2020-08-29T15:09:49.240' AS DateTime), N'Lagos', N'August')
SET IDENTITY_INSERT [dbo].[billingsInfos] OFF
SET IDENTITY_INSERT [dbo].[Category5] ON 

INSERT [dbo].[Category5] ([CatId], [CategoryName], [isselected]) VALUES (1, N'Nigeria', 0)
INSERT [dbo].[Category5] ([CatId], [CategoryName], [isselected]) VALUES (2, N'Niger', 0)
INSERT [dbo].[Category5] ([CatId], [CategoryName], [isselected]) VALUES (3, N'USA', 0)
INSERT [dbo].[Category5] ([CatId], [CategoryName], [isselected]) VALUES (4, N'UK', 0)
INSERT [dbo].[Category5] ([CatId], [CategoryName], [isselected]) VALUES (5, N'India', 0)
INSERT [dbo].[Category5] ([CatId], [CategoryName], [isselected]) VALUES (6, N'China', 0)
INSERT [dbo].[Category5] ([CatId], [CategoryName], [isselected]) VALUES (7, N'Canada', 1)
SET IDENTITY_INSERT [dbo].[Category5] OFF
SET IDENTITY_INSERT [dbo].[DEVICEINFO] ON 

INSERT [dbo].[DEVICEINFO] ([DEVICE_ID], [SUBSCRIBER_ID], [STAKEHOLDER_ID], [DEVICE_NAME], [IMEI_NUMBER], [ADDRESS], [BUS_STOP], [LGA], [STATE], [COUNTRY], [VERIFY_ADDRESS], [DELIVERY_FLAG], [FLAG_OPERATION], [VERIFY_ADDRESS_DATE], [DELIVERY_FLAG_DATE], [TRANSACTION_DATE]) VALUES (5, 4, N'ade.tunde@appleelectric.com', N'SmartTest', N'44ac3030', N'No30, Kaz Ventures Close', N'Owode', N'Owode', N'Ogun', N'Nigeria', N'Y', N'Y', N'Y', CAST(N'2020-05-09T04:24:15.980' AS DateTime), CAST(N'2020-05-09T04:24:15.980' AS DateTime), CAST(N'2020-05-09T04:24:15.980' AS DateTime))
INSERT [dbo].[DEVICEINFO] ([DEVICE_ID], [SUBSCRIBER_ID], [STAKEHOLDER_ID], [DEVICE_NAME], [IMEI_NUMBER], [ADDRESS], [BUS_STOP], [LGA], [STATE], [COUNTRY], [VERIFY_ADDRESS], [DELIVERY_FLAG], [FLAG_OPERATION], [VERIFY_ADDRESS_DATE], [DELIVERY_FLAG_DATE], [TRANSACTION_DATE]) VALUES (12, 5, N'ade.tunde@appleelectric.com', N'Smartmeter_INV', N'4458ab68', N'No13, Olambe street Ajah', N'Emmanuel', N'Ibeju Lekki', N'Lagos', N'Nigeria', N'Y', N'Y', N'Y', CAST(N'2020-05-09T07:44:00.317' AS DateTime), CAST(N'2020-05-09T07:44:00.317' AS DateTime), CAST(N'2020-05-09T07:44:00.317' AS DateTime))
INSERT [dbo].[DEVICEINFO] ([DEVICE_ID], [SUBSCRIBER_ID], [STAKEHOLDER_ID], [DEVICE_NAME], [IMEI_NUMBER], [ADDRESS], [BUS_STOP], [LGA], [STATE], [COUNTRY], [VERIFY_ADDRESS], [DELIVERY_FLAG], [FLAG_OPERATION], [VERIFY_ADDRESS_DATE], [DELIVERY_FLAG_DATE], [TRANSACTION_DATE]) VALUES (14, 6, N'ade.tunde@appleelectric.com', N'Smartmeter_ILA', N'5573yn91', N'No,54 Animashan Street Iju-Ishaga', N'Station', N'Ifako-ijaiye', N'Lagos', N'Nigeria', N'N', N'N', N'N', CAST(N'2020-05-09T14:55:47.120' AS DateTime), CAST(N'2020-05-09T14:55:47.120' AS DateTime), CAST(N'2020-05-09T14:55:47.120' AS DateTime))
INSERT [dbo].[DEVICEINFO] ([DEVICE_ID], [SUBSCRIBER_ID], [STAKEHOLDER_ID], [DEVICE_NAME], [IMEI_NUMBER], [ADDRESS], [BUS_STOP], [LGA], [STATE], [COUNTRY], [VERIFY_ADDRESS], [DELIVERY_FLAG], [FLAG_OPERATION], [VERIFY_ADDRESS_DATE], [DELIVERY_FLAG_DATE], [TRANSACTION_DATE]) VALUES (15, 6, NULL, N'Smartmeter_IBN', N'3035bj19', N'no12 Daltank Avenue ', N'Pepsi', N'Isoko', N'Benue', N'Nigeria', N'N', N'N', N'N', CAST(N'2020-05-09T16:06:10.057' AS DateTime), CAST(N'2020-05-09T16:06:10.057' AS DateTime), CAST(N'2020-05-09T16:06:10.057' AS DateTime))
SET IDENTITY_INSERT [dbo].[DEVICEINFO] OFF
SET IDENTITY_INSERT [dbo].[deviceInfos] ON 

INSERT [dbo].[deviceInfos] ([Device_ID], [Subscriber_ID], [STAKEHOLDER_ID], [Imei_Number], [Device_Name], [IOTDEviceId], [TypeOfHouseStatus], [Address], [Bus_Stop], [State], [Lga], [Verify_Address], [Delivery_Flag], [Flag_Operation], [Device_Status], [Country], [Transaction_Date]) VALUES (1, 4, N'ade.tunde@appleelectric.com', N'44ac3030', N'Smartmeter_ILA', NULL, N'R2TP', N'No30, Kaz Ventures Close', N'Owode', N'Ogun', N'Owode', N'Y', N'Y', N'Y', NULL, N'Nigeria', CAST(N'2020-05-09T04:24:15.0000000' AS DateTime2))
INSERT [dbo].[deviceInfos] ([Device_ID], [Subscriber_ID], [STAKEHOLDER_ID], [Imei_Number], [Device_Name], [IOTDEviceId], [TypeOfHouseStatus], [Address], [Bus_Stop], [State], [Lga], [Verify_Address], [Delivery_Flag], [Flag_Operation], [Device_Status], [Country], [Transaction_Date]) VALUES (2, 5, N'ade.tunde@appleelectric.com', N'4458ab68', N'Smartmeter_INV', NULL, N'R2SP', N'No13, Olambe street Ajah', N'Emmanuel', N'Lagos', N'Ibeju Lekki', N'Y', N'Y', N'Y', NULL, N'Nigeria', CAST(N'2020-05-09T07:44:00.0000000' AS DateTime2))
INSERT [dbo].[deviceInfos] ([Device_ID], [Subscriber_ID], [STAKEHOLDER_ID], [Imei_Number], [Device_Name], [IOTDEviceId], [TypeOfHouseStatus], [Address], [Bus_Stop], [State], [Lga], [Verify_Address], [Delivery_Flag], [Flag_Operation], [Device_Status], [Country], [Transaction_Date]) VALUES (5, 6, N'ade.tunde@appleelectric.com', N'5573yn91', N'Smartmeter_ILA', NULL, N'R3', N'No,54 Animashan Street Iju-Ishaga', N'Magistate', N'Lagos', N'Ogba Aguda', N'N', N'N', N'N', NULL, N'Nigeria', CAST(N'2020-05-09T14:55:47.0000000' AS DateTime2))
INSERT [dbo].[deviceInfos] ([Device_ID], [Subscriber_ID], [STAKEHOLDER_ID], [Imei_Number], [Device_Name], [IOTDEviceId], [TypeOfHouseStatus], [Address], [Bus_Stop], [State], [Lga], [Verify_Address], [Delivery_Flag], [Flag_Operation], [Device_Status], [Country], [Transaction_Date]) VALUES (9, 5, N'ade.tunde@appleelectric.com', N'3035it89', N'Smartmeter_ILA', NULL, N'R3', N'no,46 Adisa haruna Str', N'Toyin', N'Lagos', N'Ifako-ijaiye', N'N', N'N', N'N', NULL, N'Nigeria', CAST(N'2020-05-22T02:11:33.2500000' AS DateTime2))
INSERT [dbo].[deviceInfos] ([Device_ID], [Subscriber_ID], [STAKEHOLDER_ID], [Imei_Number], [Device_Name], [IOTDEviceId], [TypeOfHouseStatus], [Address], [Bus_Stop], [State], [Lga], [Verify_Address], [Delivery_Flag], [Flag_Operation], [Device_Status], [Country], [Transaction_Date]) VALUES (11, 4, N'ade.tunde@appleelectric.com', N'3035jj67', N'Smartmeter_ILA', NULL, N'R4', N'11,Onitiri Street, Bariga', N'Medical', N'Lagos', N'Bariga', N'Y', N'Y', N'N', NULL, N'Nigeria', CAST(N'2020-05-23T00:51:49.3703330' AS DateTime2))
INSERT [dbo].[deviceInfos] ([Device_ID], [Subscriber_ID], [STAKEHOLDER_ID], [Imei_Number], [Device_Name], [IOTDEviceId], [TypeOfHouseStatus], [Address], [Bus_Stop], [State], [Lga], [Verify_Address], [Delivery_Flag], [Flag_Operation], [Device_Status], [Country], [Transaction_Date]) VALUES (1014, 1008, N'stacholder@smartmeter.com', N'SmartMeterv11v3-1', N'SmartMeterv1.1v3LA', N'smartmeter.com@SmartMeter1-13', NULL, N'No3,Omolabarke Street Sanya', N'Ilamoye', N'Lagos', N'Apapa', N'N', N'N', N'N', NULL, N'Nigeria', CAST(N'2020-08-29T03:26:02.6966667' AS DateTime2))
SET IDENTITY_INSERT [dbo].[deviceInfos] OFF
SET IDENTITY_INSERT [dbo].[IOTDEviceDetails] ON 

INSERT [dbo].[IOTDEviceDetails] ([IOTDEviceDetail_Id], [Subscriber_ID], [STAKEHOLDER_ID], [ScopeID], [PrimaryKey], [IOTDEviceId]) VALUES (1, 1008, N'stacholder@smartmeter.com', N'0ne00164785', N'KdV0TuyiF0ltz334HGKl/86T3ThAowfSNVLUuQbuzLM=', N'SmartMeterv1.1v3-1')
INSERT [dbo].[IOTDEviceDetails] ([IOTDEviceDetail_Id], [Subscriber_ID], [STAKEHOLDER_ID], [ScopeID], [PrimaryKey], [IOTDEviceId]) VALUES (2, 5, N'ade.tunde@appleelectric.com', N'0ne0056788', N'kedhyuiodd', N'SmartMeterv1.1v3-10')
SET IDENTITY_INSERT [dbo].[IOTDEviceDetails] OFF
SET IDENTITY_INSERT [dbo].[IOTDeviceSmartMeter] ON 

INSERT [dbo].[IOTDeviceSmartMeter] ([Id], [DEviceId], [messageId], [EnergyAmountkWh], [VoltageReading], [PowerReading], [ConnectionStatus], [PartitionId], [EventProcessedUtcTime], [EventEnqueuedUtcTime], [StartDatetime], [EndDatetime]) VALUES (5, N'5', N'0', CAST(7.994529875600000 AS Decimal(23, 15)), CAST(9.994529875600000 AS Decimal(23, 15)), CAST(5.234452987560000 AS Decimal(23, 15)), N'2', N'0', CAST(N'2020-05-12T21:59:18.9466667' AS DateTime2), CAST(N'2020-05-12T21:55:05.003' AS DateTime), CAST(N'2020-05-22T01:06:33.537' AS DateTime), CAST(N'2020-06-01T13:53:46.000' AS DateTime))
INSERT [dbo].[IOTDeviceSmartMeter] ([Id], [DEviceId], [messageId], [EnergyAmountkWh], [VoltageReading], [PowerReading], [ConnectionStatus], [PartitionId], [EventProcessedUtcTime], [EventEnqueuedUtcTime], [StartDatetime], [EndDatetime]) VALUES (6, N'11', N'0', CAST(32.771849412660934 AS Decimal(23, 15)), CAST(44.222452987560000 AS Decimal(23, 15)), CAST(71.222452987560000 AS Decimal(23, 15)), N'1', N'0', CAST(N'2020-05-12T21:59:18.9466667' AS DateTime2), CAST(N'2020-05-12T21:52:34.167' AS DateTime), CAST(N'2020-12-28T00:43:56.287' AS DateTime), CAST(N'2020-09-20T14:57:55.527' AS DateTime))
INSERT [dbo].[IOTDeviceSmartMeter] ([Id], [DEviceId], [messageId], [EnergyAmountkWh], [VoltageReading], [PowerReading], [ConnectionStatus], [PartitionId], [EventProcessedUtcTime], [EventEnqueuedUtcTime], [StartDatetime], [EndDatetime]) VALUES (7, N'11', N'0', CAST(73.452987560000000 AS Decimal(23, 15)), CAST(12.615263401100000 AS Decimal(23, 15)), CAST(24.149016987828777 AS Decimal(23, 15)), N'2', N'0', CAST(N'2020-05-12T21:59:18.9466667' AS DateTime2), CAST(N'2020-05-12T21:53:49.470' AS DateTime), CAST(N'2020-06-05T01:41:43.903' AS DateTime), CAST(N'2020-12-28T12:12:11.783' AS DateTime))
INSERT [dbo].[IOTDeviceSmartMeter] ([Id], [DEviceId], [messageId], [EnergyAmountkWh], [VoltageReading], [PowerReading], [ConnectionStatus], [PartitionId], [EventProcessedUtcTime], [EventEnqueuedUtcTime], [StartDatetime], [EndDatetime]) VALUES (8, N'5', N'0', CAST(97.554529875600000 AS Decimal(23, 15)), CAST(38.554529875600000 AS Decimal(23, 15)), CAST(80.554529875600000 AS Decimal(23, 15)), N'1', N'0', CAST(N'2020-05-12T21:59:18.9466667' AS DateTime2), CAST(N'2020-05-12T21:51:19.487' AS DateTime), CAST(N'2020-05-25T21:59:18.000' AS DateTime), CAST(N'2020-06-25T21:59:18.000' AS DateTime))
INSERT [dbo].[IOTDeviceSmartMeter] ([Id], [DEviceId], [messageId], [EnergyAmountkWh], [VoltageReading], [PowerReading], [ConnectionStatus], [PartitionId], [EventProcessedUtcTime], [EventEnqueuedUtcTime], [StartDatetime], [EndDatetime]) VALUES (1002, N'9', N'0', CAST(42.908231976571635 AS Decimal(23, 15)), CAST(14.852650376911240 AS Decimal(23, 15)), CAST(52.397932079000000 AS Decimal(23, 15)), N'2', N'0', CAST(N'2020-05-25T21:59:18.0000000' AS DateTime2), CAST(N'2020-05-12T21:59:18.000' AS DateTime), CAST(N'2020-05-25T21:59:18.000' AS DateTime), CAST(N'2020-06-25T21:59:18.000' AS DateTime))
INSERT [dbo].[IOTDeviceSmartMeter] ([Id], [DEviceId], [messageId], [EnergyAmountkWh], [VoltageReading], [PowerReading], [ConnectionStatus], [PartitionId], [EventProcessedUtcTime], [EventEnqueuedUtcTime], [StartDatetime], [EndDatetime]) VALUES (1003, N'2', N'0', CAST(62.178099657143584 AS Decimal(23, 15)), CAST(11.002237645461000 AS Decimal(23, 15)), CAST(62.178099657143584 AS Decimal(23, 15)), N'2', N'0', CAST(N'2020-05-12T21:59:18.9466667' AS DateTime2), CAST(N'2020-05-12T21:50:04.217' AS DateTime), CAST(N'2020-05-23T01:21:11.000' AS DateTime), CAST(N'2020-05-29T13:21:11.000' AS DateTime))
INSERT [dbo].[IOTDeviceSmartMeter] ([Id], [DEviceId], [messageId], [EnergyAmountkWh], [VoltageReading], [PowerReading], [ConnectionStatus], [PartitionId], [EventProcessedUtcTime], [EventEnqueuedUtcTime], [StartDatetime], [EndDatetime]) VALUES (1004, N'2', N'0', CAST(36.822450933942825 AS Decimal(23, 15)), CAST(11.586102835872140 AS Decimal(23, 15)), CAST(64.618192799990808 AS Decimal(23, 15)), N'2', N'0', CAST(N'2020-05-13T21:59:18.0000000' AS DateTime2), CAST(N'2020-05-12T15:50:04.000' AS DateTime), CAST(N'2020-05-29T13:21:11.000' AS DateTime), CAST(N'2020-06-24T13:21:11.000' AS DateTime))
INSERT [dbo].[IOTDeviceSmartMeter] ([Id], [DEviceId], [messageId], [EnergyAmountkWh], [VoltageReading], [PowerReading], [ConnectionStatus], [PartitionId], [EventProcessedUtcTime], [EventEnqueuedUtcTime], [StartDatetime], [EndDatetime]) VALUES (1005, N'2', N'0', CAST(53.452987560000000 AS Decimal(23, 15)), CAST(18.615263401100000 AS Decimal(23, 15)), CAST(44.149016987828777 AS Decimal(23, 15)), N'1', N'0', CAST(N'2020-08-29T09:59:18.0000000' AS DateTime2), CAST(N'2020-08-29T14:50:04.000' AS DateTime), CAST(N'2020-05-29T13:21:11.000' AS DateTime), CAST(N'2020-05-29T13:21:11.000' AS DateTime))
INSERT [dbo].[IOTDeviceSmartMeter] ([Id], [DEviceId], [messageId], [EnergyAmountkWh], [VoltageReading], [PowerReading], [ConnectionStatus], [PartitionId], [EventProcessedUtcTime], [EventEnqueuedUtcTime], [StartDatetime], [EndDatetime]) VALUES (1006, N'smartmeter.com@SmartMeter1-13', N'0', CAST(73.452987000000000 AS Decimal(23, 15)), CAST(38.554529875600000 AS Decimal(23, 15)), CAST(52.397932079000000 AS Decimal(23, 15)), N'2', N'0', CAST(N'2020-05-28T09:59:18.0000000' AS DateTime2), CAST(N'2020-05-28T09:59:18.000' AS DateTime), CAST(N'2020-05-29T13:21:11.000' AS DateTime), CAST(N'2020-05-29T13:21:11.000' AS DateTime))
INSERT [dbo].[IOTDeviceSmartMeter] ([Id], [DEviceId], [messageId], [EnergyAmountkWh], [VoltageReading], [PowerReading], [ConnectionStatus], [PartitionId], [EventProcessedUtcTime], [EventEnqueuedUtcTime], [StartDatetime], [EndDatetime]) VALUES (1007, N'2', N'0', CAST(0.000000000000000 AS Decimal(23, 15)), CAST(44.222452987560000 AS Decimal(23, 15)), CAST(24.149016987828777 AS Decimal(23, 15)), N'1', N'0', CAST(N'2020-05-18T09:59:18.0000000' AS DateTime2), CAST(N'2020-05-12T16:50:04.000' AS DateTime), CAST(N'2020-05-30T13:21:11.000' AS DateTime), CAST(N'2020-05-30T13:21:11.000' AS DateTime))
INSERT [dbo].[IOTDeviceSmartMeter] ([Id], [DEviceId], [messageId], [EnergyAmountkWh], [VoltageReading], [PowerReading], [ConnectionStatus], [PartitionId], [EventProcessedUtcTime], [EventEnqueuedUtcTime], [StartDatetime], [EndDatetime]) VALUES (1008, N'smartmeter.com@SmartMeter1-13', N'0', CAST(53.452987000000000 AS Decimal(23, 15)), CAST(45.298700000000000 AS Decimal(23, 15)), CAST(29.870000000000000 AS Decimal(23, 15)), N'1', N'0', CAST(N'2020-08-29T08:53:00.0000000' AS DateTime2), CAST(N'2020-08-29T13:03:00.000' AS DateTime), CAST(N'2020-08-29T09:53:00.000' AS DateTime), CAST(N'2020-08-29T09:53:00.000' AS DateTime))
INSERT [dbo].[IOTDeviceSmartMeter] ([Id], [DEviceId], [messageId], [EnergyAmountkWh], [VoltageReading], [PowerReading], [ConnectionStatus], [PartitionId], [EventProcessedUtcTime], [EventEnqueuedUtcTime], [StartDatetime], [EndDatetime]) VALUES (1009, N'smartmeter.com@SmartMeter1-13', N'0', CAST(86.822450933942825 AS Decimal(23, 15)), CAST(12.615263401100000 AS Decimal(23, 15)), CAST(24.149016987828777 AS Decimal(23, 15)), N'2', N'0', CAST(N'2020-08-29T13:03:00.0000000' AS DateTime2), CAST(N'2020-08-29T13:33:00.000' AS DateTime), CAST(N'2020-08-29T13:03:00.000' AS DateTime), CAST(N'2020-08-29T13:03:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[IOTDeviceSmartMeter] OFF
SET IDENTITY_INSERT [dbo].[stackholderInfoModels] ON 

INSERT [dbo].[stackholderInfoModels] ([Stackholder_ID], [Sackholder_Name], [Phone], [Email], [Address], [State], [Country], [Date_Of_Registration], [UserId]) VALUES (1, N'Joe', NULL, N'olusegunoloyede620@yahoo.com', N'No29,ibile Street', NULL, N'Nigeria', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'e2bf2586-1149-4cd5-b5fc-d98feddca8bd')
SET IDENTITY_INSERT [dbo].[stackholderInfoModels] OFF
SET IDENTITY_INSERT [dbo].[SUBSCRIBER] ON 

INSERT [dbo].[SUBSCRIBER] ([SUBSCRIBER_ID], [FIRST_NAME], [LAST_NAME], [PHONE], [GENDER], [DOFB], [EMAIL], [ADDRESS], [STATE], [COUNTRY], [STAKEHOLDER_ID], [DATE_REGISTERED]) VALUES (4, N'Ladi', N'Tiwa', N'08023045556', N'F', N'09/10/1984', N'tiwaprecious@gmail.com', N'No2,Lamidi Str Mushin', N'Lagos', N'Nigeria', N'ade.tunde@appleelectric.com', CAST(N'2020-04-09T08:05:10.847' AS DateTime))
INSERT [dbo].[SUBSCRIBER] ([SUBSCRIBER_ID], [FIRST_NAME], [LAST_NAME], [PHONE], [GENDER], [DOFB], [EMAIL], [ADDRESS], [STATE], [COUNTRY], [STAKEHOLDER_ID], [DATE_REGISTERED]) VALUES (5, N'Joseph', N'Lasons', N'08067041115', N'M', N'09/10/1978', N'lason@gmail.com', N'No3, Sobiye St Adebimpe Opeilu', N'Lagos', N'Nigeria', N'ade.tunde@appleelectric.com', CAST(N'2020-04-10T00:15:24.370' AS DateTime))
INSERT [dbo].[SUBSCRIBER] ([SUBSCRIBER_ID], [FIRST_NAME], [LAST_NAME], [PHONE], [GENDER], [DOFB], [EMAIL], [ADDRESS], [STATE], [COUNTRY], [STAKEHOLDER_ID], [DATE_REGISTERED]) VALUES (6, N'Jimmy', N'Klestron', N'08023060678', N'M', N'02/10/1978', N'klestron@yahoo.com', N'no30,Abule Str, Apapa', N'Lagos', N'Nigeria', N'ade.tunde@appleelectric.com', CAST(N'2020-04-10T02:30:02.830' AS DateTime))
INSERT [dbo].[SUBSCRIBER] ([SUBSCRIBER_ID], [FIRST_NAME], [LAST_NAME], [PHONE], [GENDER], [DOFB], [EMAIL], [ADDRESS], [STATE], [COUNTRY], [STAKEHOLDER_ID], [DATE_REGISTERED]) VALUES (1002, N'Shola', N'Maupe', N'08067041115', N'F', N'08/05/1984 12:00:00 AM', N'jacty@gmail.com', N'No26, Ademola Banire Close', N'Lagos', N'Nigeria', NULL, CAST(N'2020-05-08T03:53:49.263' AS DateTime))
INSERT [dbo].[SUBSCRIBER] ([SUBSCRIBER_ID], [FIRST_NAME], [LAST_NAME], [PHONE], [GENDER], [DOFB], [EMAIL], [ADDRESS], [STATE], [COUNTRY], [STAKEHOLDER_ID], [DATE_REGISTERED]) VALUES (1003, N'Kemi', N'Adebanjoko', N'08067041115', N'F', N'07/08/1984 12:00:00 AM', N'jacty@gmail.com', N'No3, Adebasiru Close', N'Lagos', N'Nigeria', NULL, CAST(N'2020-05-08T04:02:20.693' AS DateTime))
INSERT [dbo].[SUBSCRIBER] ([SUBSCRIBER_ID], [FIRST_NAME], [LAST_NAME], [PHONE], [GENDER], [DOFB], [EMAIL], [ADDRESS], [STATE], [COUNTRY], [STAKEHOLDER_ID], [DATE_REGISTERED]) VALUES (1004, N'Mark', N'Bala', N'07056043679', N'M', N'20/11/1940', N'markbaly@gmail.com', N'no50 Hadeja Street Hadeja', N'Kano', N'Nigeria', N'ade.tunde@appleelectric.com', CAST(N'2020-05-09T14:38:48.217' AS DateTime))
SET IDENTITY_INSERT [dbo].[SUBSCRIBER] OFF
SET IDENTITY_INSERT [dbo].[subscriberInfos] ON 

INSERT [dbo].[subscriberInfos] ([Subscriber_ID], [STAKEHOLDER_ID], [First_Name], [Last_Name], [Phone], [Gender], [Dofb], [Email], [Address], [State], [Country], [Date_Of_Registration], [UserId]) VALUES (2, N'ade.tunde@appleelectric.com', N'Ladi', N'Fani', N'08064083334', N'M', N'12/08/1983', N'fani23@gmail.com', N'No27,Olowu bolade, Oshodi', N'Lagos', N'Nigeria', CAST(N'2020-06-02T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[subscriberInfos] ([Subscriber_ID], [STAKEHOLDER_ID], [First_Name], [Last_Name], [Phone], [Gender], [Dofb], [Email], [Address], [State], [Country], [Date_Of_Registration], [UserId]) VALUES (3, N'ade.tunde@appleelectric.com', N'Sintia', N'Krin', N'08123654433', N'F', N'03/23/1956', N'sinsia@yahoo.com', N'No14,Amina str,Fagba', N'Lagos', N'Nigeria', CAST(N'2020-05-24T20:40:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[subscriberInfos] ([Subscriber_ID], [STAKEHOLDER_ID], [First_Name], [Last_Name], [Phone], [Gender], [Dofb], [Email], [Address], [State], [Country], [Date_Of_Registration], [UserId]) VALUES (4, N'ade.tunde@appleelectric.com', N'Audu', N'Ade', N'08095458699', N'M', N'09/20/1968', N'ade30@yahoo.com', N'N013,KingstenJones Apapa', N'Lagos', N'Nigeria', CAST(N'2020-05-30T11:34:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[subscriberInfos] ([Subscriber_ID], [STAKEHOLDER_ID], [First_Name], [Last_Name], [Phone], [Gender], [Dofb], [Email], [Address], [State], [Country], [Date_Of_Registration], [UserId]) VALUES (5, N'ade.tunde@appleelectric.com', N'Funmi', N'Idowu', N'07034776543', N'F', N'03/10/2020', N'id101@gmail.com', N'No35,Abatior Road,Agege', N'Lagos', N'Nigeria', CAST(N'2020-05-22T17:20:00.0000000' AS DateTime2), N'fec1ceb1-0803-4df3-821d-2a07afae0f0a')
INSERT [dbo].[subscriberInfos] ([Subscriber_ID], [STAKEHOLDER_ID], [First_Name], [Last_Name], [Phone], [Gender], [Dofb], [Email], [Address], [State], [Country], [Date_Of_Registration], [UserId]) VALUES (6, N'ade.tunde@appleelectric.com', N'Beke', N'Clement', N'09056734298', N'M', N'11/20/2020', N'beke@gmail.com', N'Ibafon,Apapa', N'Lagos', N'Nigeria', CAST(N'2020-05-31T18:37:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[subscriberInfos] ([Subscriber_ID], [STAKEHOLDER_ID], [First_Name], [Last_Name], [Phone], [Gender], [Dofb], [Email], [Address], [State], [Country], [Date_Of_Registration], [UserId]) VALUES (7, N'john.daniel@ieelectric.com', N'Bola', N'larri', N'08068453879', N'M', N' 12/04/1990', N'larri128@gmail.com', N'No5, Adebimpe Close Ajegunle Apapa', N'Lagos', N'Nigeria', CAST(N'2020-08-23T09:41:33.4633333' AS DateTime2), N'7f96742b-4584-4569-b8c7-d7be7dcb08c8')
INSERT [dbo].[subscriberInfos] ([Subscriber_ID], [STAKEHOLDER_ID], [First_Name], [Last_Name], [Phone], [Gender], [Dofb], [Email], [Address], [State], [Country], [Date_Of_Registration], [UserId]) VALUES (1008, N'stacholder@smartmeter.com', N'Kenneth', N'Okeke', N'08067041115', N'M', N'12-04-1987', N'olusegslason@gmail.com', N'No3,Omolabarke Street Sanya', N'Lagos', N'Nigeria', CAST(N'2020-08-28T21:23:31.1333333' AS DateTime2), N'0f7d7e29-ab27-4bbd-8b5e-4efd0aeffbae')
INSERT [dbo].[subscriberInfos] ([Subscriber_ID], [STAKEHOLDER_ID], [First_Name], [Last_Name], [Phone], [Gender], [Dofb], [Email], [Address], [State], [Country], [Date_Of_Registration], [UserId]) VALUES (1009, N'stacholder@smartmeter.com', N'adam', N'Kalu', N'907739898790', N'M', N'06/02/1986', N'olusegunoloyede620@yahoo.com', N'lagos', N'lagos', N'nigeria', CAST(N'2020-09-04T02:19:39.6500000' AS DateTime2), N'e2bf2586-1149-4cd5-b5fc-d98feddca8bd')
SET IDENTITY_INSERT [dbo].[subscriberInfos] OFF
SET IDENTITY_INSERT [dbo].[tarrifInfos] ON 

INSERT [dbo].[tarrifInfos] ([Tarrif_Id], [STAKEHOLDER_ID], [TypeOfHouse], [TypeOfHouseStatus], [TarrifAmount], [DateOfTarrifTransaction]) VALUES (1, N'ade.tunde@appleelectric.com', N'Residential Single Phase', N'R2SP', CAST(21.30 AS Decimal(18, 2)), CAST(N'2020-08-14T08:10:37.2400000' AS DateTime2))
INSERT [dbo].[tarrifInfos] ([Tarrif_Id], [STAKEHOLDER_ID], [TypeOfHouse], [TypeOfHouseStatus], [TarrifAmount], [DateOfTarrifTransaction]) VALUES (3, N'ade.tunde@appleelectric.com', N'Residential Tripple Phase', N'R2TP', CAST(21.80 AS Decimal(18, 2)), CAST(N'2020-06-05T02:52:09.1966667' AS DateTime2))
INSERT [dbo].[tarrifInfos] ([Tarrif_Id], [STAKEHOLDER_ID], [TypeOfHouse], [TypeOfHouseStatus], [TarrifAmount], [DateOfTarrifTransaction]) VALUES (4, N'ade.tunde@appleelectric.com', N'Residential Dedicated Transformer 500KVA', N'R3', CAST(36.49 AS Decimal(18, 2)), CAST(N'2020-06-05T02:54:19.1633333' AS DateTime2))
INSERT [dbo].[tarrifInfos] ([Tarrif_Id], [STAKEHOLDER_ID], [TypeOfHouse], [TypeOfHouseStatus], [TarrifAmount], [DateOfTarrifTransaction]) VALUES (5, N'ade.tunde@appleelectric.com', N'Residential Several Transformers', N'R4', CAST(36.92 AS Decimal(18, 2)), CAST(N'2020-06-05T02:54:56.8300000' AS DateTime2))
INSERT [dbo].[tarrifInfos] ([Tarrif_Id], [STAKEHOLDER_ID], [TypeOfHouse], [TypeOfHouseStatus], [TarrifAmount], [DateOfTarrifTransaction]) VALUES (6, N'ade.tunde@appleelectric.com', N'Commercial
 Single Phase', N'C1SP', CAST(27.20 AS Decimal(18, 2)), CAST(N'2020-06-06T07:21:44.2833333' AS DateTime2))
INSERT [dbo].[tarrifInfos] ([Tarrif_Id], [STAKEHOLDER_ID], [TypeOfHouse], [TypeOfHouseStatus], [TarrifAmount], [DateOfTarrifTransaction]) VALUES (7, N'ade.tunde@appleelectric.com', N'Commercial
 Tripple Phase', N'C1TP', CAST(28.47 AS Decimal(18, 2)), CAST(N'2020-06-06T07:22:17.3933333' AS DateTime2))
INSERT [dbo].[tarrifInfos] ([Tarrif_Id], [STAKEHOLDER_ID], [TypeOfHouse], [TypeOfHouseStatus], [TarrifAmount], [DateOfTarrifTransaction]) VALUES (8, N'ade.tunde@appleelectric.com', N'Commercial
', N'C2', CAST(37.74 AS Decimal(18, 2)), CAST(N'2020-06-06T07:22:48.3333333' AS DateTime2))
INSERT [dbo].[tarrifInfos] ([Tarrif_Id], [STAKEHOLDER_ID], [TypeOfHouse], [TypeOfHouseStatus], [TarrifAmount], [DateOfTarrifTransaction]) VALUES (9, N'ade.tunde@appleelectric.com', N'Commercial
 Dedicated Transformer 500KVA', N'C3', CAST(38.14 AS Decimal(18, 2)), CAST(N'2020-06-06T07:23:26.4100000' AS DateTime2))
INSERT [dbo].[tarrifInfos] ([Tarrif_Id], [STAKEHOLDER_ID], [TypeOfHouse], [TypeOfHouseStatus], [TarrifAmount], [DateOfTarrifTransaction]) VALUES (10, N'ade.tunde@appleelectric.com', N'Industrial', N'D1', CAST(28.68 AS Decimal(18, 2)), CAST(N'2020-06-06T07:23:49.8133333' AS DateTime2))
INSERT [dbo].[tarrifInfos] ([Tarrif_Id], [STAKEHOLDER_ID], [TypeOfHouse], [TypeOfHouseStatus], [TarrifAmount], [DateOfTarrifTransaction]) VALUES (11, N'ade.tunde@appleelectric.com', N'Industrial', N'D2 ', CAST(38.38 AS Decimal(18, 2)), CAST(N'2020-06-06T07:23:59.2300000' AS DateTime2))
INSERT [dbo].[tarrifInfos] ([Tarrif_Id], [STAKEHOLDER_ID], [TypeOfHouse], [TypeOfHouseStatus], [TarrifAmount], [DateOfTarrifTransaction]) VALUES (12, N'ade.tunde@appleelectric.com', N'Industrial Dedicated Transformer 500KVA', N'D3', CAST(38.85 AS Decimal(18, 2)), CAST(N'2020-06-06T07:24:18.7700000' AS DateTime2))
INSERT [dbo].[tarrifInfos] ([Tarrif_Id], [STAKEHOLDER_ID], [TypeOfHouse], [TypeOfHouseStatus], [TarrifAmount], [DateOfTarrifTransaction]) VALUES (13, N'ade.tunde@appleelectric.com', N'Special
', N'A1', CAST(26.82 AS Decimal(18, 2)), CAST(N'2020-06-06T07:24:41.2300000' AS DateTime2))
INSERT [dbo].[tarrifInfos] ([Tarrif_Id], [STAKEHOLDER_ID], [TypeOfHouse], [TypeOfHouseStatus], [TarrifAmount], [DateOfTarrifTransaction]) VALUES (14, N'ade.tunde@appleelectric.com', N'Special
', N'A2 ', CAST(30.20 AS Decimal(18, 2)), CAST(N'2020-06-06T07:24:58.4200000' AS DateTime2))
INSERT [dbo].[tarrifInfos] ([Tarrif_Id], [STAKEHOLDER_ID], [TypeOfHouse], [TypeOfHouseStatus], [TarrifAmount], [DateOfTarrifTransaction]) VALUES (15, N'ade.tunde@appleelectric.com', N'Special
 Dedicated Transformer 500KVA', N'A3 ', CAST(30.36 AS Decimal(18, 2)), CAST(N'2020-06-06T07:25:13.8566667' AS DateTime2))
INSERT [dbo].[tarrifInfos] ([Tarrif_Id], [STAKEHOLDER_ID], [TypeOfHouse], [TypeOfHouseStatus], [TarrifAmount], [DateOfTarrifTransaction]) VALUES (17, N'ade.tunde@appleelectric.com', N'Street Light ', N'S1', CAST(19.42 AS Decimal(18, 2)), CAST(N'2020-06-06T07:25:37.7266667' AS DateTime2))
INSERT [dbo].[tarrifInfos] ([Tarrif_Id], [STAKEHOLDER_ID], [TypeOfHouse], [TypeOfHouseStatus], [TarrifAmount], [DateOfTarrifTransaction]) VALUES (18, N'ade.tunde@appleelectric.com', N'church Light', NULL, CAST(23.45 AS Decimal(18, 2)), CAST(N'2020-08-05T21:57:53.1833333' AS DateTime2))
INSERT [dbo].[tarrifInfos] ([Tarrif_Id], [STAKEHOLDER_ID], [TypeOfHouse], [TypeOfHouseStatus], [TarrifAmount], [DateOfTarrifTransaction]) VALUES (19, N'stacholder@smartmeter.com', N'Reesidential Single', N'R2SP', CAST(22.30 AS Decimal(18, 2)), CAST(N'2020-08-29T15:47:17.0833333' AS DateTime2))
SET IDENTITY_INSERT [dbo].[tarrifInfos] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 04/09/2020 4:06:44 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 04/09/2020 4:06:44 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 04/09/2020 4:06:44 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 04/09/2020 4:06:44 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 04/09/2020 4:06:44 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 04/09/2020 4:06:44 AM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 04/09/2020 4:06:44 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_stackholderInfoModels_UserId]    Script Date: 04/09/2020 4:06:44 AM ******/
CREATE NONCLUSTERED INDEX [IX_stackholderInfoModels_UserId] ON [dbo].[stackholderInfoModels]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_subscriberInfos_UserId]    Script Date: 04/09/2020 4:06:44 AM ******/
CREATE NONCLUSTERED INDEX [IX_subscriberInfos_UserId] ON [dbo].[subscriberInfos]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[billingsInfos] ADD  DEFAULT (getdate()) FOR [TIME_OF_TRANSACTION]
GO
ALTER TABLE [dbo].[DEVICEINFO] ADD  DEFAULT ('F') FOR [VERIFY_ADDRESS]
GO
ALTER TABLE [dbo].[DEVICEINFO] ADD  DEFAULT ('N') FOR [DELIVERY_FLAG]
GO
ALTER TABLE [dbo].[DEVICEINFO] ADD  DEFAULT ('N') FOR [FLAG_OPERATION]
GO
ALTER TABLE [dbo].[DEVICEINFO] ADD  DEFAULT (getdate()) FOR [VERIFY_ADDRESS_DATE]
GO
ALTER TABLE [dbo].[DEVICEINFO] ADD  DEFAULT (getdate()) FOR [DELIVERY_FLAG_DATE]
GO
ALTER TABLE [dbo].[DEVICEINFO] ADD  DEFAULT (getdate()) FOR [TRANSACTION_DATE]
GO
ALTER TABLE [dbo].[SUBSCRIBER] ADD  DEFAULT (getdate()) FOR [DATE_REGISTERED]
GO
ALTER TABLE [dbo].[tarrifInfos] ADD  DEFAULT (getdate()) FOR [DateOfTarrifTransaction]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[stackholderInfoModels]  WITH CHECK ADD  CONSTRAINT [FK_stackholderInfoModels_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[stackholderInfoModels] CHECK CONSTRAINT [FK_stackholderInfoModels_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[subscriberInfos]  WITH CHECK ADD  CONSTRAINT [FK_subscriberInfos_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[subscriberInfos] CHECK CONSTRAINT [FK_subscriberInfos_AspNetUsers_UserId]
GO
/****** Object:  StoredProcedure [dbo].[Delete_Billings]    Script Date: 04/09/2020 4:06:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Delete_Billings]
							    @BillingsId int 
                               AS
	                            BEGIN
	                               set nocount on
	                               DELETE FROM dbo.billingsInfos 
	                               WHERE Billings_Id = @BillingsId
	                            END


GO
/****** Object:  StoredProcedure [dbo].[Delete_Devices]    Script Date: 04/09/2020 4:06:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Delete_Devices]
							@device_Id int 

AS
	BEGIN
	   set nocount on
	   DELETE FROM dbo.deviceInfos 
	   WHERE Device_ID = @device_Id
	END


GO
/****** Object:  StoredProcedure [dbo].[GetAllBillings_BySubscriberId]    Script Date: 04/09/2020 4:06:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllBillings_BySubscriberId]
                                    @Subscriber_ID  INT
									
					AS
					Begin                                

							Select bi.Billings_Id,bi.DEviceId,bi.TIME_OF_TRANSACTION,bi.STAKEHOLDER_ID,bi.SUBSCRIBER_ID,bi.USAGE_DURATION,bi.AMOUNT_CONSUMPTION_PER_HR as EnergyConsumedFor30Days,di.TypeOfHouseStatus ,(bi.AMOUNT_CONSUMPTION_PER_HR * ti.[TarrifAmount] ) as AmountToPay ,di.Device_Name,di.Lga,di.Bus_Stop From dbo.billingsInfos bi inner join dbo.deviceInfos di 
							On di.Device_ID = bi.DEviceId inner join dbo.tarrifInfos ti On (ti.Tarrif_Id = bi.Tarrif_Id And ti.STAKEHOLDER_ID = di.STAKEHOLDER_ID) 
										
							WHERE bi.SUBSCRIBER_ID = @Subscriber_ID
					End

GO
/****** Object:  StoredProcedure [dbo].[GetAllBillings_BySubscriberId_CurrentMonth]    Script Date: 04/09/2020 4:06:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllBillings_BySubscriberId_CurrentMonth]
                                    @Subscriber_ID  INT
									
					AS
					Begin                                

							Select TOP(1) bi.Billings_Id,bi.DEviceId,bi.BillingMonth,bi.TIME_OF_TRANSACTION,bi.STAKEHOLDER_ID,bi.SUBSCRIBER_ID,bi.USAGE_DURATION,bi.AMOUNT_CONSUMPTION_PER_HR as EnergyConsumedFor30Days,di.TypeOfHouseStatus ,(bi.AMOUNT_CONSUMPTION_PER_HR * ti.[TarrifAmount] ) as AmountToPay ,di.Device_Name,di.Lga,di.Bus_Stop From dbo.billingsInfos bi inner join dbo.deviceInfos di 
							On di.Device_ID = bi.DEviceId inner join dbo.tarrifInfos ti On (ti.Tarrif_Id = bi.Tarrif_Id And ti.STAKEHOLDER_ID = di.STAKEHOLDER_ID) 
							WHERE bi.SUBSCRIBER_ID = @Subscriber_ID AND STATUS_OF_PAYMENT IS NULL order by Billings_Id DESC			
							--WHERE bi.SUBSCRIBER_ID = @Subscriber_ID AND bi.BillingMonth = (Select(DateName(MONTH,GETDATE())) as BillingMonth)
					End
GO
/****** Object:  StoredProcedure [dbo].[GetAllBillings_BySubscriberIdMonth]    Script Date: 04/09/2020 4:06:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllBillings_BySubscriberIdMonth]
                                    @Subscriber_ID  INT
									,@billingMonth  VARCHAR(50)
									
	AS
	Begin   
	


	--SET @billingMonth = (Select(DateName(MONTH,GETDATE())))

							Select Top(3) bi.Billings_Id,bi.DEviceId,bi.BillingMonth,bi.TIME_OF_TRANSACTION,bi.STAKEHOLDER_ID,bi.SUBSCRIBER_ID,bi.USAGE_DURATION,bi.AMOUNT_CONSUMPTION_PER_HR as EnergyConsumedFor30Days,di.TypeOfHouseStatus ,(bi.AMOUNT_CONSUMPTION_PER_HR * ti.[TarrifAmount] ) as AmountToPay ,di.Device_Name,di.Lga,di.Bus_Stop From dbo.billingsInfos bi inner join dbo.deviceInfos di 
							On di.Device_ID = bi.DEviceId inner join dbo.tarrifInfos ti On (ti.Tarrif_Id = bi.Tarrif_Id And ti.STAKEHOLDER_ID = di.STAKEHOLDER_ID) 
										
							WHERE (bi.SUBSCRIBER_ID = @Subscriber_ID AND bi.BillingMonth = @billingMonth )
							ORDER BY bi.Billings_Id desc
					End

GO
/****** Object:  StoredProcedure [dbo].[GetAllBillings_FirstThreeMonth]    Script Date: 04/09/2020 4:06:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllBillings_FirstThreeMonth]
									@Subscriber_ID  INT
	AS
	Begin   
	


	--SET @billingMonth = (Select(DateName(MONTH,GETDATE())))

							Select Top(3) bi.Billings_Id,bi.DEviceId,bi.BillingMonth,bi.TIME_OF_TRANSACTION,bi.STAKEHOLDER_ID,bi.SUBSCRIBER_ID,bi.USAGE_DURATION,bi.AMOUNT_CONSUMPTION_PER_HR as EnergyConsumedFor30Days,di.TypeOfHouseStatus ,(bi.AMOUNT_CONSUMPTION_PER_HR * ti.[TarrifAmount] ) as AmountToPay ,di.Device_Name,di.Lga,di.Bus_Stop From dbo.billingsInfos bi inner join dbo.deviceInfos di 
							On di.Device_ID = bi.DEviceId inner join dbo.tarrifInfos ti On (ti.Tarrif_Id = bi.Tarrif_Id And ti.STAKEHOLDER_ID = di.STAKEHOLDER_ID) 
										
							WHERE (bi.SUBSCRIBER_ID = @Subscriber_ID  )
							ORDER BY bi.Billings_Id desc
					End

GO
/****** Object:  StoredProcedure [dbo].[GetAllTotal_EnergyConsumedMonthly]    Script Date: 04/09/2020 4:06:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllTotal_EnergyConsumedMonthly]
									@Stakeholder_ID  VARCHAR(150)
	AS
	BEGIN   

		SELECT SUM(AMOUNT_CONSUMPTION_PER_HR) AS EnergyConsumedFor30Days , BillingMonth
		FROM dbo.billingsInfos 									
		WHERE (STAKEHOLDER_ID = @Stakeholder_ID  )
		GROUP BY BillingMonth,AMOUNT_CONSUMPTION_PER_HR
	END

GO
/****** Object:  StoredProcedure [dbo].[GetBillings_ById]    Script Date: 04/09/2020 4:06:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetBillings_ById]
							    @BillingsId int 
                                AS
                                BEGIN
                                    set nocount on
                                        Select DEviceId,SUBSCRIBER_ID,STAKEHOLDER_ID,USAGE_DURATION,MONTHLY_DURATION_PER_HR,AMOUNT_CONSUMPTION_PER_HR,TIME_OF_TRANSACTION
	                                    From dbo.billingsInfos
                                    WHERE Billings_Id = @BillingsId
                                END


GO
/****** Object:  StoredProcedure [dbo].[GetBillingswithId]    Script Date: 04/09/2020 4:06:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetBillingswithId]
	                        @Billing_Id  INT
									
					AS
					Begin                                

							Select bi.Billings_Id,bi.DEviceId,BillingMonth,bi.TIME_OF_TRANSACTION,bi.STAKEHOLDER_ID,bi.SUBSCRIBER_ID,bi.USAGE_DURATION,bi.AMOUNT_CONSUMPTION_PER_HR as EnergyConsumedFor30Days,di.TypeOfHouseStatus ,(bi.AMOUNT_CONSUMPTION_PER_HR * ti.[TarrifAmount] ) as AmountToPay ,di.Device_Name,di.Lga,di.Bus_Stop From dbo.billingsInfos bi inner join dbo.deviceInfos di 
							On di.Device_ID = bi.DEviceId inner join dbo.tarrifInfos ti On (ti.Tarrif_Id = bi.Tarrif_Id And ti.STAKEHOLDER_ID = di.STAKEHOLDER_ID) 
										
							WHERE bi.Billings_Id = @Billing_Id
					End
GO
/****** Object:  StoredProcedure [dbo].[GetDevices_ById]    Script Date: 04/09/2020 4:06:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDevices_ById]
							@Device_Id int 
AS
BEGIN
   set nocount on
   SELECT Device_ID,Subscriber_ID,STAKEHOLDER_ID,Imei_Number,Device_Name,[Address],Bus_Stop,[State],Country,Lga,Verify_Address,Delivery_Flag,Flag_Operation,Transaction_Date 
   FROM dbo.deviceInfos 
   WHERE Device_ID = @Device_Id
END


GO
/****** Object:  StoredProcedure [dbo].[GetIOTDEviceDetails_ById]    Script Date: 04/09/2020 4:06:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetIOTDEviceDetails_ById]
							@IOTDEviceDetail_Id INT 
AS
BEGIN
   set nocount on
   SELECT IOTDEviceDetail_Id,Subscriber_ID,STAKEHOLDER_ID,ScopeID,IOTDEviceId,PrimaryKey 
   FROM dbo.IOTDEviceDetails 
   WHERE IOTDEviceDetail_Id = @IOTDEviceDetail_Id
END
GO
/****** Object:  StoredProcedure [dbo].[GetIOTDEviceDetails_BySubscriberId]    Script Date: 04/09/2020 4:06:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetIOTDEviceDetails_BySubscriberId]
							@Subscriber_ID INT 
AS
BEGIN
   set nocount on
   SELECT IOTDEviceDetail_Id,Subscriber_ID,STAKEHOLDER_ID,ScopeID,IOTDEviceId,PrimaryKey 
   FROM dbo.IOTDEviceDetails 
   WHERE Subscriber_ID = @Subscriber_ID
END
GO
/****** Object:  StoredProcedure [dbo].[GetPayments_BySubscriberId]    Script Date: 04/09/2020 4:06:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetPayments_BySubscriberId]
                               @Subscriber_ID  INT
									
AS
	BEGIN      
		SELECT bi.Billings_Id,bi.STAKEHOLDER_ID,bi.SUBSCRIBER_ID,bi.USAGE_DURATION,(bi.AMOUNT_CONSUMPTION_PER_HR * ti.[TarrifAmount] ) AS AmountToPay ,si.First_Name,si.Last_Name,si.Phone 
				
		FROM dbo.billingsInfos bi INNER JOIN dbo.subscriberInfos si 

		ON si.Subscriber_ID = bi.SUBSCRIBER_ID INNER JOIN dbo.tarrifInfos ti 

		ON (ti.Tarrif_Id = bi.Tarrif_Id AND ti.STAKEHOLDER_ID = si.STAKEHOLDER_ID) 
										
		WHERE bi.SUBSCRIBER_ID = @Subscriber_ID
    END

GO
/****** Object:  StoredProcedure [dbo].[GetSubscriber_ById]    Script Date: 04/09/2020 4:06:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetSubscriber_ById]
							        @Subscriber_Id int 
                                    AS
                                    BEGIN
                                       set nocount on
                                       SELECT  SUBSCRIBER_ID,STAKEHOLDER_ID,FIRST_NAME,LAST_NAME,PHONE,GENDER,DOFB,EMAIL,ADDRESS,STATE,COUNTRY
                                       FROM dbo.SUBSCRIBER 
                                       WHERE SUBSCRIBER_ID = @Subscriber_Id
                                    END


GO
/****** Object:  StoredProcedure [dbo].[GetSubscriber_ByloginId]    Script Date: 04/09/2020 4:06:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetSubscriber_ByloginId]
							@Email varchar(200) 
AS
BEGIN
   set nocount on
  SELECT si.Subscriber_ID FROM dbo.subscriberInfos si inner join AspNetUsers an ON si.UserId = an.Id
  WHERE an.Email =  @Email
END


GO
/****** Object:  StoredProcedure [dbo].[GetTarrifs_ById]    Script Date: 04/09/2020 4:06:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetTarrifs_ById]
							@Tarrif_Id INT 
AS
BEGIN
   set nocount on
   SELECT Tarrif_Id,STAKEHOLDER_ID,TarrifAmount,TypeOfHouse 
   FROM dbo.tarrifInfos 
   WHERE Tarrif_Id = @Tarrif_Id
END

GO
/****** Object:  StoredProcedure [dbo].[Insert_Select_AllBillings]    Script Date: 04/09/2020 4:06:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Insert_Select_AllBillings]	
	                            @Subscriber_ID             INT,
	                            @STAKEHOLDER_ID            VARCHAR(50),
	                            @USAGE_DURATION            INT,
	                            @MONTHLY_DURATION_PER_HR   DECIMAL(17,15),
	                            @AMOUNT_CONSUMPTION_PER_HR DECIMAL(17,15)	
                                AS
                                Begin
	                               
	                                Insert into dbo.billingsInfos(SUBSCRIBER_ID,STAKEHOLDER_ID,USAGE_DURATION,MONTHLY_DURATION_PER_HR,AMOUNT_CONSUMPTION_PER_HR)
	                                Values(@Subscriber_ID,@STAKEHOLDER_ID, @USAGE_DURATION,@MONTHLY_DURATION_PER_HR,@AMOUNT_CONSUMPTION_PER_HR )	            
                                End


GO
/****** Object:  StoredProcedure [dbo].[Insert_Select_AllDevices]    Script Date: 04/09/2020 4:06:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Insert_Select_AllDevices]
	--@Device_ID INT,
	@Subscriber_ID INT,
	@STAKEHOLDER_ID VARCHAR(150),
	@Imei_Number VARCHAR(150),
	@Device_Name VARCHAR(150),
	@IOTDEviceId VARCHAR(150),
	@Address Varchar(150),
	@Bus_Stop Varchar(50),
	@State VARCHAR(30),
	@Country  Varchar(50),
	@Lga Varchar(70),
	@Verify_Address Varchar(2),
	@Delivery_Flag Varchar(3),
	@Flag_Operation Varchar(2)
AS
Begin
 --if not exists(select 1 from dbo.deviceInfos where Subscriber_ID = @Subscriber_ID)
	Begin
	Insert into dbo.deviceInfos(Subscriber_ID,STAKEHOLDER_ID,Imei_Number,Device_Name,IOTDEviceId,[Address],Bus_Stop,[State],Country,Lga,Verify_Address,Delivery_Flag,Flag_Operation,Transaction_Date )
	Values(@Subscriber_ID,@STAKEHOLDER_ID, @Imei_Number,@Device_Name,@IOTDEviceId,@Address,@Bus_Stop,@State,@Country,@Lga,@Verify_Address,@Delivery_Flag,@Flag_Operation,GetDate() )
	End
End
GO
/****** Object:  StoredProcedure [dbo].[Insert_Select_AllIOTDEviceDetails]    Script Date: 04/09/2020 4:06:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Insert_Select_AllIOTDEviceDetails]
	--@Device_ID INT,
	@Subscriber_ID INT,
	@STAKEHOLDER_ID VARCHAR(150),
	@ScopeID VARCHAR(150),
	@PrimaryKey VARCHAR(150),
	@IOTDEviceId VARCHAR(150)
	
AS
Begin
 --if not exists(select 1 from dbo.deviceInfos where Subscriber_ID = @Subscriber_ID)
	Begin
	Insert into dbo.IOTDEviceDetails(Subscriber_ID,STAKEHOLDER_ID,ScopeID,PrimaryKey,IOTDEviceId )
	Values(@Subscriber_ID,@STAKEHOLDER_ID, @ScopeID,@PrimaryKey,@IOTDEviceId)
	End
End
GO
/****** Object:  StoredProcedure [dbo].[Insert_Select_AllIOTDeviceSmartMeter]    Script Date: 04/09/2020 4:06:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Insert_Select_AllIOTDeviceSmartMeter]
	--@Device_ID INT,
	@EnergyAmountkWh       VARCHAR(150),
	@VoltageReading        VARCHAR(150),
	@PowerReading          VARCHAR(150),
	@ConnectionStatus       VARCHAR(10),
	@DeviceId              VARCHAR(MAX),
	@EventProcessedUtcTime DATETIME
	
AS
BEGIN
 --if not exists(select 1 from dbo.deviceInfos where Subscriber_ID = @Subscriber_ID)
	BEGIN
	INSERT INTO dbo.IOTDeviceSmartMeter(EnergyAmountkWh,VoltageReading,PowerReading,ConnectionStatus,DEviceId,EventProcessedUtcTime )
	VALUES( @EnergyAmountkWh, @VoltageReading,@PowerReading,@ConnectionStatus,@DeviceId,@EventProcessedUtcTime)
	END
END
GO
/****** Object:  StoredProcedure [dbo].[Insert_Select_AllIOTDeviceSmartMeterJson]    Script Date: 04/09/2020 4:06:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Insert_Select_AllIOTDeviceSmartMeterJson] (@JSON NVARCHAR(max)) AS

BEGIN
   
 
  INSERT INTO dbo.IOTDeviceSmartMeter(EnergyAmountkWh,VoltageReading,PowerReading,ConnectionStatus,DEviceId,EventProcessedUtcTime )
 SELECT  EnergyAmountkWh, VoltageReading, PowerReading,ConnectionStatus, deviceId, EventProcessedUtcTime
	 FROM OpenJson(@json) WITH (EnergyAmountkWh DECIMAL(23,15) ,VoltageReading DECIMAL(23,15) ,PowerReading DECIMAL(23,15) ,ConnectionStatus NVARCHAR(max) ,deviceId NVARCHAR(max) ,EventProcessedUtcTime DATETIME2 )

END;
GO
/****** Object:  StoredProcedure [dbo].[Insert_Select_AllSubscribers]    Script Date: 04/09/2020 4:06:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Insert_Select_AllSubscribers]
	@STAKEHOLDER_ID VARCHAR(150),
	@First_Name VARCHAR(50),
	@Last_Name VARCHAR(50),
	@Phone Varchar(30),
	@Gender Varchar(30),
	@Dofb VARCHAR(30),
	@Email VARCHAR(50),
	@Address Varchar(50),
	@State VARCHAR(30),
	@Country Varchar(70),
	@UserId  VARCHAR(MAX)
AS
Begin
 if not exists(select 1 from dbo.SUBSCRIBER where EMAIL = @Email)
	Begin
	Insert into dbo.subscriberInfos(STAKEHOLDER_ID,First_Name,Last_Name,Phone,Gender,Dofb,Email,[Address],[State],Country,Date_Of_Registration,UserId)
	Values(@STAKEHOLDER_ID, @First_Name,@Last_Name,@Phone,@Gender,@Dofb,@Email,@Address,@State,@Country,GETDATE(),@UserId )
	End
End
GO
/****** Object:  StoredProcedure [dbo].[Insert_Select_Tarrifs]    Script Date: 04/09/2020 4:06:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Insert_Select_Tarrifs]
	--@Device_ID INT,
	--@Tarrif_Id INT,
	@STAKEHOLDER_ID VARCHAR(50),
	@TarrifAmount DECIMAL(18,2),
	@TypeOfHouse VARCHAR(50)
AS
Begin
 --if not exists(select 1 from dbo.deviceInfos where Subscriber_ID = @Subscriber_ID)
	Begin
	Insert into dbo.tarrifInfos(STAKEHOLDER_ID,TarrifAmount,TypeOfHouse,DateOfTarrifTransaction)
	Values(@STAKEHOLDER_ID, @TarrifAmount,@TypeOfHouse,GetDate() )
	End
End

GO
/****** Object:  StoredProcedure [dbo].[Insert_SelectEnergyConsumed]    Script Date: 04/09/2020 4:06:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	CREATE PROCEDURE [dbo].[Insert_SelectEnergyConsumed]
											( @iotDeviceId		VARCHAR(MAX)
											,@StartDate           DATETIME
											,@EndDate             DATETIME
											,@Billings_Id		  INT OUT) AS

BEGIN

  --BEGIN TRY

  DECLARE @TotalTimeOfUsageInHrs	    INT;
  DECLARE @ConnectedTimeOfUsageInHrs    INT;
  DECLARE @DisconnectedTimeOfUsageInHrs INT;
  DECLARE @Tarrif_id                    INT;
  DECLARE @TotalEnergyConsumePerHr		DECIMAL(19,15);
  DECLARE @EnergyAmountConsumedIn30days DECIMAL(19,15);
  DECLARE @Device_ID                    INT;
  DECLARE @Subscriber_ID                INT;
  DECLARE @STAKEHOLDER_ID               VARCHAR(50);
  DECLARE @TypeOfHousestatus            VARCHAR(30);
  DECLARE @Base_Location                VARCHAR(MAX);
  DECLARE @billingMonth                 VARCHAR(MAX);



	

	SELECT @Subscriber_ID = Subscriber_ID
	      ,@Base_Location = State
		  ,@TypeOfHousestatus = TypeOfHouseStatus
	      ,@Device_ID = Device_ID
	      ,@STAKEHOLDER_ID = STAKEHOLDER_ID
 	  FROM dbo.deviceInfos WITH (NOLOCK)
	 WHERE IOTDEviceId = @iotDeviceId;



	 SELECT @Tarrif_id = Tarrif_Id 
	 FROM dbo.tarrifInfos WITH (NOLOCK)
	 WHERE STAKEHOLDER_ID = @STAKEHOLDER_ID AND TypeOfHouseStatus = @TypeOfHousestatus;
	 

								--SELECT @Subscriber_ID = SUBSCRIBER_ID
								--      ,@STAKEHOLDER_ID = STAKEHOLDER_ID
							 --	  FROM dbo.DEVICEINFO WITH (NOLOCK)
								-- WHERE DEVICE_ID = @DEviceId;

	SELECT  @ConnectedTimeOfUsageInHrs = (SUM(datepart(HH,EventProcessedUtcTime )) )   from dbo.IOTDeviceSmartMeter 
    WHERE (DEviceId = @iotDeviceId AND ConnectionStatus = '2' AND (EventProcessedUtcTime >= @StartDate AND EventProcessedUtcTime <= @EndDate ))
    GROUP BY DEviceId

	SELECT  @DisconnectedTimeOfUsageInHrs = (SUM(datepart(HH,EventProcessedUtcTime )) )   from dbo.IOTDeviceSmartMeter 
    WHERE (DEviceId = @iotDeviceId AND ConnectionStatus = '1' AND (EventProcessedUtcTime >= @StartDate AND EventProcessedUtcTime <= @EndDate ))
    GROUP BY DEviceId

	 SET @TotalTimeOfUsageInHrs = (@ConnectedTimeOfUsageInHrs - @DisconnectedTimeOfUsageInHrs)

	--IF (@ConnectedTimeOfUsageInHrs > @DisconnectedTimeOfUsageInHrs) 	  	
 --   BEGIN 

	--    SET @TotalTimeOfUsageInHrs = @ConnectedTimeOfUsageInHrs - @DisconnectedTimeOfUsageInHrs
 --   END

	--IF (@DisconnectedTimeOfUsageInHrs > @ConnectedTimeOfUsageInHrs) 	  	
 --   BEGIN 

	--    SET @TotalTimeOfUsageInHrs = 0
 --   END

      SET @billingMonth = (Select(DateName(MONTH,GETDATE())))
	 
	SELECT  PartitionId, SUM(EnergyAmountkWh) AS TotalEnergyConsumePerHr,DEviceId,
	((SUM(EnergyAmountkWh))/(NULLIF(@TotalTimeOfUsageInHrs,0))) As EnergyAmountConsumedIn30days  FROM dbo.IOTDeviceSmartMeter
	WHERE (DEviceId = @iotDeviceId AND ConnectionStatus = '2' AND (EventProcessedUtcTime >= @StartDate AND EventProcessedUtcTime <= @EndDate ))
	GROUP BY DEviceId, PartitionId

	SELECT   @TotalEnergyConsumePerHr = SUM(EnergyAmountkWh) ,
	@EnergyAmountConsumedIn30days = ((SUM(EnergyAmountkWh))/(NULLIF(@TotalTimeOfUsageInHrs,0))) FROM dbo.IOTDeviceSmartMeter
	WHERE (DEviceId = @iotDeviceId AND ConnectionStatus = '2' AND (EventProcessedUtcTime >= @StartDate AND EventProcessedUtcTime <= @EndDate ))
	GROUP BY DEviceId, PartitionId	

	IF (@TotalTimeOfUsageInHrs < 0)	
    BEGIN 
	SET @TotalTimeOfUsageInHrs = 0

	SELECT  PartitionId, SUM(EnergyAmountkWh) AS TotalEnergyConsumePerHr,DEviceId,
	((SUM(EnergyAmountkWh))/(NULLIF(@TotalTimeOfUsageInHrs,0))) As EnergyAmountConsumedIn30days FROM dbo.IOTDeviceSmartMeter
    WHERE (DEviceId = @iotDeviceId AND ConnectionStatus = '2' AND (EventProcessedUtcTime >= @StartDate AND EventProcessedUtcTime <= @EndDate ))
	GROUP BY DEviceId, PartitionId

	SELECT   @TotalEnergyConsumePerHr = SUM(EnergyAmountkWh) ,
	@EnergyAmountConsumedIn30days = ((SUM(EnergyAmountkWh))/(NULLIF(@TotalTimeOfUsageInHrs,0))) FROM dbo.IOTDeviceSmartMeter
	WHERE (DEviceId = @iotDeviceId AND ConnectionStatus = '2' AND (EventProcessedUtcTime >= @StartDate AND EventProcessedUtcTime <= @EndDate ))
	GROUP BY DEviceId, PartitionId	
	END

	IF (@TotalEnergyConsumePerHr > 0) 	  	
    BEGIN 
		SELECT @Subscriber_ID = Subscriber_ID
	      ,@Base_Location = State
	      ,@Device_ID = Device_ID
	      ,@STAKEHOLDER_ID = STAKEHOLDER_ID
 	    FROM dbo.deviceInfos WITH (NOLOCK)
	    WHERE IOTDEviceId = @iotDeviceId;

        INSERT INTO dbo.billingsInfos(DEviceId,Tarrif_Id,STAKEHOLDER_ID,SUBSCRIBER_ID,USAGE_DURATION,AMOUNT_CONSUMPTION_PER_HR,MONTHLY_DURATION_PER_HR,Base_Location,BillingMonth)
		VALUES (@Device_ID,@Tarrif_id,@STAKEHOLDER_ID,@Subscriber_ID,@TotalTimeOfUsageInHrs,@TotalEnergyConsumePerHr,@EnergyAmountConsumedIn30days,@Base_Location,@billingMonth)
	 SET @Billings_Id = @@IDENTITY;
	END
END
GO
/****** Object:  StoredProcedure [dbo].[Select_AllBillings]    Script Date: 04/09/2020 4:06:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Select_AllBillings]
							@startDate date,
							@endDate date,  
						    @Subscriber_ID int						
                           AS
                        Begin
                                  
								Select bi.Billings_Id,bi.DEviceId,bi.TIME_OF_TRANSACTION,bi.STAKEHOLDER_ID,bi.SUBSCRIBER_ID,bi.USAGE_DURATION,bi.AMOUNT_CONSUMPTION_PER_HR as EnergyConsumedFor30Days,di.TypeOfHouseStatus ,(bi.AMOUNT_CONSUMPTION_PER_HR * ti.[TarrifAmount] ) as AmountToPay ,di.Device_Name,di.Lga,di.Bus_Stop From dbo.billingsInfos bi inner join dbo.deviceInfos di 
								On di.Device_ID = bi.DEviceId inner join dbo.tarrifInfos ti On (ti.Tarrif_Id = bi.Tarrif_Id And ti.STAKEHOLDER_ID = di.STAKEHOLDER_ID) 
								Where bi.SUBSCRIBER_ID = @Subscriber_ID
								Or(TIME_OF_TRANSACTION <= @endDate And @endDate < TIME_OF_TRANSACTION)
	                            Or(TIME_OF_TRANSACTION <= @startDate And @startDate < TIME_OF_TRANSACTION)
	                            Order by bi.TIME_OF_TRANSACTION Desc
                        End
GO
/****** Object:  StoredProcedure [dbo].[Select_AllBillingsStack]    Script Date: 04/09/2020 4:06:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Select_AllBillingsStack]
							@startDate date,
							@endDate date,  
						    @STAKEHOLDER_ID varchar(150)						
                           AS
                        Begin
                                  
								Select bi.Billings_Id,bi.DEviceId,bi.TIME_OF_TRANSACTION,bi.STAKEHOLDER_ID,bi.SUBSCRIBER_ID,bi.USAGE_DURATION,bi.AMOUNT_CONSUMPTION_PER_HR as EnergyConsumedFor30Days,di.TypeOfHouseStatus ,(bi.AMOUNT_CONSUMPTION_PER_HR * ti.[TarrifAmount] ) as AmountToPay ,di.Device_Name,di.Lga,di.Bus_Stop From dbo.billingsInfos bi inner join dbo.deviceInfos di 
								On di.Device_ID = bi.DEviceId inner join dbo.tarrifInfos ti On (ti.Tarrif_Id = bi.Tarrif_Id And ti.STAKEHOLDER_ID = di.STAKEHOLDER_ID) 
								Where (RIGHT(bi.STAKEHOLDER_ID,LEN(bi.STAKEHOLDER_ID)-CHARINDEX('@',bi.STAKEHOLDER_ID))) = (RIGHT(@STAKEHOLDER_ID,LEN(@STAKEHOLDER_ID)-CHARINDEX('@',@STAKEHOLDER_ID)))


								Or(bi.TIME_OF_TRANSACTION <= @endDate And @endDate < bi.TIME_OF_TRANSACTION)
	                            Or(bi.TIME_OF_TRANSACTION <= @startDate And @startDate < bi.TIME_OF_TRANSACTION)
	                            Order by bi.TIME_OF_TRANSACTION Desc
                        End
GO
/****** Object:  StoredProcedure [dbo].[Select_AllDevices]    Script Date: 04/09/2020 4:06:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Select_AllDevices]
                        @startDate date,
						@endDate date,  
						@Subscriber_ID int
AS

Begin	


     Select Device_ID,Subscriber_ID,STAKEHOLDER_ID,Imei_Number,Device_Name,IOTDEviceId,[Address],Bus_Stop,[State],Country,Lga,Verify_Address,Delivery_Flag,Flag_Operation,Transaction_Date 
	 From dbo.deviceInfos Where Subscriber_ID = @Subscriber_ID
	 Or(Transaction_Date <= @endDate And @endDate < Transaction_Date)
	 Or(Transaction_Date <= @startDate And @startDate < Transaction_Date)
	 Order By Device_ID  Desc
	

End
GO
/****** Object:  StoredProcedure [dbo].[Select_AllDevicesStack]    Script Date: 04/09/2020 4:06:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Select_AllDevicesStack]
                        @startDate date,
						@endDate date,  
						@STAKEHOLDER_ID varchar(150)
AS

Begin	

     Select Device_ID,Subscriber_ID,STAKEHOLDER_ID,Imei_Number,Device_Name,IOTDEviceId,[Address],Bus_Stop,[State],Country,Lga,Verify_Address,Delivery_Flag,Flag_Operation,Transaction_Date 
	 From dbo.deviceInfos Where (RIGHT(STAKEHOLDER_ID,LEN(STAKEHOLDER_ID)-CHARINDEX('@',STAKEHOLDER_ID)) = RIGHT(@STAKEHOLDER_ID,LEN(@STAKEHOLDER_ID)-CHARINDEX('@',@STAKEHOLDER_ID)))

	 Or(Transaction_Date <= @endDate And @endDate < Transaction_Date)
	 Or(Transaction_Date <= @startDate And @startDate < Transaction_Date)
	 Order By Device_ID  Desc
	

End
GO
/****** Object:  StoredProcedure [dbo].[Select_AllIOTDEviceDetails]    Script Date: 04/09/2020 4:06:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Select_AllIOTDEviceDetails]
                       @Subscriber_ID int
AS

Begin	

     Select IOTDEviceDetail_Id, Subscriber_ID,STAKEHOLDER_ID,ScopeID,IOTDEviceId,PrimaryKey
	 From dbo.IOTDEviceDetails Where Subscriber_ID = @Subscriber_ID

	 Order By IOTDEviceDetail_Id  Desc
	

End
GO
/****** Object:  StoredProcedure [dbo].[Select_AllIOTDEviceDetailsStack]    Script Date: 04/09/2020 4:06:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Select_AllIOTDEviceDetailsStack]
                        
						@STAKEHOLDER_ID varchar(150)
AS

Begin	

     Select IOTDEviceDetail_Id, Subscriber_ID,STAKEHOLDER_ID,ScopeID,IOTDEviceId,PrimaryKey
	 From dbo.IOTDEviceDetails Where (RIGHT(STAKEHOLDER_ID,LEN(STAKEHOLDER_ID)-CHARINDEX('@',STAKEHOLDER_ID)) = RIGHT(@STAKEHOLDER_ID,LEN(@STAKEHOLDER_ID)-CHARINDEX('@',@STAKEHOLDER_ID)))

	 Order By IOTDEviceDetail_Id  Desc
	

End
GO
/****** Object:  StoredProcedure [dbo].[Select_AllIOTDeviceSmartMeter]    Script Date: 04/09/2020 4:06:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Select_AllIOTDeviceSmartMeter]
                        @startDate date,
						@endDate date,  
						@STAKEHOLDER_ID varchar(150)
						
AS

Begin	


     Select Id,DEviceId,EnergyAmountkWh,EventProcessedUtcTime,VoltageReading,PowerReading,ConnectionStatus,StartDatetime,EndDatetime 
	 From dbo.IOTDeviceSmartMeter Where (LEFT(DEviceId,LEN(DEviceId)-CHARINDEX('@',DEviceId)) = RIGHT(@STAKEHOLDER_ID,LEN(@STAKEHOLDER_ID)-CHARINDEX('@',@STAKEHOLDER_ID)))

	 Or(EndDatetime <= @endDate And @endDate < EndDatetime)
	 Or(StartDatetime <= @startDate And @startDate < StartDatetime)
	 Order By DEviceId  Desc
	

End
GO
/****** Object:  StoredProcedure [dbo].[Select_AllSubscriber]    Script Date: 04/09/2020 4:06:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Select_AllSubscriber]
                        @startDate date,
						@endDate date,  
						@Subscriber_ID int
						
AS

	DECLARE @email varchar(50);
Begin	


     Select Subscriber_ID,UserId ,STAKEHOLDER_ID,First_Name,Last_Name,Phone,Gender,Dofb,Email,[Address],[State],Country,Date_Of_Registration 
	 From dbo.subscriberInfos Where Subscriber_ID = @Subscriber_ID
	 Or(Date_Of_Registration <= @endDate And @endDate < Date_Of_Registration)
	 Or(Date_Of_Registration <= @startDate And @startDate < Date_Of_Registration)
	 Or(EMAIL = @email )
	 Order By Subscriber_ID  Desc
	

End
GO
/****** Object:  StoredProcedure [dbo].[Select_AllSubscriberStack]    Script Date: 04/09/2020 4:06:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Select_AllSubscriberStack]
                        @startDate date,
						@endDate date,  
						@STAKEHOLDER_ID varchar(150)
						
AS

	DECLARE @email varchar(50);
Begin	


     Select Subscriber_ID,UserId ,STAKEHOLDER_ID,First_Name,Last_Name,Phone,Gender,Dofb,Email,[Address],[State],Country,Date_Of_Registration 
	 From dbo.subscriberInfos Where (RIGHT(STAKEHOLDER_ID,LEN(STAKEHOLDER_ID)-CHARINDEX('@',STAKEHOLDER_ID)) = RIGHT(@STAKEHOLDER_ID,LEN(@STAKEHOLDER_ID)-CHARINDEX('@',@STAKEHOLDER_ID)))


	 Or(Date_Of_Registration <= @endDate And @endDate < Date_Of_Registration)
	 Or(Date_Of_Registration <= @startDate And @startDate < Date_Of_Registration)
	 Or(EMAIL = @email )
	 Order By Subscriber_ID  Desc
	

End
GO
/****** Object:  StoredProcedure [dbo].[Select_IOTMonthlySmartMeter]    Script Date: 04/09/2020 4:06:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Select_IOTMonthlySmartMeter]
                      @ConnectionStatus varchar(5)
						
AS

Begin	
			 SELECT iod.Id,iod.DEviceId,iod.ConnectionStatus,bi.USAGE_DURATION,iod.EventEnqueuedUtcTime,iod.EventProcessedUtcTime 
			 FROM dbo.IOTDeviceSmartMeter iod inner join dbo.billingsInfos bi ON iod.DEviceId = bi.DEviceId 
			 WHERE ConnectionStatus = @ConnectionStatus
			 ORDER BY iod.DEviceId  DESC
	

End


GO
/****** Object:  StoredProcedure [dbo].[Select_IOTUsageSmartMeter]    Script Date: 04/09/2020 4:06:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Select_IOTUsageSmartMeter]
                        @ConnectionStatus varchar(5)
						
AS

Begin	


     Select Id,DEviceId,EnergyAmountkWh,ConnectionStatus,EventEnqueuedUtcTime,EventProcessedUtcTime 
	 From dbo.IOTDeviceSmartMeter Where ConnectionStatus = @ConnectionStatus
	 Order By DEviceId  Desc
	

End


GO
/****** Object:  StoredProcedure [dbo].[Update_Billings]    Script Date: 04/09/2020 4:06:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Update_Billings]
                                @BillingsID				   INT,
								@Device_ID				   INT,
								@Subscriber_ID			   INT,
								@STAKEHOLDER_ID			   VARCHAR(50),
								@USAGE_DURATION			   INT,
								@MONTHLY_DURATION_PERHR    DECIMAL(17,15),
								@AMOUNT_CONSUMPTION_PER_HR DECIMAL(17,15)
                            AS
	                            BEGIN
		                              set nocount on;
		                              UPDATE dbo.billingsInfos
		                              SET   SUBSCRIBER_ID					=  @Subscriber_ID
			                               ,STAKEHOLDER_ID					= @STAKEHOLDER_ID
			                               ,DEviceId						= @Device_ID
			                               ,USAGE_DURATION                  = @USAGE_DURATION
			                               ,MONTHLY_DURATION_PER_HR	        = @MONTHLY_DURATION_PERHR
			                               ,AMOUNT_CONSUMPTION_PER_HR       = @AMOUNT_CONSUMPTION_PER_HR
			                               WHERE Billings_Id   = @BillingsID
	                            END


GO
/****** Object:  StoredProcedure [dbo].[Update_DevicesDetails]    Script Date: 04/09/2020 4:06:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Update_DevicesDetails]
								@Device_ID INT,
								@Subscriber_ID INT,
								@STAKEHOLDER_ID VARCHAR(50),
								@Imei_Number VARCHAR(50),
								@Device_Name VARCHAR(50),
								@Address Varchar(50),
								@Bus_Stop Varchar(50),
								@State VARCHAR(30),
								@Lga Varchar(70),
								@Verify_Address Varchar(2),
								@Delivery_Flag Varchar(3),
								@Flag_Operation Varchar(2),								
								@Country  Varchar(50)
AS
	BEGIN
		  set nocount on;
		  UPDATE dbo.deviceInfos
		  SET   Subscriber_ID =  @Subscriber_ID
			   ,STAKEHOLDER_ID = @STAKEHOLDER_ID
			   ,Imei_Number    = @Imei_Number
			   ,Device_Name    = @Device_Name
			   ,[Address]	   = @Address
			   ,Bus_Stop       = @Bus_Stop
			   ,[State]        = @State
			   ,Lga            = @Lga
			   ,Verify_Address = @Verify_Address
			   ,Delivery_Flag  = @Delivery_Flag
			   ,Flag_Operation = @Flag_Operation			  
			   ,Country        = @Country
		  WHERE Device_ID = @Device_ID;

	END


GO
/****** Object:  StoredProcedure [dbo].[Update_IOTDevicesDetails]    Script Date: 04/09/2020 4:06:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Update_IOTDevicesDetails]
								@IOTDEviceDetail_Id INT,
								@Subscriber_ID INT,
								@STAKEHOLDER_ID VARCHAR(150),
								@ScopeID      VARCHAR(50),
								@PrimaryKey   VARCHAR(MAX),
								@IOTDEviceId   VARCHAR(MAX)
AS
	BEGIN
		  set nocount on;
		  UPDATE dbo.IOTDEviceDetails
		  SET   Subscriber_ID   =  @Subscriber_ID
			   ,STAKEHOLDER_ID	= @STAKEHOLDER_ID
			   ,ScopeID			= @ScopeID
			   ,PrimaryKey		= @PrimaryKey
			   ,IOTDEviceId     = @IOTDEviceId
		  WHERE IOTDEviceDetail_Id = @IOTDEviceDetail_Id;

	END
GO
/****** Object:  StoredProcedure [dbo].[Update_Payment_Billings]    Script Date: 04/09/2020 4:06:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Update_Payment_Billings]
                                @BillingsID				   INT,
								@Subscriber_ID			   INT,
								@STAKEHOLDER_ID			   VARCHAR(50),
								@AmountToPay			   DECIMAL (23, 15),
								@AMOUNT_PAID               DECIMAL (23, 15),
								@STATUS_OF_PAYMENT         VARCHAR(50)
                            AS
	                            BEGIN
		                              set nocount on;
		                              UPDATE dbo.billingsInfos
		                              SET   SUBSCRIBER_ID			   =  @Subscriber_ID
			                               ,STAKEHOLDER_ID			  = @STAKEHOLDER_ID
			                               ,AMOUNT_TO_PAY             = @AmountToPay
			                               ,AMOUNT_PAID	              = @AMOUNT_PAID
										   ,STATUS_OF_PAYMENT         = @STATUS_OF_PAYMENT
			                               WHERE Billings_Id   = @BillingsID
	                            END
GO
/****** Object:  StoredProcedure [dbo].[Update_TarrifDetails]    Script Date: 04/09/2020 4:06:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Update_TarrifDetails]
								@Tarrif_Id INT,
								@STAKEHOLDER_ID VARCHAR(50),
								@TarrifAmount DECIMAL(18,2),
								@TypeOfHouse VARCHAR(50)
AS
	BEGIN
		  set nocount on;
		  UPDATE dbo.tarrifInfos
		  SET   STAKEHOLDER_ID			= @STAKEHOLDER_ID
			   ,TarrifAmount			= @TarrifAmount
			   ,TypeOfHouse				= @TypeOfHouse
			   ,DateOfTarrifTransaction = GetDate()
		  WHERE Tarrif_Id = @Tarrif_Id;

	END

GO
USE [master]
GO
ALTER DATABASE [SmartMeterData.sql] SET  READ_WRITE 
GO
