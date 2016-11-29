USE [master]
GO
/****** Object:  Database [ChangKeSpare]    Script Date: 2016/11/29 16:57:27 ******/
CREATE DATABASE [ChangKeSpare] ON  PRIMARY 
( NAME = N'ChangKeSpare', FILENAME = N'D:\work\SqlServerData\ChangKeSpare.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 8192KB )
 LOG ON 
( NAME = N'ChangKeSpare_log', FILENAME = N'D:\work\SqlServerData\ChangKeSpare_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 8192KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ChangKeSpare].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ChangKeSpare] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ChangKeSpare] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ChangKeSpare] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ChangKeSpare] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ChangKeSpare] SET ARITHABORT OFF 
GO
ALTER DATABASE [ChangKeSpare] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ChangKeSpare] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ChangKeSpare] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ChangKeSpare] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ChangKeSpare] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ChangKeSpare] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ChangKeSpare] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ChangKeSpare] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ChangKeSpare] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ChangKeSpare] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ChangKeSpare] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ChangKeSpare] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ChangKeSpare] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ChangKeSpare] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ChangKeSpare] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ChangKeSpare] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ChangKeSpare] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ChangKeSpare] SET RECOVERY FULL 
GO
ALTER DATABASE [ChangKeSpare] SET  MULTI_USER 
GO
ALTER DATABASE [ChangKeSpare] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ChangKeSpare] SET DB_CHAINING OFF 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ChangKeSpare', N'ON'
GO
USE [ChangKeSpare]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [ChangKeSpare]
GO
/****** Object:  Table [dbo].[TA_BILLTYPE]    Script Date: 2016/11/29 16:57:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TA_BILLTYPE](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[BillType] [int] NOT NULL,
	[TypeName] [nvarchar](50) NOT NULL,
	[TypeDesc] [nvarchar](50) NOT NULL,
	[State] [int] NOT NULL,
	[Prefix] [nvarchar](50) NOT NULL,
	[BillNumRule] [nvarchar](500) NOT NULL,
	[LastNumber] [int] NOT NULL,
	[LastBillNum] [nvarchar](50) NULL,
	[LastBillTime] [datetime] NOT NULL,
	[PrintTemplateFileName] [nvarchar](500) NULL,
	[ImportTemplateFileName] [nvarchar](500) NULL,
 CONSTRAINT [PK_TS_BILLTYPE] PRIMARY KEY CLUSTERED 
(
	[BillType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TA_CONFIG]    Script Date: 2016/11/29 16:57:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TA_CONFIG](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[ParamName] [nvarchar](50) NOT NULL,
	[ParamValue] [nvarchar](50) NOT NULL,
	[State] [int] NOT NULL,
	[Remark] [nvarchar](500) NULL,
 CONSTRAINT [PK_SYS_CONFIG] PRIMARY KEY CLUSTERED 
(
	[ParamName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TA_DEPT]    Script Date: 2016/11/29 16:57:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TA_DEPT](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[DeptCode] [nvarchar](50) NOT NULL,
	[DeptName] [nvarchar](50) NULL,
	[State] [int] NOT NULL,
	[Remark] [nvarchar](500) NULL,
 CONSTRAINT [PK_TA_DEPT] PRIMARY KEY CLUSTERED 
(
	[DeptCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TA_EQUIPMENT]    Script Date: 2016/11/29 16:57:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TA_EQUIPMENT](
	[UID] [bigint] IDENTITY(1,1) NOT NULL,
	[EqptCode] [nvarchar](50) NOT NULL,
	[EqptName] [nvarchar](50) NOT NULL,
	[EqptType] [nvarchar](50) NOT NULL,
	[EqptModel] [nvarchar](50) NULL,
	[EqptLocation] [nvarchar](50) NULL,
	[DeptCode] [nvarchar](50) NULL,
	[EqptManager] [nvarchar](50) NULL,
	[State] [int] NOT NULL,
	[Remark] [nvarchar](500) NULL,
 CONSTRAINT [PK_TS_RFID] PRIMARY KEY CLUSTERED 
(
	[EqptCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TA_PART]    Script Date: 2016/11/29 16:57:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TA_PART](
	[UID] [bigint] IDENTITY(1,1) NOT NULL,
	[PartCode] [nvarchar](50) NOT NULL,
	[ErpPartCode] [nvarchar](50) NULL,
	[PartDesc1] [nvarchar](max) NOT NULL,
	[PartDesc2] [nvarchar](max) NOT NULL,
	[Unit] [nvarchar](50) NOT NULL,
	[BM] [nvarchar](50) NOT NULL,
	[PartType] [int] NOT NULL,
	[MaxQty] [money] NOT NULL,
	[MinQty] [money] NOT NULL,
	[SafeQty] [money] NOT NULL,
	[IdleDays] [int] NOT NULL,
	[SplyPackQty] [money] NOT NULL,
	[ValidityDays] [int] NOT NULL,
	[State] [int] NOT NULL,
	[Remark] [nvarchar](500) NULL,
	[Picture] [image] NULL,
 CONSTRAINT [PK_TA_PART] PRIMARY KEY CLUSTERED 
(
	[PartCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TA_PROJECT]    Script Date: 2016/11/29 16:57:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TA_PROJECT](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[ProjectCode] [nvarchar](50) NOT NULL,
	[ProjectName] [nvarchar](50) NULL,
	[State] [int] NOT NULL,
	[Remark] [nvarchar](500) NULL,
 CONSTRAINT [PK_TA_PROJECT] PRIMARY KEY CLUSTERED 
(
	[ProjectCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TA_STORE_GROUP]    Script Date: 2016/11/29 16:57:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TA_STORE_GROUP](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[GroupCode] [nvarchar](50) NOT NULL,
	[GroupName] [nvarchar](50) NOT NULL,
	[GroupType] [nvarchar](50) NOT NULL,
	[WhseCode] [nvarchar](50) NOT NULL,
	[AreaCode] [nvarchar](50) NOT NULL,
	[State] [int] NOT NULL,
	[Remark] [nvarchar](500) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TA_STORE_LOCATION]    Script Date: 2016/11/29 16:57:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TA_STORE_LOCATION](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[LocCode] [nvarchar](50) NOT NULL,
	[WhseCode] [nvarchar](50) NOT NULL,
	[GroupCode] [nvarchar](50) NULL,
	[LocType] [nvarchar](50) NULL,
	[State] [int] NOT NULL,
	[Remark] [nvarchar](500) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TA_STORE_WHSE]    Script Date: 2016/11/29 16:57:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TA_STORE_WHSE](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[WhseCode] [nvarchar](50) NOT NULL,
	[WhseName] [nvarchar](50) NOT NULL,
	[WhseAddress] [nvarchar](200) NOT NULL,
	[WhseType] [nvarchar](50) NOT NULL,
	[State] [int] NOT NULL,
	[Remark] [nvarchar](500) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TA_SUB_BILLTYPE]    Script Date: 2016/11/29 16:57:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TA_SUB_BILLTYPE](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[SubBillType] [int] NOT NULL,
	[BillType] [int] NOT NULL,
	[TypeName] [nvarchar](50) NOT NULL,
	[TypeDesc] [nvarchar](50) NOT NULL,
	[State] [int] NOT NULL,
 CONSTRAINT [PK_TA_SUB_BILLTYPE] PRIMARY KEY CLUSTERED 
(
	[SubBillType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TA_SUPERLIER]    Script Date: 2016/11/29 16:57:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TA_SUPERLIER](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[SplyId] [nvarchar](50) NOT NULL,
	[SplyName] [nvarchar](50) NOT NULL,
	[ErpCode] [nvarchar](50) NULL,
	[Address] [nvarchar](120) NULL,
	[ZipCode] [nvarchar](50) NULL,
	[Contacter] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Fax] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[State] [int] NOT NULL,
	[Remark] [nvarchar](500) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TA_UNIT]    Script Date: 2016/11/29 16:57:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TA_UNIT](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[Unit] [nvarchar](50) NOT NULL,
	[Remak] [nvarchar](200) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TA_WORKLINE]    Script Date: 2016/11/29 16:57:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TA_WORKLINE](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[WorklineCode] [nvarchar](50) NOT NULL,
	[WokrlineName] [nvarchar](50) NOT NULL,
	[State] [int] NOT NULL,
	[Remark] [nvarchar](200) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TB_ASK]    Script Date: 2016/11/29 16:57:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_ASK](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[BillNum] [nvarchar](50) NOT NULL,
	[PartCode] [nvarchar](50) NOT NULL,
	[Qty] [money] NOT NULL,
	[DeptCode] [nvarchar](50) NULL,
	[ProjectCode] [nvarchar](50) NULL,
	[WorklineCode] [nvarchar](50) NULL,
	[EqptCode] [nvarchar](50) NULL,
	[AskUser] [nvarchar](50) NOT NULL,
	[AskTime] [datetime] NOT NULL,
	[ConfirmUser] [nvarchar](50) NULL,
	[ConfirmTime] [datetime] NULL,
	[State] [int] NOT NULL,
	[Remark] [nvarchar](200) NULL,
 CONSTRAINT [PK_TB_ASK] PRIMARY KEY CLUSTERED 
(
	[UID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TB_BILL]    Script Date: 2016/11/29 16:57:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_BILL](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[BillNum] [nvarchar](50) NOT NULL,
	[SourceBillNum] [nvarchar](50) NULL,
	[BillType] [int] NOT NULL,
	[SubBillType] [int] NOT NULL,
	[BillTime] [datetime] NOT NULL,
	[StartTime] [nvarchar](50) NULL,
	[FinishTime] [nvarchar](50) NULL,
	[OperName] [nvarchar](50) NOT NULL,
	[SplyId] [nvarchar](50) NULL,
	[State] [int] NOT NULL,
	[Remark] [nvarchar](max) NULL,
 CONSTRAINT [PK_TB_BILL] PRIMARY KEY CLUSTERED 
(
	[BillNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TB_IN]    Script Date: 2016/11/29 16:57:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_IN](
	[UID] [int] NOT NULL,
	[BillNum] [nvarchar](50) NOT NULL,
	[PoBillNum] [nvarchar](50) NOT NULL,
	[PoLineNum] [int] NOT NULL,
	[PartCode] [nvarchar](50) NOT NULL,
	[Batch] [nvarchar](20) NOT NULL,
	[ToLocCode] [nvarchar](50) NOT NULL,
	[Qty] [money] NOT NULL,
	[UnitPrice] [money] NOT NULL,
	[ProduceDate] [datetime] NOT NULL,
	[State] [int] NOT NULL,
	[Remark] [nvarchar](200) NULL,
 CONSTRAINT [PK_TB_IN] PRIMARY KEY CLUSTERED 
(
	[UID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TB_INVENTORY_DETAIL]    Script Date: 2016/11/29 16:57:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_INVENTORY_DETAIL](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[BillNum] [nvarchar](50) NOT NULL,
	[CheckLocCode] [nvarchar](50) NOT NULL,
	[PartCode] [nvarchar](50) NOT NULL,
	[Batch] [nvarchar](50) NOT NULL,
	[BookQty] [money] NOT NULL,
	[CheckQty] [money] NOT NULL,
	[CheckTime] [nvarchar](50) NOT NULL,
	[OperName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TB_CHECK_DETAIL] PRIMARY KEY CLUSTERED 
(
	[UID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TB_INVENTORY_LOC]    Script Date: 2016/11/29 16:57:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_INVENTORY_LOC](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[BillNum] [nvarchar](50) NOT NULL,
	[LocCode] [nvarchar](50) NOT NULL,
	[OperName] [nvarchar](50) NOT NULL,
	[BillTime] [datetime] NOT NULL,
	[CheckBeginTime] [nvarchar](50) NULL,
	[CheckEndTime] [nvarchar](50) NULL,
	[State] [int] NOT NULL,
	[Remark] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_TB_CHECK] PRIMARY KEY CLUSTERED 
(
	[BillNum] ASC,
	[LocCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TB_OTHER_IN]    Script Date: 2016/11/29 16:57:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_OTHER_IN](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[BillNum] [nvarchar](50) NOT NULL,
	[PartCode] [nvarchar](50) NOT NULL,
	[Batch] [nvarchar](20) NOT NULL,
	[ToLocCode] [nvarchar](50) NOT NULL,
	[Qty] [money] NOT NULL,
	[UnitPrice] [money] NULL,
	[Remark] [nvarchar](200) NULL,
	[ProduceDate] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TB_OTHER_OUT]    Script Date: 2016/11/29 16:57:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_OTHER_OUT](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[BillNum] [nvarchar](50) NOT NULL,
	[PartCode] [nvarchar](50) NOT NULL,
	[Batch] [nvarchar](20) NOT NULL,
	[FromLocCode] [nvarchar](50) NOT NULL,
	[Qty] [money] NOT NULL,
	[UnitPrice] [money] NULL,
	[Remark] [nvarchar](200) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TB_OUT]    Script Date: 2016/11/29 16:57:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_OUT](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[BillNum] [nvarchar](50) NOT NULL,
	[PartCode] [nvarchar](50) NOT NULL,
	[Batch] [nvarchar](50) NOT NULL,
	[FromLocCode] [nvarchar](50) NOT NULL,
	[Qty] [money] NOT NULL,
	[UnitPrice] [money] NOT NULL,
	[OutType] [int] NOT NULL,
	[OutUser] [nvarchar](50) NOT NULL,
	[OutTime] [datetime] NOT NULL,
	[DeptCode] [nvarchar](50) NULL,
	[ProjectCode] [nvarchar](50) NULL,
	[WorklineCode] [nvarchar](50) NULL,
	[EqptCode] [nvarchar](50) NULL,
	[State] [int] NOT NULL,
	[Remark] [nvarchar](200) NULL,
 CONSTRAINT [PK_TB_OUT] PRIMARY KEY CLUSTERED 
(
	[UID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TB_PO]    Script Date: 2016/11/29 16:57:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_PO](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[BillNum] [nvarchar](50) NOT NULL,
	[LineNum] [int] NOT NULL,
	[PartCode] [nvarchar](50) NOT NULL,
	[BillQty] [money] NOT NULL,
	[OpenQty] [money] NOT NULL,
	[ClosedQty] [money] NOT NULL,
	[Unit] [nvarchar](50) NOT NULL,
	[Price] [money] NOT NULL,
	[State] [int] NOT NULL,
	[Remark] [nvarchar](200) NULL,
 CONSTRAINT [PK_TB_PO] PRIMARY KEY CLUSTERED 
(
	[BillNum] ASC,
	[LineNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TB_RETURN]    Script Date: 2016/11/29 16:57:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_RETURN](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[BillNum] [nvarchar](50) NOT NULL,
	[PartCode] [nvarchar](50) NOT NULL,
	[Batch] [nvarchar](20) NOT NULL,
	[ToLocCode] [nvarchar](50) NOT NULL,
	[Qty] [money] NOT NULL,
	[ReturnType] [int] NOT NULL,
	[ReturnUser] [nvarchar](50) NOT NULL,
	[ReturnTime] [datetime] NOT NULL,
	[DeptCode] [nvarchar](50) NULL,
	[ProjectCode] [nvarchar](50) NULL,
	[WorklineCode] [nvarchar](50) NULL,
	[EqptCode] [nvarchar](50) NULL,
	[State] [int] NOT NULL,
	[Remark] [nvarchar](200) NULL,
 CONSTRAINT [PK_TB_PRODUCT_RETURN] PRIMARY KEY CLUSTERED 
(
	[UID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TB_STOCK_MOVE]    Script Date: 2016/11/29 16:57:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_STOCK_MOVE](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[BillNum] [nvarchar](50) NOT NULL,
	[PartCode] [nvarchar](50) NOT NULL,
	[Batch] [nvarchar](20) NOT NULL,
	[FromLocCode] [nvarchar](50) NOT NULL,
	[ToLocCode] [nvarchar](50) NOT NULL,
	[Qty] [money] NOT NULL,
	[Remark] [nvarchar](200) NULL,
 CONSTRAINT [PK_TB_STOCK_MOVE_1] PRIMARY KEY CLUSTERED 
(
	[UID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TL_BASEDATA]    Script Date: 2016/11/29 16:57:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TL_BASEDATA](
	[UID] [bigint] IDENTITY(1,1) NOT NULL,
	[OperName] [nvarchar](80) NOT NULL,
	[LogTime] [datetime] NOT NULL,
	[LogType] [varchar](50) NOT NULL,
	[DataType] [varchar](50) NOT NULL,
	[OldValue] [nvarchar](4000) NOT NULL,
	[NewValue] [nvarchar](4000) NOT NULL,
	[Remark] [nvarchar](500) NULL,
 CONSTRAINT [PK_TL_BASEDATA] PRIMARY KEY CLUSTERED 
(
	[UID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TL_BILL]    Script Date: 2016/11/29 16:57:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TL_BILL](
	[UID] [bigint] IDENTITY(1,1) NOT NULL,
	[OperName] [nvarchar](80) NOT NULL,
	[LogTime] [datetime] NOT NULL,
	[LogType] [nvarchar](50) NOT NULL,
	[BillNum] [nvarchar](50) NOT NULL,
	[BillType] [int] NOT NULL,
	[SubBillType] [int] NULL,
	[Message] [nvarchar](max) NULL,
 CONSTRAINT [PK_TL_BILL] PRIMARY KEY CLUSTERED 
(
	[UID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TL_INTERFACE]    Script Date: 2016/11/29 16:57:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TL_INTERFACE](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[InterfaceType] [nvarchar](50) NOT NULL,
	[InterfaceString] [nvarchar](max) NOT NULL,
	[State] [int] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[ProcessTime] [datetime] NOT NULL,
	[BillNum] [varchar](50) NOT NULL,
	[BillType] [varchar](50) NOT NULL,
	[Remark] [nvarchar](500) NULL,
	[pQty] [int] NULL,
	[p01] [varchar](50) NULL,
	[p02] [varchar](50) NULL,
	[p03] [varchar](50) NULL,
	[p04] [varchar](50) NULL,
	[p05] [varchar](50) NULL,
	[p06] [varchar](50) NULL,
	[p07] [varchar](50) NULL,
	[p08] [varchar](50) NULL,
	[p09] [varchar](50) NULL,
	[p10] [varchar](50) NULL,
	[p11] [varchar](50) NULL,
	[p12] [varchar](50) NULL,
	[p13] [varchar](50) NULL,
	[p14] [varchar](50) NULL,
	[p15] [varchar](50) NULL,
	[p16] [varchar](50) NULL,
	[p17] [varchar](50) NULL,
	[p18] [varchar](50) NULL,
	[p19] [varchar](50) NULL,
	[p20] [varchar](50) NULL,
 CONSTRAINT [PK_TS_INTERFACE] PRIMARY KEY CLUSTERED 
(
	[UID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TL_NOTIFY]    Script Date: 2016/11/29 16:57:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TL_NOTIFY](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[NotifyType] [int] NOT NULL,
	[NotifyMessage] [nvarchar](max) NOT NULL,
	[BillNum] [nvarchar](50) NOT NULL,
	[CreateOperName] [nvarchar](50) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[CloseOperName] [nvarchar](50) NULL,
	[CloseTime] [datetime] NOT NULL,
	[State] [int] NOT NULL,
 CONSTRAINT [PK_TS_NOTIFY] PRIMARY KEY CLUSTERED 
(
	[UID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TL_OPER]    Script Date: 2016/11/29 16:57:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TL_OPER](
	[UID] [bigint] IDENTITY(1,1) NOT NULL,
	[OperCode] [nvarchar](80) NOT NULL,
	[OperName] [nvarchar](50) NOT NULL,
	[LogTime] [datetime] NOT NULL,
	[LogType] [varchar](50) NOT NULL,
	[LogSite] [nvarchar](200) NOT NULL,
	[Message] [nvarchar](max) NULL,
 CONSTRAINT [PK_TL_LOG] PRIMARY KEY CLUSTERED 
(
	[UID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TL_TRANSACTION]    Script Date: 2016/11/29 16:57:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TL_TRANSACTION](
	[UID] [bigint] IDENTITY(1,1) NOT NULL,
	[OperName] [nvarchar](80) NOT NULL,
	[LogTime] [datetime] NOT NULL,
	[BillNum] [nvarchar](50) NOT NULL,
	[BillType] [int] NOT NULL,
	[SubBillType] [int] NOT NULL,
	[PartCode] [nvarchar](50) NOT NULL,
	[Batch] [nvarchar](50) NOT NULL,
	[Qty] [money] NOT NULL,
	[UnitPrice] [money] NOT NULL,
	[LocCode] [nvarchar](50) NOT NULL,
	[Remark] [nvarchar](500) NULL,
 CONSTRAINT [PK_TL_STOCKMOVE] PRIMARY KEY CLUSTERED 
(
	[UID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TS_STOCK_DETAIL]    Script Date: 2016/11/29 16:57:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TS_STOCK_DETAIL](
	[UID] [bigint] IDENTITY(1,1) NOT NULL,
	[LocCode] [nvarchar](50) NOT NULL,
	[PartCode] [nvarchar](50) NOT NULL,
	[Batch] [nvarchar](50) NOT NULL,
	[State] [int] NOT NULL,
	[Qty] [money] NOT NULL,
	[UnitPrice] [money] NOT NULL,
	[ProduceDate] [datetime] NOT NULL,
	[OverdueDate] [datetime] NOT NULL,
	[ReceiveDate] [datetime] NOT NULL,
	[UpdateQty] [money] NOT NULL,
	[UpdateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_TS_STOCK_DETAIL] PRIMARY KEY CLUSTERED 
(
	[LocCode] ASC,
	[PartCode] ASC,
	[Batch] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TT_EQPT_TYPE]    Script Date: 2016/11/29 16:57:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TT_EQPT_TYPE](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[EqptType] [nvarchar](50) NOT NULL,
	[Remark] [nvarchar](500) NULL,
 CONSTRAINT [PK_TT_EQPT_TYPE] PRIMARY KEY CLUSTERED 
(
	[EqptType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TT_GROUP_TYPE]    Script Date: 2016/11/29 16:57:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TT_GROUP_TYPE](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[GroupType] [nvarchar](50) NOT NULL,
	[Remark] [nvarchar](500) NULL,
 CONSTRAINT [PK_TT_GROUP_TYPE] PRIMARY KEY CLUSTERED 
(
	[GroupType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TT_LOC_TYPE]    Script Date: 2016/11/29 16:57:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TT_LOC_TYPE](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[LocType] [nvarchar](50) NOT NULL,
	[Remark] [nvarchar](500) NULL,
 CONSTRAINT [PK_TT_LOC_TYPE] PRIMARY KEY CLUSTERED 
(
	[LocType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TT_PART_TYPE]    Script Date: 2016/11/29 16:57:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TT_PART_TYPE](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[PartType] [nvarchar](50) NOT NULL,
	[Remark] [nvarchar](500) NULL,
 CONSTRAINT [PK_TT_PART_TYPE] PRIMARY KEY CLUSTERED 
(
	[PartType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[VS_IDLE_STOCK_DETAIL]    Script Date: 2016/11/29 16:57:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VS_IDLE_STOCK_DETAIL]
AS
SELECT  dbo.TS_STOCK_DETAIL.LocCode, dbo.TS_STOCK_DETAIL.PartCode, dbo.TS_STOCK_DETAIL.Batch, 
                   dbo.TS_STOCK_DETAIL.Qty, dbo.TS_STOCK_DETAIL.UnitPrice, dbo.TA_PART.PartDesc1, dbo.TA_PART.PartDesc2, 
                   dbo.TA_PART.Unit, dbo.TA_PART.BM, dbo.TA_PART.PartType, dbo.TA_PART.IdleDays, 
                   dbo.TS_STOCK_DETAIL.ReceiveDate, dbo.TS_STOCK_DETAIL.ProduceDate
FROM      dbo.TS_STOCK_DETAIL LEFT OUTER JOIN
                   dbo.TA_PART ON dbo.TS_STOCK_DETAIL.PartCode = dbo.TA_PART.PartCode

GO
/****** Object:  View [dbo].[VS_OVERDUE_STOCK]    Script Date: 2016/11/29 16:57:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VS_OVERDUE_STOCK]
AS
SELECT  dbo.TS_STOCK_DETAIL.PartCode, SUM(dbo.TS_STOCK_DETAIL.Qty) AS TotalQty, dbo.TA_PART.PartDesc1, 
                   dbo.TA_PART.PartDesc2, dbo.TA_PART.Unit, dbo.TA_PART.BM, dbo.TA_PART.PartType, dbo.TA_PART.ValidityDays, 
                   dbo.TS_STOCK_DETAIL.ReceiveDate
FROM      dbo.TS_STOCK_DETAIL LEFT OUTER JOIN
                   dbo.TA_PART ON dbo.TS_STOCK_DETAIL.PartCode = dbo.TA_PART.PartCode
GROUP BY dbo.TS_STOCK_DETAIL.PartCode, dbo.TA_PART.PartDesc1, dbo.TA_PART.PartDesc2, dbo.TA_PART.Unit, 
                   dbo.TA_PART.BM, dbo.TA_PART.PartType, dbo.TA_PART.ValidityDays, dbo.TS_STOCK_DETAIL.ReceiveDate

GO
/****** Object:  View [dbo].[VS_STOCK]    Script Date: 2016/11/29 16:57:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VS_STOCK]
AS
SELECT  dbo.TS_STOCK_DETAIL.LocCode, dbo.TS_STOCK_DETAIL.PartCode, dbo.TS_STOCK_DETAIL.Qty, 
                   dbo.TS_STOCK_DETAIL.UnitPrice, SUM(dbo.TS_STOCK_DETAIL.Qty * dbo.TS_STOCK_DETAIL.UnitPrice) AS Amount, 
                   dbo.TA_PART.PartDesc1, dbo.TA_PART.PartDesc2, dbo.TA_PART.Unit, dbo.TA_PART.BM, dbo.TA_PART.PartType, 
                   dbo.TA_PART.MaxQty, dbo.TA_PART.MinQty, dbo.TA_PART.SafeQty
FROM      dbo.TS_STOCK_DETAIL LEFT OUTER JOIN
                   dbo.TA_PART ON dbo.TS_STOCK_DETAIL.PartCode = dbo.TA_PART.PartCode
GROUP BY dbo.TS_STOCK_DETAIL.LocCode, dbo.TS_STOCK_DETAIL.PartCode, dbo.TS_STOCK_DETAIL.Qty, 
                   dbo.TS_STOCK_DETAIL.UnitPrice, dbo.TA_PART.PartDesc1, dbo.TA_PART.PartDesc2, dbo.TA_PART.Unit, 
                   dbo.TA_PART.BM, dbo.TA_PART.PartType, dbo.TA_PART.MaxQty, dbo.TA_PART.MinQty, dbo.TA_PART.SafeQty

GO
/****** Object:  View [dbo].[VS_STOCK_AGE]    Script Date: 2016/11/29 16:57:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VS_STOCK_AGE]
AS
SELECT  dbo.TS_STOCK_DETAIL.LocCode, dbo.TS_STOCK_DETAIL.PartCode, dbo.TS_STOCK_DETAIL.Batch, 
                   dbo.TS_STOCK_DETAIL.Qty, dbo.TS_STOCK_DETAIL.UnitPrice, dbo.TS_STOCK_DETAIL.ProduceDate, 
                   dbo.TS_STOCK_DETAIL.OverdueDate, dbo.TS_STOCK_DETAIL.ReceiveDate, dbo.TA_PART.PartDesc1, 
                   dbo.TA_PART.PartDesc2, dbo.TA_PART.Unit, dbo.TA_PART.BM, dbo.TA_PART.PartType
FROM      dbo.TS_STOCK_DETAIL LEFT OUTER JOIN
                   dbo.TA_PART ON dbo.TS_STOCK_DETAIL.PartCode = dbo.TA_PART.PartCode

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [PK10_1]    Script Date: 2016/11/29 16:57:28 ******/
ALTER TABLE [dbo].[TA_STORE_GROUP] ADD  CONSTRAINT [PK10_1] PRIMARY KEY NONCLUSTERED 
(
	[GroupCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [PK10]    Script Date: 2016/11/29 16:57:28 ******/
ALTER TABLE [dbo].[TA_STORE_LOCATION] ADD  CONSTRAINT [PK10] PRIMARY KEY NONCLUSTERED 
(
	[LocCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [PK7]    Script Date: 2016/11/29 16:57:28 ******/
ALTER TABLE [dbo].[TA_STORE_WHSE] ADD  CONSTRAINT [PK7] PRIMARY KEY NONCLUSTERED 
(
	[WhseCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [PK23]    Script Date: 2016/11/29 16:57:28 ******/
ALTER TABLE [dbo].[TA_SUPERLIER] ADD  CONSTRAINT [PK23] PRIMARY KEY NONCLUSTERED 
(
	[SplyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [PK17]    Script Date: 2016/11/29 16:57:28 ******/
ALTER TABLE [dbo].[TA_UNIT] ADD  CONSTRAINT [PK17] PRIMARY KEY NONCLUSTERED 
(
	[Unit] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [PK30_1]    Script Date: 2016/11/29 16:57:28 ******/
ALTER TABLE [dbo].[TA_WORKLINE] ADD  CONSTRAINT [PK30_1] PRIMARY KEY NONCLUSTERED 
(
	[WorklineCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK73_4]    Script Date: 2016/11/29 16:57:28 ******/
ALTER TABLE [dbo].[TB_OTHER_IN] ADD  CONSTRAINT [PK73_4] PRIMARY KEY NONCLUSTERED 
(
	[UID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TA_BILLTYPE] ADD  CONSTRAINT [DF_Table_1_nState_1]  DEFAULT ((0)) FOR [State]
GO
ALTER TABLE [dbo].[TA_BILLTYPE] ADD  CONSTRAINT [DF_Table_1_cBillNumRule]  DEFAULT (N'P|D:l|N:4') FOR [BillNumRule]
GO
ALTER TABLE [dbo].[TA_BILLTYPE] ADD  CONSTRAINT [DF_Table_1_nLastNumber]  DEFAULT ((1)) FOR [LastNumber]
GO
ALTER TABLE [dbo].[TA_BILLTYPE] ADD  CONSTRAINT [DF_TA_BILLTYPE_LastBillNum]  DEFAULT ('') FOR [LastBillNum]
GO
ALTER TABLE [dbo].[TA_BILLTYPE] ADD  CONSTRAINT [DF_Table_1_tLastBillTime]  DEFAULT (getdate()) FOR [LastBillTime]
GO
ALTER TABLE [dbo].[TA_BILLTYPE] ADD  CONSTRAINT [DF_TA_BILLTYPE_TemplateFileName]  DEFAULT ('') FOR [PrintTemplateFileName]
GO
ALTER TABLE [dbo].[TA_CONFIG] ADD  CONSTRAINT [DF_SYS_CONFIG_State]  DEFAULT ((1)) FOR [State]
GO
ALTER TABLE [dbo].[TA_DEPT] ADD  CONSTRAINT [DF_TA_DEPT_State]  DEFAULT ((1)) FOR [State]
GO
ALTER TABLE [dbo].[TA_EQUIPMENT] ADD  CONSTRAINT [DF_TS_EQUIPMENT_LocCode]  DEFAULT ('') FOR [EqptLocation]
GO
ALTER TABLE [dbo].[TA_PART] ADD  CONSTRAINT [DF_TA_PART_ErpPartCode]  DEFAULT ('') FOR [ErpPartCode]
GO
ALTER TABLE [dbo].[TA_PART] ADD  CONSTRAINT [DF_TA_PART_PartName2]  DEFAULT ('''') FOR [PartDesc2]
GO
ALTER TABLE [dbo].[TA_PART] ADD  CONSTRAINT [DF_TA_PART_Unit]  DEFAULT (N'EA') FOR [Unit]
GO
ALTER TABLE [dbo].[TA_PART] ADD  CONSTRAINT [DF_TA_PART_PartType]  DEFAULT ('') FOR [PartType]
GO
ALTER TABLE [dbo].[TA_PART] ADD  CONSTRAINT [DF_TA_PART_MaxQty]  DEFAULT ((0)) FOR [MaxQty]
GO
ALTER TABLE [dbo].[TA_PART] ADD  CONSTRAINT [DF_TA_PART_MinQty]  DEFAULT ((0)) FOR [MinQty]
GO
ALTER TABLE [dbo].[TA_PART] ADD  CONSTRAINT [DF_TA_PART_SafeQty]  DEFAULT ((0)) FOR [SafeQty]
GO
ALTER TABLE [dbo].[TA_PART] ADD  CONSTRAINT [DF_TA_PART_IdleDays]  DEFAULT ((0)) FOR [IdleDays]
GO
ALTER TABLE [dbo].[TA_PART] ADD  CONSTRAINT [DF_TA_PART_SupplierPackQty]  DEFAULT ((1)) FOR [SplyPackQty]
GO
ALTER TABLE [dbo].[TA_PART] ADD  CONSTRAINT [DF_TA_PART_ValidityDays]  DEFAULT ((365)) FOR [ValidityDays]
GO
ALTER TABLE [dbo].[TA_PART] ADD  CONSTRAINT [DF_TA_PART_State]  DEFAULT ((1)) FOR [State]
GO
ALTER TABLE [dbo].[TA_PROJECT] ADD  CONSTRAINT [DF_TA_PROJECT_State]  DEFAULT ((1)) FOR [State]
GO
ALTER TABLE [dbo].[TA_STORE_GROUP] ADD  CONSTRAINT [DF_TA_STORE_GROUP_State]  DEFAULT ((1)) FOR [State]
GO
ALTER TABLE [dbo].[TA_STORE_LOCATION] ADD  CONSTRAINT [DF_TA_STORE_LOCATION_GroupCode]  DEFAULT ('') FOR [GroupCode]
GO
ALTER TABLE [dbo].[TA_STORE_LOCATION] ADD  CONSTRAINT [DF_TA_STORE_LOCATION_LocType]  DEFAULT ('') FOR [LocType]
GO
ALTER TABLE [dbo].[TA_STORE_LOCATION] ADD  CONSTRAINT [DF_TA_STORE_LOCATION_nState]  DEFAULT ((1)) FOR [State]
GO
ALTER TABLE [dbo].[TA_STORE_LOCATION] ADD  CONSTRAINT [DF_TA_STORE_LOCATION_Remark]  DEFAULT ('') FOR [Remark]
GO
ALTER TABLE [dbo].[TA_STORE_WHSE] ADD  CONSTRAINT [DF__t_StoreIn__state__58D1301D]  DEFAULT ((1)) FOR [State]
GO
ALTER TABLE [dbo].[TA_SUB_BILLTYPE] ADD  CONSTRAINT [DF_TA_SUB_BILLTYPE_State]  DEFAULT ((1)) FOR [State]
GO
ALTER TABLE [dbo].[TA_SUPERLIER] ADD  CONSTRAINT [DF__t_Supplie__state__56E8E7AB]  DEFAULT ((0)) FOR [State]
GO
ALTER TABLE [dbo].[TA_WORKLINE] ADD  CONSTRAINT [DF_TA_WORKLINE_State]  DEFAULT ((1)) FOR [State]
GO
ALTER TABLE [dbo].[TB_ASK] ADD  CONSTRAINT [DF__SC_Materia__nQty__6AEFE058]  DEFAULT ((0)) FOR [Qty]
GO
ALTER TABLE [dbo].[TB_ASK] ADD  CONSTRAINT [DF_TB_MATERIAL_ASK_State]  DEFAULT ((0)) FOR [State]
GO
ALTER TABLE [dbo].[TB_BILL] ADD  CONSTRAINT [DF_TB_BILL_SubBillType]  DEFAULT ((0)) FOR [SubBillType]
GO
ALTER TABLE [dbo].[TB_BILL] ADD  CONSTRAINT [DF_Table_1_SendTime]  DEFAULT (getdate()) FOR [BillTime]
GO
ALTER TABLE [dbo].[TB_BILL] ADD  CONSTRAINT [DF_TB_BILL_State]  DEFAULT ((0)) FOR [State]
GO
ALTER TABLE [dbo].[TB_IN] ADD  CONSTRAINT [DF_TB_IN_PoLineNum]  DEFAULT ((0)) FOR [PoLineNum]
GO
ALTER TABLE [dbo].[TB_IN] ADD  CONSTRAINT [DF_TB_MATERIAL_RECEIVE_Batch]  DEFAULT ((0)) FOR [Batch]
GO
ALTER TABLE [dbo].[TB_IN] ADD  CONSTRAINT [DF_TB_MATERIAL_RECEIVE_Qty]  DEFAULT ((0)) FOR [Qty]
GO
ALTER TABLE [dbo].[TB_IN] ADD  CONSTRAINT [DF_TB_MATERIAL_RECEIVE_State]  DEFAULT ((0)) FOR [State]
GO
ALTER TABLE [dbo].[TB_INVENTORY_DETAIL] ADD  CONSTRAINT [DF_Table_1_dBookQty]  DEFAULT ((0)) FOR [BookQty]
GO
ALTER TABLE [dbo].[TB_INVENTORY_DETAIL] ADD  CONSTRAINT [DF_TB_CHECK_DETAIL_CheckQty]  DEFAULT ((0)) FOR [CheckQty]
GO
ALTER TABLE [dbo].[TB_INVENTORY_LOC] ADD  CONSTRAINT [DF_Table_1_nState]  DEFAULT ((0)) FOR [State]
GO
ALTER TABLE [dbo].[TB_OTHER_IN] ADD  CONSTRAINT [DF__KF_OtherI__cBatc__662B2B3B]  DEFAULT ((0)) FOR [Batch]
GO
ALTER TABLE [dbo].[TB_OTHER_IN] ADD  CONSTRAINT [DF__KF_OtherI__nActu__671F4F74]  DEFAULT ((0)) FOR [Qty]
GO
ALTER TABLE [dbo].[TB_OTHER_OUT] ADD  CONSTRAINT [DF_TB_OTHER_OUT_Batch]  DEFAULT ((0)) FOR [Batch]
GO
ALTER TABLE [dbo].[TB_OTHER_OUT] ADD  CONSTRAINT [DF_TB_OTHER_OUT_Qty]  DEFAULT ((0)) FOR [Qty]
GO
ALTER TABLE [dbo].[TB_OUT] ADD  CONSTRAINT [DF_TB_PICK_FACT_ActualQty]  DEFAULT ((0)) FOR [Qty]
GO
ALTER TABLE [dbo].[TB_OUT] ADD  CONSTRAINT [DF_TB_PICK_FACT_State]  DEFAULT ((0)) FOR [State]
GO
ALTER TABLE [dbo].[TB_PO] ADD  CONSTRAINT [DF_TF_PO_DETAIL_Line]  DEFAULT ((1)) FOR [LineNum]
GO
ALTER TABLE [dbo].[TB_PO] ADD  CONSTRAINT [DF__KF_Purchas__nQty__5BAD9CC8]  DEFAULT ((0)) FOR [BillQty]
GO
ALTER TABLE [dbo].[TB_PO] ADD  CONSTRAINT [DF__KF_Purcha__FActu__5CA1C101]  DEFAULT ((0)) FOR [OpenQty]
GO
ALTER TABLE [dbo].[TB_PO] ADD  CONSTRAINT [DF_TF_PO_D_dClosedQty]  DEFAULT ((0)) FOR [ClosedQty]
GO
ALTER TABLE [dbo].[TB_PO] ADD  CONSTRAINT [DF_TF_PO_DETAIL_PurchasePrice]  DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [dbo].[TB_PO] ADD  CONSTRAINT [DF_TF_PO_DETAIL_State]  DEFAULT ((0)) FOR [State]
GO
ALTER TABLE [dbo].[TB_RETURN] ADD  CONSTRAINT [DF_TB_PRODUCT_RETURN_Batch]  DEFAULT ((0)) FOR [Batch]
GO
ALTER TABLE [dbo].[TB_RETURN] ADD  CONSTRAINT [DF_TB_PRODUCT_RETURN_Qty]  DEFAULT ((0)) FOR [Qty]
GO
ALTER TABLE [dbo].[TB_RETURN] ADD  CONSTRAINT [DF_TB_PRODUCT_RETURN_State]  DEFAULT ((0)) FOR [State]
GO
ALTER TABLE [dbo].[TB_STOCK_MOVE] ADD  CONSTRAINT [DF_TB_STOCK_MOVE_Batch]  DEFAULT ((0)) FOR [Batch]
GO
ALTER TABLE [dbo].[TB_STOCK_MOVE] ADD  CONSTRAINT [DF_TB_STOCK_MOVE_Qty]  DEFAULT ((0)) FOR [Qty]
GO
ALTER TABLE [dbo].[TL_BASEDATA] ADD  CONSTRAINT [DF_TL_BASEDATA_LogTime]  DEFAULT (getdate()) FOR [LogTime]
GO
ALTER TABLE [dbo].[TL_BASEDATA] ADD  CONSTRAINT [DF_Table_1_LogSite]  DEFAULT ('') FOR [OldValue]
GO
ALTER TABLE [dbo].[TL_BASEDATA] ADD  CONSTRAINT [DF_TL_BASEDATA_NewValue]  DEFAULT ('') FOR [NewValue]
GO
ALTER TABLE [dbo].[TL_BILL] ADD  CONSTRAINT [DF_TL_BILL_LogTime]  DEFAULT (getdate()) FOR [LogTime]
GO
ALTER TABLE [dbo].[TL_BILL] ADD  CONSTRAINT [DF_Table_1_OldData]  DEFAULT ((0)) FOR [BillNum]
GO
ALTER TABLE [dbo].[TL_INTERFACE] ADD  CONSTRAINT [DF_TS_INTERFACE_State]  DEFAULT ((0)) FOR [State]
GO
ALTER TABLE [dbo].[TL_INTERFACE] ADD  CONSTRAINT [DF_TS_INTERFACE_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
ALTER TABLE [dbo].[TL_INTERFACE] ADD  CONSTRAINT [DF_TS_INTERFACE_ProcessTime]  DEFAULT ('1-1-1') FOR [ProcessTime]
GO
ALTER TABLE [dbo].[TL_NOTIFY] ADD  CONSTRAINT [DF_TS_NOTIFY_NotifyTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
ALTER TABLE [dbo].[TL_NOTIFY] ADD  CONSTRAINT [DF_TS_NOTIFY_CloseTime]  DEFAULT ('1-1-1') FOR [CloseTime]
GO
ALTER TABLE [dbo].[TL_NOTIFY] ADD  CONSTRAINT [DF_TS_NOTIFY_State]  DEFAULT ((0)) FOR [State]
GO
ALTER TABLE [dbo].[TL_OPER] ADD  CONSTRAINT [DF_TL_LOG_LogTime]  DEFAULT (getdate()) FOR [LogTime]
GO
ALTER TABLE [dbo].[TL_OPER] ADD  CONSTRAINT [DF_TL_LOG_LogSite]  DEFAULT ((0)) FOR [LogSite]
GO
ALTER TABLE [dbo].[TL_TRANSACTION] ADD  CONSTRAINT [DF_TL_STOCKMOVE_LogTime]  DEFAULT (getdate()) FOR [LogTime]
GO
ALTER TABLE [dbo].[TL_TRANSACTION] ADD  CONSTRAINT [DF_TL_TRANSACTION_SubBillType]  DEFAULT ((0)) FOR [SubBillType]
GO
ALTER TABLE [dbo].[TL_TRANSACTION] ADD  CONSTRAINT [DF_TL_STOCKMOVE_Qty]  DEFAULT ((0)) FOR [Qty]
GO
ALTER TABLE [dbo].[TS_STOCK_DETAIL] ADD  CONSTRAINT [DF_TS_STOCK_DETAIL_Batch]  DEFAULT (N'‘’‘’') FOR [Batch]
GO
ALTER TABLE [dbo].[TS_STOCK_DETAIL] ADD  CONSTRAINT [DF_TS_STOCK_DETAIL_State]  DEFAULT ((1)) FOR [State]
GO
ALTER TABLE [dbo].[TS_STOCK_DETAIL] ADD  CONSTRAINT [DF_TS_UNIQUE_STOCK_Qty]  DEFAULT ((1)) FOR [Qty]
GO
ALTER TABLE [dbo].[TS_STOCK_DETAIL] ADD  CONSTRAINT [DF_TS_STOCK_DETAIL_ProduceDate]  DEFAULT ('1-1-1') FOR [ProduceDate]
GO
ALTER TABLE [dbo].[TS_STOCK_DETAIL] ADD  CONSTRAINT [DF_TS_STOCK_DETAIL_OverdueDate]  DEFAULT ('1-1-1') FOR [OverdueDate]
GO
ALTER TABLE [dbo].[TS_STOCK_DETAIL] ADD  CONSTRAINT [DF_TS_STOCK_DETAIL_ReceiveDate]  DEFAULT (getdate()) FOR [ReceiveDate]
GO
ALTER TABLE [dbo].[TS_STOCK_DETAIL] ADD  CONSTRAINT [DF_TS_STOCK_DETAIL_UpdateQty]  DEFAULT ((0)) FOR [UpdateQty]
GO
ALTER TABLE [dbo].[TS_STOCK_DETAIL] ADD  CONSTRAINT [DF_TS_STOCK_DETAIL_UpdateTime]  DEFAULT (getdate()) FOR [UpdateTime]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单据类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_BILLTYPE', @level2type=N'COLUMN',@level2name=N'BillType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_BILLTYPE', @level2type=N'COLUMN',@level2name=N'TypeName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_BILLTYPE', @level2type=N'COLUMN',@level2name=N'TypeDesc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_BILLTYPE', @level2type=N'COLUMN',@level2name=N'State'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'前缀' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_BILLTYPE', @level2type=N'COLUMN',@level2name=N'Prefix'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号规则' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_BILLTYPE', @level2type=N'COLUMN',@level2name=N'BillNumRule'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最终序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_BILLTYPE', @level2type=N'COLUMN',@level2name=N'LastNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最终单据编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_BILLTYPE', @level2type=N'COLUMN',@level2name=N'LastBillNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最终单据时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_BILLTYPE', @level2type=N'COLUMN',@level2name=N'LastBillTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'打印模板文件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_BILLTYPE', @level2type=N'COLUMN',@level2name=N'PrintTemplateFileName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单据类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_BILLTYPE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'参数名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_CONFIG', @level2type=N'COLUMN',@level2name=N'ParamName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'参数值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_CONFIG', @level2type=N'COLUMN',@level2name=N'ParamValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_CONFIG', @level2type=N'COLUMN',@level2name=N'State'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_CONFIG', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统配置表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_CONFIG'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'零件号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_PART', @level2type=N'COLUMN',@level2name=N'PartCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ERP零件号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_PART', @level2type=N'COLUMN',@level2name=N'ErpPartCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'零件描述1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_PART', @level2type=N'COLUMN',@level2name=N'PartDesc1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'零件描述2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_PART', @level2type=N'COLUMN',@level2name=N'PartDesc2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_PART', @level2type=N'COLUMN',@level2name=N'Unit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采购件/制造件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_PART', @level2type=N'COLUMN',@level2name=N'BM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'零件类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_PART', @level2type=N'COLUMN',@level2name=N'PartType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最大库存' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_PART', @level2type=N'COLUMN',@level2name=N'MaxQty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最小库存' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_PART', @level2type=N'COLUMN',@level2name=N'MinQty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'安全库存' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_PART', @level2type=N'COLUMN',@level2name=N'SafeQty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'供应商包装数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_PART', @level2type=N'COLUMN',@level2name=N'SplyPackQty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'保质期（天）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_PART', @level2type=N'COLUMN',@level2name=N'ValidityDays'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态（0：失效 1:有效）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_PART', @level2type=N'COLUMN',@level2name=N'State'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_PART', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'零件表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_PART'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'库位组编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_STORE_GROUP', @level2type=N'COLUMN',@level2name=N'GroupCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'库位组名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_STORE_GROUP', @level2type=N'COLUMN',@level2name=N'GroupName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'库位组类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_STORE_GROUP', @level2type=N'COLUMN',@level2name=N'GroupType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'仓库编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_STORE_GROUP', @level2type=N'COLUMN',@level2name=N'WhseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'库区编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_STORE_GROUP', @level2type=N'COLUMN',@level2name=N'AreaCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_STORE_GROUP', @level2type=N'COLUMN',@level2name=N'State'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_STORE_GROUP', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'库位组表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_STORE_GROUP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'库位编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_STORE_LOCATION', @level2type=N'COLUMN',@level2name=N'LocCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'仓库编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_STORE_LOCATION', @level2type=N'COLUMN',@level2name=N'WhseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'库位组编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_STORE_LOCATION', @level2type=N'COLUMN',@level2name=N'GroupCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'库位类型(高位货架，地面库位)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_STORE_LOCATION', @level2type=N'COLUMN',@level2name=N'LocType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态(0:失效（包括冻结） 1:有效)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_STORE_LOCATION', @level2type=N'COLUMN',@level2name=N'State'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_STORE_LOCATION', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'库位表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_STORE_LOCATION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'仓库编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_STORE_WHSE', @level2type=N'COLUMN',@level2name=N'WhseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'仓库名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_STORE_WHSE', @level2type=N'COLUMN',@level2name=N'WhseName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'仓库地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_STORE_WHSE', @level2type=N'COLUMN',@level2name=N'WhseAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'仓库类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_STORE_WHSE', @level2type=N'COLUMN',@level2name=N'WhseType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_STORE_WHSE', @level2type=N'COLUMN',@level2name=N'State'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_STORE_WHSE', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'仓库表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_STORE_WHSE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单据类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_SUB_BILLTYPE', @level2type=N'COLUMN',@level2name=N'SubBillType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_SUB_BILLTYPE', @level2type=N'COLUMN',@level2name=N'TypeName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_SUB_BILLTYPE', @level2type=N'COLUMN',@level2name=N'TypeDesc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_SUB_BILLTYPE', @level2type=N'COLUMN',@level2name=N'State'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'供应商编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_SUPERLIER', @level2type=N'COLUMN',@level2name=N'SplyId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'供应商名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_SUPERLIER', @level2type=N'COLUMN',@level2name=N'SplyName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'供应商地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_SUPERLIER', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_SUPERLIER', @level2type=N'COLUMN',@level2name=N'Contacter'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_SUPERLIER', @level2type=N'COLUMN',@level2name=N'Phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'传真' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_SUPERLIER', @level2type=N'COLUMN',@level2name=N'Fax'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_SUPERLIER', @level2type=N'COLUMN',@level2name=N'State'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_SUPERLIER', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'供应商表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_SUPERLIER'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_UNIT', @level2type=N'COLUMN',@level2name=N'Unit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_UNIT', @level2type=N'COLUMN',@level2name=N'Remak'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'计量单位表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_UNIT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生产线编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_WORKLINE', @level2type=N'COLUMN',@level2name=N'WorklineCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生产线名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_WORKLINE', @level2type=N'COLUMN',@level2name=N'WokrlineName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_WORKLINE', @level2type=N'COLUMN',@level2name=N'State'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_WORKLINE', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生产线表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TA_WORKLINE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单据号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_ASK', @level2type=N'COLUMN',@level2name=N'BillNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物料号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_ASK', @level2type=N'COLUMN',@level2name=N'PartCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_ASK', @level2type=N'COLUMN',@level2name=N'Qty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_ASK', @level2type=N'COLUMN',@level2name=N'State'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_ASK', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'叫料单明细表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_ASK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单据编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_BILL', @level2type=N'COLUMN',@level2name=N'BillNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'源单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_BILL', @level2type=N'COLUMN',@level2name=N'SourceBillNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单据类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_BILL', @level2type=N'COLUMN',@level2name=N'BillType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_BILL', @level2type=N'COLUMN',@level2name=N'SubBillType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单据创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_BILL', @level2type=N'COLUMN',@level2name=N'BillTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'执行时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_BILL', @level2type=N'COLUMN',@level2name=N'StartTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'完成时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_BILL', @level2type=N'COLUMN',@level2name=N'FinishTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作员' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_BILL', @level2type=N'COLUMN',@level2name=N'OperName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态（0：新建 1：执行中 2：完成 -1：作废）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_BILL', @level2type=N'COLUMN',@level2name=N'State'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单据号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_IN', @level2type=N'COLUMN',@level2name=N'BillNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物料号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_IN', @level2type=N'COLUMN',@level2name=N'PartCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'批次' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_IN', @level2type=N'COLUMN',@level2name=N'Batch'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收货库位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_IN', @level2type=N'COLUMN',@level2name=N'ToLocCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_IN', @level2type=N'COLUMN',@level2name=N'Qty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生产日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_IN', @level2type=N'COLUMN',@level2name=N'ProduceDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_IN', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'原料入库明细表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_IN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单据号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_INVENTORY_DETAIL', @level2type=N'COLUMN',@level2name=N'BillNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'零件号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_INVENTORY_DETAIL', @level2type=N'COLUMN',@level2name=N'PartCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'批次' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_INVENTORY_DETAIL', @level2type=N'COLUMN',@level2name=N'Batch'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'账面数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_INVENTORY_DETAIL', @level2type=N'COLUMN',@level2name=N'BookQty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'盘点数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_INVENTORY_DETAIL', @level2type=N'COLUMN',@level2name=N'CheckQty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'盘点时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_INVENTORY_DETAIL', @level2type=N'COLUMN',@level2name=N'CheckTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单据号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_INVENTORY_LOC', @level2type=N'COLUMN',@level2name=N'BillNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_INVENTORY_LOC', @level2type=N'COLUMN',@level2name=N'CheckBeginTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'初盘结束时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_INVENTORY_LOC', @level2type=N'COLUMN',@level2name=N'CheckEndTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态 0:新建 1:已初盘 2:已重盘 3:已生成接口 -1:已取消' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_INVENTORY_LOC', @level2type=N'COLUMN',@level2name=N'State'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_INVENTORY_LOC', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单据号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_OTHER_IN', @level2type=N'COLUMN',@level2name=N'BillNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物料号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_OTHER_IN', @level2type=N'COLUMN',@level2name=N'PartCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'批次' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_OTHER_IN', @level2type=N'COLUMN',@level2name=N'Batch'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'库位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_OTHER_IN', @level2type=N'COLUMN',@level2name=N'ToLocCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_OTHER_IN', @level2type=N'COLUMN',@level2name=N'Qty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_OTHER_IN', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'其它出入库明细表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_OTHER_IN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单据号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_OTHER_OUT', @level2type=N'COLUMN',@level2name=N'BillNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物料号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_OTHER_OUT', @level2type=N'COLUMN',@level2name=N'PartCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'批次' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_OTHER_OUT', @level2type=N'COLUMN',@level2name=N'Batch'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'库位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_OTHER_OUT', @level2type=N'COLUMN',@level2name=N'FromLocCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_OTHER_OUT', @level2type=N'COLUMN',@level2name=N'Qty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_OTHER_OUT', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单据号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_OUT', @level2type=N'COLUMN',@level2name=N'BillNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'叫料库位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_OUT', @level2type=N'COLUMN',@level2name=N'FromLocCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实发数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_OUT', @level2type=N'COLUMN',@level2name=N'Qty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_OUT', @level2type=N'COLUMN',@level2name=N'State'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_OUT', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单据号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_PO', @level2type=N'COLUMN',@level2name=N'BillNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物料号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_PO', @level2type=N'COLUMN',@level2name=N'PartCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_PO', @level2type=N'COLUMN',@level2name=N'BillQty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'已收数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_PO', @level2type=N'COLUMN',@level2name=N'OpenQty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_PO', @level2type=N'COLUMN',@level2name=N'Unit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_PO', @level2type=N'COLUMN',@level2name=N'State'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_PO', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采购订单明细表 ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_PO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单据号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_RETURN', @level2type=N'COLUMN',@level2name=N'BillNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物料号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_RETURN', @level2type=N'COLUMN',@level2name=N'PartCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'批次' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_RETURN', @level2type=N'COLUMN',@level2name=N'Batch'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'库位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_RETURN', @level2type=N'COLUMN',@level2name=N'ToLocCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_RETURN', @level2type=N'COLUMN',@level2name=N'Qty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'器具号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_RETURN', @level2type=N'COLUMN',@level2name=N'EqptCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_RETURN', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单据号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_STOCK_MOVE', @level2type=N'COLUMN',@level2name=N'BillNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物料号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_STOCK_MOVE', @level2type=N'COLUMN',@level2name=N'PartCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'批次' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_STOCK_MOVE', @level2type=N'COLUMN',@level2name=N'Batch'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收货库位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_STOCK_MOVE', @level2type=N'COLUMN',@level2name=N'ToLocCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_STOCK_MOVE', @level2type=N'COLUMN',@level2name=N'Qty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_STOCK_MOVE', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TL_BASEDATA', @level2type=N'COLUMN',@level2name=N'OperName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日志时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TL_BASEDATA', @level2type=N'COLUMN',@level2name=N'LogTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日志级别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TL_BASEDATA', @level2type=N'COLUMN',@level2name=N'DataType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'????' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TL_BASEDATA', @level2type=N'COLUMN',@level2name=N'OldValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TL_BASEDATA', @level2type=N'COLUMN',@level2name=N'NewValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TL_BILL', @level2type=N'COLUMN',@level2name=N'OperName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日志时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TL_BILL', @level2type=N'COLUMN',@level2name=N'LogTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TL_BILL', @level2type=N'COLUMN',@level2name=N'LogType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'????' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TL_BILL', @level2type=N'COLUMN',@level2name=N'BillNum'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日志级别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TL_BILL', @level2type=N'COLUMN',@level2name=N'BillType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接口数据表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TL_INTERFACE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TL_OPER', @level2type=N'COLUMN',@level2name=N'OperCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日志时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TL_OPER', @level2type=N'COLUMN',@level2name=N'LogTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日志级别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TL_OPER', @level2type=N'COLUMN',@level2name=N'LogType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'????' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TL_OPER', @level2type=N'COLUMN',@level2name=N'LogSite'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TL_OPER', @level2type=N'COLUMN',@level2name=N'Message'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TL_TRANSACTION', @level2type=N'COLUMN',@level2name=N'OperName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日志时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TL_TRANSACTION', @level2type=N'COLUMN',@level2name=N'LogTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日志级别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TL_TRANSACTION', @level2type=N'COLUMN',@level2name=N'PartCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TL_TRANSACTION', @level2type=N'COLUMN',@level2name=N'LocCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'库位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_STOCK_DETAIL', @level2type=N'COLUMN',@level2name=N'LocCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'零件号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_STOCK_DETAIL', @level2type=N'COLUMN',@level2name=N'PartCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'批次' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_STOCK_DETAIL', @level2type=N'COLUMN',@level2name=N'Batch'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态（0：待检，1：合格，2：不合格，3：过期，4：待判定）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_STOCK_DETAIL', @level2type=N'COLUMN',@level2name=N'State'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生产时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_STOCK_DETAIL', @level2type=N'COLUMN',@level2name=N'ProduceDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'过期时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_STOCK_DETAIL', @level2type=N'COLUMN',@level2name=N'OverdueDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'库存明细表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TS_STOCK_DETAIL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
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
         Begin Table = "TS_STOCK_DETAIL"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 393
               Right = 240
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TA_PART"
            Begin Extent = 
               Top = 7
               Left = 288
               Bottom = 424
               Right = 475
            End
            DisplayFlags = 280
            TopColumn = 2
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VS_IDLE_STOCK_DETAIL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VS_IDLE_STOCK_DETAIL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
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
         Begin Table = "TS_STOCK_DETAIL"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 401
               Right = 240
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TA_PART"
            Begin Extent = 
               Top = 7
               Left = 288
               Bottom = 428
               Right = 475
            End
            DisplayFlags = 280
            TopColumn = 2
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 1416
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VS_OVERDUE_STOCK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VS_OVERDUE_STOCK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
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
         Begin Table = "TS_STOCK_DETAIL"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 378
               Right = 240
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TA_PART"
            Begin Extent = 
               Top = 7
               Left = 288
               Bottom = 376
               Right = 475
            End
            DisplayFlags = 280
            TopColumn = 4
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VS_STOCK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VS_STOCK'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
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
         Begin Table = "TS_STOCK_DETAIL"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 422
               Right = 240
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TA_PART"
            Begin Extent = 
               Top = 7
               Left = 288
               Bottom = 425
               Right = 475
            End
            DisplayFlags = 280
            TopColumn = 2
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VS_STOCK_AGE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VS_STOCK_AGE'
GO
USE [master]
GO
ALTER DATABASE [ChangKeSpare] SET  READ_WRITE 
GO
