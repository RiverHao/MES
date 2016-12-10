USE [master]
GO
/****** Object:  Database [ChangKeSpare]    Script Date: 2016/12/10 22:00:52 ******/
CREATE DATABASE [ChangKeSpare] ON  PRIMARY 
( NAME = N'ChangKeSpare', FILENAME = N'D:\work\sqlserverdata\ChangKeSpare.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ChangKeSpare_log', FILENAME = N'D:\work\sqlserverdata\ChangKeSpare_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ChangKeSpare] SET COMPATIBILITY_LEVEL = 100
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
/****** Object:  Table [dbo].[TA_BILLTYPE]    Script Date: 2016/12/10 22:00:53 ******/
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
/****** Object:  Table [dbo].[TA_CONFIG]    Script Date: 2016/12/10 22:00:53 ******/
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
/****** Object:  Table [dbo].[TA_DEPT]    Script Date: 2016/12/10 22:00:53 ******/
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
/****** Object:  Table [dbo].[TA_MACHINE]    Script Date: 2016/12/10 22:00:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TA_MACHINE](
	[UID] [bigint] IDENTITY(1,1) NOT NULL,
	[MachineCode] [nvarchar](50) NOT NULL,
	[MachineName] [nvarchar](50) NOT NULL,
	[MachineType] [nvarchar](50) NOT NULL,
	[MachineModel] [nvarchar](50) NULL,
	[MachineLocation] [nvarchar](50) NULL,
	[DeptCode] [nvarchar](50) NULL,
	[Manager] [nvarchar](50) NULL,
	[State] [int] NOT NULL,
	[Remark] [nvarchar](500) NULL,
 CONSTRAINT [PK_TS_RFID] PRIMARY KEY CLUSTERED 
(
	[MachineCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TA_PART]    Script Date: 2016/12/10 22:00:53 ******/
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
/****** Object:  Table [dbo].[TA_PROJECT]    Script Date: 2016/12/10 22:00:53 ******/
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
/****** Object:  Table [dbo].[TA_STORE_GROUP]    Script Date: 2016/12/10 22:00:53 ******/
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
/****** Object:  Table [dbo].[TA_STORE_LOCATION]    Script Date: 2016/12/10 22:00:53 ******/
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
/****** Object:  Table [dbo].[TA_STORE_WHSE]    Script Date: 2016/12/10 22:00:53 ******/
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
/****** Object:  Table [dbo].[TA_SUB_BILLTYPE]    Script Date: 2016/12/10 22:00:53 ******/
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
/****** Object:  Table [dbo].[TA_SUPERLIER]    Script Date: 2016/12/10 22:00:53 ******/
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
/****** Object:  Table [dbo].[TA_UNIT]    Script Date: 2016/12/10 22:00:53 ******/
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
/****** Object:  Table [dbo].[TA_WORKLINE]    Script Date: 2016/12/10 22:00:53 ******/
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
/****** Object:  Table [dbo].[TB_ASK]    Script Date: 2016/12/10 22:00:53 ******/
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
	[Batch] [nvarchar](50) NULL,
	[TakeType] [int] NULL,
	[TakeUser] [nvarchar](50) NULL,
	[TakeTime] [datetime] NULL,
	[UintPrice] [money] NULL,
	[Amount] [money] NULL,
 CONSTRAINT [PK_TB_ASK] PRIMARY KEY CLUSTERED 
(
	[UID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TB_BILL]    Script Date: 2016/12/10 22:00:53 ******/
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
/****** Object:  Table [dbo].[TB_IN]    Script Date: 2016/12/10 22:00:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_IN](
	[UID] [int] IDENTITY(1,1) NOT NULL,
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
/****** Object:  Table [dbo].[TB_INVENTORY_DETAIL]    Script Date: 2016/12/10 22:00:54 ******/
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
	[CheckQty] [money] NULL,
	[CheckTime] [datetime] NULL,
	[OperName] [nvarchar](50) NULL,
 CONSTRAINT [PK_TB_CHECK_DETAIL] PRIMARY KEY CLUSTERED 
(
	[UID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TB_INVENTORY_LOC]    Script Date: 2016/12/10 22:00:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_INVENTORY_LOC](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[BillNum] [nvarchar](50) NOT NULL,
	[LocCode] [nvarchar](50) NOT NULL,
	[OperName] [nvarchar](50) NULL,
	[BillTime] [datetime] NOT NULL,
	[CheckBeginTime] [nvarchar](50) NULL,
	[CheckEndTime] [nvarchar](50) NULL,
	[State] [int] NOT NULL,
	[Remark] [nvarchar](500) NULL,
 CONSTRAINT [PK_TB_CHECK] PRIMARY KEY CLUSTERED 
(
	[BillNum] ASC,
	[LocCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TB_OTHER_IN]    Script Date: 2016/12/10 22:00:54 ******/
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
	[ProduceDate] [datetime] NULL,
	[UnitPrice] [money] NULL,
	[Amount] [money] NULL,
	[Remark] [nvarchar](200) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TB_OTHER_OUT]    Script Date: 2016/12/10 22:00:54 ******/
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
	[Amount] [money] NULL,
	[Remark] [nvarchar](200) NULL,
 CONSTRAINT [PK_TB_OTHER_OUT] PRIMARY KEY CLUSTERED 
(
	[UID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TB_OUT]    Script Date: 2016/12/10 22:00:54 ******/
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
	[BillQty] [money] NULL,
	[OutQty] [money] NOT NULL,
	[UnitPrice] [money] NOT NULL,
	[Amount] [money] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[ProjectCode] [nvarchar](50) NULL,
	[WorklineCode] [nvarchar](50) NULL,
	[EqptCode] [nvarchar](50) NULL,
	[AskUser] [nvarchar](50) NULL,
	[AskTime] [datetime] NULL,
	[ConfirmUser] [nvarchar](50) NULL,
	[ConfirmTime] [datetime] NULL,
	[TakeType] [int] NOT NULL,
	[TakeUser] [nvarchar](50) NOT NULL,
	[TakeTime] [datetime] NOT NULL,
	[State] [int] NOT NULL,
	[Remark] [nvarchar](200) NULL,
 CONSTRAINT [PK_TB_OUT] PRIMARY KEY CLUSTERED 
(
	[UID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TB_PO]    Script Date: 2016/12/10 22:00:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_PO](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[BillNum] [nvarchar](50) NOT NULL,
	[Line] [int] NOT NULL,
	[PartCode] [nvarchar](50) NOT NULL,
	[BillQty] [money] NOT NULL,
	[ArrialQty] [money] NOT NULL,
	[State] [int] NOT NULL,
	[Remark] [nvarchar](200) NULL,
 CONSTRAINT [PK_TB_PO] PRIMARY KEY CLUSTERED 
(
	[BillNum] ASC,
	[Line] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TB_RETURN]    Script Date: 2016/12/10 22:00:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_RETURN](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[BillNum] [nvarchar](50) NOT NULL,
	[PartCode] [nvarchar](50) NOT NULL,
	[Batch] [nvarchar](50) NOT NULL,
	[FromLocCode] [nvarchar](50) NOT NULL,
	[ToLocCode] [nvarchar](50) NULL,
	[OutQty] [money] NOT NULL,
	[InQty] [money] NULL,
	[UnitPrice] [money] NOT NULL,
	[Amount] [money] NULL,
	[DeptCode] [nvarchar](50) NULL,
	[ProjectCode] [nvarchar](50) NULL,
	[WorklineCode] [nvarchar](50) NULL,
	[EqptCode] [nvarchar](50) NULL,
	[AskUser] [nvarchar](50) NULL,
	[AskTime] [datetime] NULL,
	[ConfirmUser] [nvarchar](50) NULL,
	[ConfirmTime] [datetime] NULL,
	[ReturnUser] [nvarchar](50) NULL,
	[ReturnTime] [datetime] NULL,
	[TakeUser] [nvarchar](50) NOT NULL,
	[TakeTime] [datetime] NOT NULL,
	[State] [int] NOT NULL,
	[Remark] [nvarchar](200) NULL,
 CONSTRAINT [PK_TB_Return] PRIMARY KEY CLUSTERED 
(
	[UID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TB_STOCK_MOVE]    Script Date: 2016/12/10 22:00:54 ******/
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
/****** Object:  Table [dbo].[TL_BASEDATA]    Script Date: 2016/12/10 22:00:54 ******/
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
/****** Object:  Table [dbo].[TL_BILL]    Script Date: 2016/12/10 22:00:54 ******/
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
/****** Object:  Table [dbo].[TL_INTERFACE]    Script Date: 2016/12/10 22:00:54 ******/
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
/****** Object:  Table [dbo].[TL_NOTIFY]    Script Date: 2016/12/10 22:00:54 ******/
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
/****** Object:  Table [dbo].[TL_OPER]    Script Date: 2016/12/10 22:00:54 ******/
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
/****** Object:  Table [dbo].[TL_TRANSACTION]    Script Date: 2016/12/10 22:00:54 ******/
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
/****** Object:  Table [dbo].[TS_STOCK_DETAIL]    Script Date: 2016/12/10 22:00:54 ******/
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
/****** Object:  Table [dbo].[TT_GROUP_TYPE]    Script Date: 2016/12/10 22:00:55 ******/
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
/****** Object:  Table [dbo].[TT_LOC_TYPE]    Script Date: 2016/12/10 22:00:55 ******/
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
/****** Object:  Table [dbo].[TT_MACHINE_TYPE]    Script Date: 2016/12/10 22:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TT_MACHINE_TYPE](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[MachineType] [nvarchar](50) NOT NULL,
	[TypeName] [nvarchar](50) NULL,
	[Remark] [nvarchar](500) NULL,
 CONSTRAINT [PK_TT_EQPT_TYPE] PRIMARY KEY CLUSTERED 
(
	[MachineType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TT_PART_TYPE]    Script Date: 2016/12/10 22:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TT_PART_TYPE](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[PartType] [nvarchar](50) NOT NULL,
	[TypeName] [nvarchar](50) NULL,
	[Remark] [nvarchar](500) NULL,
 CONSTRAINT [PK_TT_PART_TYPE] PRIMARY KEY CLUSTERED 
(
	[PartType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[VIEW_CalInaction_DAYS]    Script Date: 2016/12/10 22:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VIEW_CalInaction_DAYS]
AS
SELECT     DATEDIFF(day, UpdateTime, GETDATE()) AS 呆滞天数, LocCode AS 所在库位, PartCode AS 零件号, Batch AS 批次, Qty AS 数量, ProduceDate AS 生产日期, 
                      OverdueDate AS 过期日期
FROM         dbo.TS_STOCK_DETAIL AS sd
WHERE     (DATEDIFF(day, UpdateTime, GETDATE()) >= 365)

GO
/****** Object:  View [dbo].[VIEW_CalOverdue_DAYS]    Script Date: 2016/12/10 22:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[VIEW_CalOverdue_DAYS]
as
SELECT     DATEDIFF(day, GETDATE(), OverdueDate) AS 安全天数,  LocCode AS 所在库位, PartCode AS 零件号,
batch as 批次,
                 Qty AS 数量, ProduceDate AS 生产日期, OverdueDate AS 过期日期
FROM         dbo.TS_STOCK_DETAIL AS sd
WHERE     (DATEDIFF(day, GETDATE(), OverdueDate) <= 30)

GO
/****** Object:  View [dbo].[VIEW_CalSafeQty]    Script Date: 2016/12/10 22:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VIEW_CalSafeQty]
AS
SELECT     MinQty AS 最低库存, MaxQty AS 最高库存, PartCode AS 零件号, PartDesc2 AS 零件描述,
                          (SELECT     SUM(Qty) AS Expr1
                            FROM          dbo.TS_STOCK_DETAIL
                            WHERE      (PartCode = part.PartCode)) AS 在库数量
FROM         dbo.TA_PART AS part
WHERE     (State = 1) AND (MinQty >
                          (SELECT     ISNULL(SUM(Qty), 0) AS Expr1
                            FROM          dbo.TS_STOCK_DETAIL AS TS_STOCK_DETAIL_2
                            WHERE      (PartCode = part.PartCode) AND (State = 1))) OR
                      (MaxQty <
                          (SELECT     ISNULL(SUM(Qty), 0) AS Expr1
                            FROM          dbo.TS_STOCK_DETAIL AS TS_STOCK_DETAIL_1
                            WHERE      (PartCode = part.PartCode) AND (State = 1)))

GO
/****** Object:  View [dbo].[VIEW_INVENTORY_DETAIL]    Script Date: 2016/12/10 22:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[VIEW_INVENTORY_DETAIL]
as
SELECT     UID, BillNum AS 单据号, CheckLocCode AS 盘点库位, 
PartCode AS 零件号, Batch AS 批次, 
                      BookQty AS 账面数, CheckQty AS 盘点数, 
                      (BookQty - CheckQty) AS 差异数, CheckTime AS 盘点时间, 
                      OperName AS 操作员
FROM         dbo.TB_INVENTORY_DETAIL

GO
/****** Object:  View [dbo].[VIEW_STOCK_DETAIL]    Script Date: 2016/12/10 22:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[VIEW_STOCK_DETAIL]
as
SELECT     UID,  LocCode AS 库位, PartCode AS 零件号,  Batch AS 批次,  
                       State AS 状态, Qty AS 数量, 
                       UnitPrice as 单价,
                       (UnitPrice * Qty) AS 金额, ProduceDate AS 生产日期, 
                       OverdueDate AS 失效日期, UpdateTime AS 更新时间, 
                      UpdateQty AS 更新数量
FROM         dbo.TS_STOCK_DETAIL

GO
/****** Object:  View [dbo].[VIEW_STOCK_DETAIL_AGE]    Script Date: 2016/12/10 22:00:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VIEW_STOCK_DETAIL_AGE]
AS
SELECT     UID, LocCode AS 库位, PartCode AS 零件号, Batch AS 批次, State AS 状态, Qty AS 数量, UnitPrice AS 单价, UnitPrice * Qty AS 金额, ProduceDate AS 生产日期, 
                      ReceiveDate AS 入库时间, DATEDIFF(day, ReceiveDate, GETDATE()) AS 在库天数
FROM         dbo.TS_STOCK_DETAIL

GO
/****** Object:  View [dbo].[VS_IDLE_STOCK_DETAIL]    Script Date: 2016/12/10 22:00:55 ******/
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
/****** Object:  View [dbo].[VS_OVERDUE_STOCK]    Script Date: 2016/12/10 22:00:55 ******/
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
/****** Object:  View [dbo].[VS_STOCK]    Script Date: 2016/12/10 22:00:55 ******/
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
/****** Object:  View [dbo].[VS_STOCK_AGE]    Script Date: 2016/12/10 22:00:55 ******/
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
SET IDENTITY_INSERT [dbo].[TA_BILLTYPE] ON 

INSERT [dbo].[TA_BILLTYPE] ([UID], [BillType], [TypeName], [TypeDesc], [State], [Prefix], [BillNumRule], [LastNumber], [LastBillNum], [LastBillTime], [PrintTemplateFileName], [ImportTemplateFileName]) VALUES (1, 101, N'MaterialReceive', N'原料收货单', 1, N'MR', N'P|D:l|N:4', 2, N'MR-20161006-0001', CAST(N'2016-10-06T14:01:15.470' AS DateTime), N'MaterialReceive.grf', N'')
INSERT [dbo].[TA_BILLTYPE] ([UID], [BillType], [TypeName], [TypeDesc], [State], [Prefix], [BillNumRule], [LastNumber], [LastBillNum], [LastBillTime], [PrintTemplateFileName], [ImportTemplateFileName]) VALUES (2, 102, N'MaterialIn', N'原料入库单', 1, N'MI', N'P|D:l|N:4', 2, N'MI-20161006-0001', CAST(N'2016-10-06T14:25:11.847' AS DateTime), N'MaterialIn.grf', N'')
INSERT [dbo].[TA_BILLTYPE] ([UID], [BillType], [TypeName], [TypeDesc], [State], [Prefix], [BillNumRule], [LastNumber], [LastBillNum], [LastBillTime], [PrintTemplateFileName], [ImportTemplateFileName]) VALUES (28, 103, N'MaterialDeliver', N'备件出库', 1, N'MD', N'P|D:l|N:4', 4, N'MD-20161209-0003', CAST(N'2016-12-09T14:23:06.190' AS DateTime), N'', NULL)
INSERT [dbo].[TA_BILLTYPE] ([UID], [BillType], [TypeName], [TypeDesc], [State], [Prefix], [BillNumRule], [LastNumber], [LastBillNum], [LastBillTime], [PrintTemplateFileName], [ImportTemplateFileName]) VALUES (3, 104, N'MaterialAsk', N'原料叫料单', 1, N'MA', N'P|D:l|N:4', 2, N'MA-20161209-0001', CAST(N'2016-12-09T10:31:28.917' AS DateTime), N'MaterialAsk.grf', N'')
INSERT [dbo].[TA_BILLTYPE] ([UID], [BillType], [TypeName], [TypeDesc], [State], [Prefix], [BillNumRule], [LastNumber], [LastBillNum], [LastBillTime], [PrintTemplateFileName], [ImportTemplateFileName]) VALUES (29, 107, N'SpareReturn', N'备件领用归还', 1, N'SR', N'P|D:l|N:4', 5, N'SR-20161209-0004', CAST(N'2016-12-09T15:48:31.553' AS DateTime), N'MaterialAsk.grf', N'')
INSERT [dbo].[TA_BILLTYPE] ([UID], [BillType], [TypeName], [TypeDesc], [State], [Prefix], [BillNumRule], [LastNumber], [LastBillNum], [LastBillTime], [PrintTemplateFileName], [ImportTemplateFileName]) VALUES (4, 201, N'ProductReceive', N'成品收货单', 1, N'PR', N'P|D:l|N:4', 5, N'PR-20161006-0004', CAST(N'2016-10-06T14:29:29.073' AS DateTime), N'ProductReceive.grf', N'')
INSERT [dbo].[TA_BILLTYPE] ([UID], [BillType], [TypeName], [TypeDesc], [State], [Prefix], [BillNumRule], [LastNumber], [LastBillNum], [LastBillTime], [PrintTemplateFileName], [ImportTemplateFileName]) VALUES (5, 202, N'ProductIn', N'成品入库单', 1, N'PI', N'P|D:l|N:4', 2, N'PI-20161006-0001', CAST(N'2016-10-06T14:34:30.537' AS DateTime), N'ProductIn.grf', N'')
INSERT [dbo].[TA_BILLTYPE] ([UID], [BillType], [TypeName], [TypeDesc], [State], [Prefix], [BillNumRule], [LastNumber], [LastBillNum], [LastBillTime], [PrintTemplateFileName], [ImportTemplateFileName]) VALUES (6, 204, N'DeliverPlan', N'发货计划单', 1, N'DP', N'P|D:l|N:4', 2, N'PD-20161006-0001', CAST(N'2016-10-06T15:02:34.387' AS DateTime), N'DeliverPlan.grf', N'DeliverPlan.xlsx')
INSERT [dbo].[TA_BILLTYPE] ([UID], [BillType], [TypeName], [TypeDesc], [State], [Prefix], [BillNumRule], [LastNumber], [LastBillNum], [LastBillTime], [PrintTemplateFileName], [ImportTemplateFileName]) VALUES (7, 206, N'ProductSortedDeliver', N'成品顺序发货单', 1, N'PSD', N'P|D:l|N:4', 1, N'', CAST(N'2016-09-07T20:16:27.327' AS DateTime), N'', N'')
INSERT [dbo].[TA_BILLTYPE] ([UID], [BillType], [TypeName], [TypeDesc], [State], [Prefix], [BillNumRule], [LastNumber], [LastBillNum], [LastBillTime], [PrintTemplateFileName], [ImportTemplateFileName]) VALUES (8, 207, N'ProductSell', N'成品销售单', 1, N'PS', N'P|D:l|N:4', 3, N'PS-20161006-0002', CAST(N'2016-10-06T16:38:48.363' AS DateTime), N'ProductSell.grf', N'')
INSERT [dbo].[TA_BILLTYPE] ([UID], [BillType], [TypeName], [TypeDesc], [State], [Prefix], [BillNumRule], [LastNumber], [LastBillNum], [LastBillTime], [PrintTemplateFileName], [ImportTemplateFileName]) VALUES (9, 301, N'OtherInOut', N'其它出入库单', 1, N'OI', N'P|D:l|N:4', 9, N'OI-20161209-0008', CAST(N'2016-12-09T20:34:08.713' AS DateTime), N'OtherInOut.grf', N'')
INSERT [dbo].[TA_BILLTYPE] ([UID], [BillType], [TypeName], [TypeDesc], [State], [Prefix], [BillNumRule], [LastNumber], [LastBillNum], [LastBillTime], [PrintTemplateFileName], [ImportTemplateFileName]) VALUES (10, 302, N'StockMove', N'移库单', 1, N'SM', N'P|D:l|N:4', 10, N'SM-20161209-0009', CAST(N'2016-12-09T18:51:06.457' AS DateTime), N'', N'')
INSERT [dbo].[TA_BILLTYPE] ([UID], [BillType], [TypeName], [TypeDesc], [State], [Prefix], [BillNumRule], [LastNumber], [LastBillNum], [LastBillTime], [PrintTemplateFileName], [ImportTemplateFileName]) VALUES (11, 303, N'StockPack', N'打包单', 1, N'SP', N'P|D:l|N:4', 1, N'', CAST(N'2016-09-07T20:16:27.540' AS DateTime), N'', N'')
INSERT [dbo].[TA_BILLTYPE] ([UID], [BillType], [TypeName], [TypeDesc], [State], [Prefix], [BillNumRule], [LastNumber], [LastBillNum], [LastBillTime], [PrintTemplateFileName], [ImportTemplateFileName]) VALUES (12, 304, N'StockUnPack', N'拆包单', 1, N'SUP', N'P|D:l|N:4', 5, N'SUP-20161006-0004', CAST(N'2016-10-06T21:43:28.450' AS DateTime), N'', N'')
INSERT [dbo].[TA_BILLTYPE] ([UID], [BillType], [TypeName], [TypeDesc], [State], [Prefix], [BillNumRule], [LastNumber], [LastBillNum], [LastBillTime], [PrintTemplateFileName], [ImportTemplateFileName]) VALUES (13, 305, N'Inventory', N'盘点单', 1, N'IV', N'P|D:l|N:4', 3, N'IV-20161210-0002', CAST(N'2016-12-10T10:17:40.427' AS DateTime), N'InventoryPlan.grf', N'InventoryPlan.xlsx')
INSERT [dbo].[TA_BILLTYPE] ([UID], [BillType], [TypeName], [TypeDesc], [State], [Prefix], [BillNumRule], [LastNumber], [LastBillNum], [LastBillTime], [PrintTemplateFileName], [ImportTemplateFileName]) VALUES (14, 306, N'BalanceCompare', N'结算比对报表', 1, N'BC', N'P|D:l|N:4', 3, N'BC-20160715-0002', CAST(N'2016-07-15T16:48:58.480' AS DateTime), N'', N'')
INSERT [dbo].[TA_BILLTYPE] ([UID], [BillType], [TypeName], [TypeDesc], [State], [Prefix], [BillNumRule], [LastNumber], [LastBillNum], [LastBillTime], [PrintTemplateFileName], [ImportTemplateFileName]) VALUES (15, 404, N'EqptLoad', N'托盘装载单', 1, N'EL', N'P|D:l|N:4', 1, N'', CAST(N'2016-09-07T20:16:26.747' AS DateTime), N'', N'')
INSERT [dbo].[TA_BILLTYPE] ([UID], [BillType], [TypeName], [TypeDesc], [State], [Prefix], [BillNumRule], [LastNumber], [LastBillNum], [LastBillTime], [PrintTemplateFileName], [ImportTemplateFileName]) VALUES (16, 501, N'VinReceive', N'Vin收货单', 1, N'VR', N'P|D:l|N:4', 12, N'VR-20160914-0011', CAST(N'2016-09-14T23:19:41.540' AS DateTime), N'', N'')
INSERT [dbo].[TA_BILLTYPE] ([UID], [BillType], [TypeName], [TypeDesc], [State], [Prefix], [BillNumRule], [LastNumber], [LastBillNum], [LastBillTime], [PrintTemplateFileName], [ImportTemplateFileName]) VALUES (17, 502, N'VinDeliver', N'Vin发货单', 1, N'VD', N'P|D:l|N:4', 8, N'VD-20160902-0007', CAST(N'2016-09-02T21:18:31.703' AS DateTime), N'', N'')
INSERT [dbo].[TA_BILLTYPE] ([UID], [BillType], [TypeName], [TypeDesc], [State], [Prefix], [BillNumRule], [LastNumber], [LastBillNum], [LastBillTime], [PrintTemplateFileName], [ImportTemplateFileName]) VALUES (18, 503, N'VinSell', N'VIN销售单', 1, N'VS', N'P|D:l|N:4', 1, N'', CAST(N'2016-09-07T20:16:27.660' AS DateTime), N'', N'')
INSERT [dbo].[TA_BILLTYPE] ([UID], [BillType], [TypeName], [TypeDesc], [State], [Prefix], [BillNumRule], [LastNumber], [LastBillNum], [LastBillTime], [PrintTemplateFileName], [ImportTemplateFileName]) VALUES (19, 601, N'Inspect', N'报验单', 1, N'IS', N'P|D:l|N:4', 2, N'IS-20161006-0001', CAST(N'2016-10-06T14:01:15.693' AS DateTime), N'Inspect.grf', N'')
INSERT [dbo].[TA_BILLTYPE] ([UID], [BillType], [TypeName], [TypeDesc], [State], [Prefix], [BillNumRule], [LastNumber], [LastBillNum], [LastBillTime], [PrintTemplateFileName], [ImportTemplateFileName]) VALUES (20, 602, N'TraceBack', N'追溯单', 1, N'TB', N'P|D:l|N:4', 1, N'', CAST(N'2016-09-07T20:16:27.623' AS DateTime), N'', N'')
INSERT [dbo].[TA_BILLTYPE] ([UID], [BillType], [TypeName], [TypeDesc], [State], [Prefix], [BillNumRule], [LastNumber], [LastBillNum], [LastBillTime], [PrintTemplateFileName], [ImportTemplateFileName]) VALUES (21, 603, N'PickPlan', N'备料单', 1, N'PP', N'P|D:l|N:4', 9, N'PP-20161006-0008', CAST(N'2016-10-06T15:06:11.637' AS DateTime), N'PickPlan.grf', N'')
INSERT [dbo].[TA_BILLTYPE] ([UID], [BillType], [TypeName], [TypeDesc], [State], [Prefix], [BillNumRule], [LastNumber], [LastBillNum], [LastBillTime], [PrintTemplateFileName], [ImportTemplateFileName]) VALUES (22, 604, N'PickFact', N'拣料单', 1, N'PF', N'P|D:l|N:4', 9, N'PF-20161006-0008', CAST(N'2016-10-06T15:59:14.327' AS DateTime), N'PickFact.grf', N'')
INSERT [dbo].[TA_BILLTYPE] ([UID], [BillType], [TypeName], [TypeDesc], [State], [Prefix], [BillNumRule], [LastNumber], [LastBillNum], [LastBillTime], [PrintTemplateFileName], [ImportTemplateFileName]) VALUES (23, 605, N'ProducePlan', N'生产计划单', 1, N'PDP', N'P|D:l|N:4', 3, N'PDP-20161006-0002', CAST(N'2016-10-06T12:15:08.110' AS DateTime), N'ProducePlan.grf', N'ProducePlan.xlsx')
INSERT [dbo].[TA_BILLTYPE] ([UID], [BillType], [TypeName], [TypeDesc], [State], [Prefix], [BillNumRule], [LastNumber], [LastBillNum], [LastBillTime], [PrintTemplateFileName], [ImportTemplateFileName]) VALUES (24, 606, N'OutsourcePlan', N'委外计划单', 1, N'OP', N'P|D:l|N:4', 1, N'', CAST(N'2016-10-04T11:42:17.180' AS DateTime), N'OutsourcePlan.grf', N'OutsourcePlan.xlsx')
INSERT [dbo].[TA_BILLTYPE] ([UID], [BillType], [TypeName], [TypeDesc], [State], [Prefix], [BillNumRule], [LastNumber], [LastBillNum], [LastBillTime], [PrintTemplateFileName], [ImportTemplateFileName]) VALUES (25, 702, N'PuchaseOrder', N'采购订单', 1, N'PO', N'P|D:l|N:4', 1, N'', CAST(N'2016-09-07T20:16:27.370' AS DateTime), N'Po.grf', N'')
INSERT [dbo].[TA_BILLTYPE] ([UID], [BillType], [TypeName], [TypeDesc], [State], [Prefix], [BillNumRule], [LastNumber], [LastBillNum], [LastBillTime], [PrintTemplateFileName], [ImportTemplateFileName]) VALUES (26, 703, N'AsnOrder', N'供应商发货单', 1, N'ASN', N'P|D:l|N:4', 1, N'', CAST(N'2016-09-07T20:16:27.460' AS DateTime), N'Asn.grf', N'')
INSERT [dbo].[TA_BILLTYPE] ([UID], [BillType], [TypeName], [TypeDesc], [State], [Prefix], [BillNumRule], [LastNumber], [LastBillNum], [LastBillTime], [PrintTemplateFileName], [ImportTemplateFileName]) VALUES (27, 704, N'SaleOrder', N'销售订单', 1, N'SO', N'P|D:l|N:4', 1, N'', CAST(N'2016-09-07T20:16:27.417' AS DateTime), N'So.grf', N'')
SET IDENTITY_INSERT [dbo].[TA_BILLTYPE] OFF
SET IDENTITY_INSERT [dbo].[TA_PART] ON 

INSERT [dbo].[TA_PART] ([UID], [PartCode], [ErpPartCode], [PartDesc1], [PartDesc2], [Unit], [BM], [PartType], [MaxQty], [MinQty], [SafeQty], [IdleDays], [SplyPackQty], [ValidityDays], [State], [Remark], [Picture]) VALUES (1, N'LJ001', N'LJ001', N'零件描述1', N'零件描述2', N'个', N'BM', 0, 50.0000, 20.0000, 30.0000, 0, 0.0000, 200, 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[TA_PART] OFF
SET IDENTITY_INSERT [dbo].[TA_STORE_LOCATION] ON 

INSERT [dbo].[TA_STORE_LOCATION] ([UID], [LocCode], [WhseCode], [GroupCode], [LocType], [State], [Remark]) VALUES (5, N'KW002', N'备件库', N'11', NULL, 0, NULL)
INSERT [dbo].[TA_STORE_LOCATION] ([UID], [LocCode], [WhseCode], [GroupCode], [LocType], [State], [Remark]) VALUES (4, N'KW001', N'CK001', N'11', NULL, 1, NULL)
INSERT [dbo].[TA_STORE_LOCATION] ([UID], [LocCode], [WhseCode], [GroupCode], [LocType], [State], [Remark]) VALUES (6, N'OTHER', N'OTHER', N'11', N'', 0, N'')
SET IDENTITY_INSERT [dbo].[TA_STORE_LOCATION] OFF
SET IDENTITY_INSERT [dbo].[TA_STORE_WHSE] ON 

INSERT [dbo].[TA_STORE_WHSE] ([UID], [WhseCode], [WhseName], [WhseAddress], [WhseType], [State], [Remark]) VALUES (1, N'CK001', N'备件库', N'123123', N'第三方仓库', 0, NULL)
SET IDENTITY_INSERT [dbo].[TA_STORE_WHSE] OFF
SET IDENTITY_INSERT [dbo].[TA_WORKLINE] ON 

INSERT [dbo].[TA_WORKLINE] ([UID], [WorklineCode], [WokrlineName], [State], [Remark]) VALUES (1, N'Line001', N'生产线001', 0, NULL)
SET IDENTITY_INSERT [dbo].[TA_WORKLINE] OFF
SET IDENTITY_INSERT [dbo].[TB_ASK] ON 

INSERT [dbo].[TB_ASK] ([UID], [BillNum], [PartCode], [Qty], [DeptCode], [ProjectCode], [WorklineCode], [EqptCode], [AskUser], [AskTime], [ConfirmUser], [ConfirmTime], [State], [Remark], [Batch], [TakeType], [TakeUser], [TakeTime], [UintPrice], [Amount]) VALUES (1, N'ASK0001', N'Part0001', 10.0000, N'001', N'PRO001', N'Line001', N'LJ001', N'张三', CAST(N'2016-12-06T14:31:04.290' AS DateTime), N'', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_ASK] ([UID], [BillNum], [PartCode], [Qty], [DeptCode], [ProjectCode], [WorklineCode], [EqptCode], [AskUser], [AskTime], [ConfirmUser], [ConfirmTime], [State], [Remark], [Batch], [TakeType], [TakeUser], [TakeTime], [UintPrice], [Amount]) VALUES (13, N'ASK0001', N'Part0001', 11.0000, N'001', N'X261CC', N'Line001', N'LJ001', N'张三', CAST(N'2016-12-06T14:31:04.000' AS DateTime), NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_ASK] ([UID], [BillNum], [PartCode], [Qty], [DeptCode], [ProjectCode], [WorklineCode], [EqptCode], [AskUser], [AskTime], [ConfirmUser], [ConfirmTime], [State], [Remark], [Batch], [TakeType], [TakeUser], [TakeTime], [UintPrice], [Amount]) VALUES (14, N'MA-20161206-0001', N'11', 1.0000, N'11', N'11', N'11', N'11', N'11', CAST(N'2016-12-12T00:00:00.000' AS DateTime), NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_ASK] ([UID], [BillNum], [PartCode], [Qty], [DeptCode], [ProjectCode], [WorklineCode], [EqptCode], [AskUser], [AskTime], [ConfirmUser], [ConfirmTime], [State], [Remark], [Batch], [TakeType], [TakeUser], [TakeTime], [UintPrice], [Amount]) VALUES (15, N'MA-20161209-0001', N'LJ001', 12.0000, N'001', N'X261CC', N'Line001', N'LJ001', N'张三', CAST(N'2016-12-09T10:31:08.000' AS DateTime), NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[TB_ASK] ([UID], [BillNum], [PartCode], [Qty], [DeptCode], [ProjectCode], [WorklineCode], [EqptCode], [AskUser], [AskTime], [ConfirmUser], [ConfirmTime], [State], [Remark], [Batch], [TakeType], [TakeUser], [TakeTime], [UintPrice], [Amount]) VALUES (16, N'MA-20161209-0001', N'LJ001', 11.0000, N'001', N'X261CC', N'Line001', N'EQPT', N'李四', CAST(N'2016-12-09T10:35:32.000' AS DateTime), NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[TB_ASK] OFF
SET IDENTITY_INSERT [dbo].[TB_BILL] ON 

INSERT [dbo].[TB_BILL] ([UID], [BillNum], [SourceBillNum], [BillType], [SubBillType], [BillTime], [StartTime], [FinishTime], [OperName], [SplyId], [State], [Remark]) VALUES (3, N'ASK0001', NULL, 104, 0, CAST(N'2016-12-06T14:28:07.330' AS DateTime), NULL, NULL, N'张三SSS', NULL, 0, N'123123')
INSERT [dbo].[TB_BILL] ([UID], [BillNum], [SourceBillNum], [BillType], [SubBillType], [BillTime], [StartTime], [FinishTime], [OperName], [SplyId], [State], [Remark]) VALUES (23, N'IV-20161210-0002', NULL, 305, 0, CAST(N'2016-12-10T10:17:40.437' AS DateTime), NULL, N'2016-12-10 11:29:42', N'zhangs', NULL, 3, NULL)
INSERT [dbo].[TB_BILL] ([UID], [BillNum], [SourceBillNum], [BillType], [SubBillType], [BillTime], [StartTime], [FinishTime], [OperName], [SplyId], [State], [Remark]) VALUES (4, N'MA-20161206-0001', NULL, 104, 0, CAST(N'2016-12-06T17:12:31.547' AS DateTime), NULL, NULL, N'123', NULL, 0, N'123')
INSERT [dbo].[TB_BILL] ([UID], [BillNum], [SourceBillNum], [BillType], [SubBillType], [BillTime], [StartTime], [FinishTime], [OperName], [SplyId], [State], [Remark]) VALUES (5, N'MA-20161209-0001', NULL, 104, 0, CAST(N'2016-12-09T10:31:28.937' AS DateTime), NULL, NULL, N'张三', NULL, 0, NULL)
INSERT [dbo].[TB_BILL] ([UID], [BillNum], [SourceBillNum], [BillType], [SubBillType], [BillTime], [StartTime], [FinishTime], [OperName], [SplyId], [State], [Remark]) VALUES (6, N'MD-20161209-0002', NULL, 103, 30105, CAST(N'2016-12-09T14:20:27.413' AS DateTime), NULL, N'2016-12-09 15:29:33', N'zhangsan', NULL, 3, NULL)
INSERT [dbo].[TB_BILL] ([UID], [BillNum], [SourceBillNum], [BillType], [SubBillType], [BillTime], [StartTime], [FinishTime], [OperName], [SplyId], [State], [Remark]) VALUES (7, N'MD-20161209-0003', NULL, 103, 30106, CAST(N'2016-12-09T14:23:06.197' AS DateTime), NULL, N'2016-12-09 15:29:10', N'zs', NULL, 3, NULL)
INSERT [dbo].[TB_BILL] ([UID], [BillNum], [SourceBillNum], [BillType], [SubBillType], [BillTime], [StartTime], [FinishTime], [OperName], [SplyId], [State], [Remark]) VALUES (2, N'MR0001', NULL, 101, 10101, CAST(N'2016-12-06T10:57:12.180' AS DateTime), NULL, NULL, N'张三', NULL, 0, NULL)
INSERT [dbo].[TB_BILL] ([UID], [BillNum], [SourceBillNum], [BillType], [SubBillType], [BillTime], [StartTime], [FinishTime], [OperName], [SplyId], [State], [Remark]) VALUES (13, N'OI-20161209-0002', NULL, 301, 30111, CAST(N'2016-12-09T19:48:48.133' AS DateTime), NULL, NULL, N'zhangs', NULL, 0, NULL)
INSERT [dbo].[TB_BILL] ([UID], [BillNum], [SourceBillNum], [BillType], [SubBillType], [BillTime], [StartTime], [FinishTime], [OperName], [SplyId], [State], [Remark]) VALUES (22, N'OI-20161209-0008', NULL, 301, 30101, CAST(N'2016-12-09T20:34:08.720' AS DateTime), NULL, NULL, N'zhangs', NULL, 0, NULL)
INSERT [dbo].[TB_BILL] ([UID], [BillNum], [SourceBillNum], [BillType], [SubBillType], [BillTime], [StartTime], [FinishTime], [OperName], [SplyId], [State], [Remark]) VALUES (1, N'PO0001', NULL, 702, 0, CAST(N'2016-12-06T09:31:33.483' AS DateTime), NULL, NULL, N'张三', NULL, 0, NULL)
INSERT [dbo].[TB_BILL] ([UID], [BillNum], [SourceBillNum], [BillType], [SubBillType], [BillTime], [StartTime], [FinishTime], [OperName], [SplyId], [State], [Remark]) VALUES (12, N'SM-20161209-0009', NULL, 302, 0, CAST(N'2016-12-09T18:51:06.473' AS DateTime), NULL, NULL, N'zhangs', NULL, 0, NULL)
INSERT [dbo].[TB_BILL] ([UID], [BillNum], [SourceBillNum], [BillType], [SubBillType], [BillTime], [StartTime], [FinishTime], [OperName], [SplyId], [State], [Remark]) VALUES (8, N'SR-20161209-0002', N'MD-20161209-0003', 107, 30114, CAST(N'2016-12-09T15:43:33.807' AS DateTime), NULL, NULL, N'zs', NULL, 0, N'')
INSERT [dbo].[TB_BILL] ([UID], [BillNum], [SourceBillNum], [BillType], [SubBillType], [BillTime], [StartTime], [FinishTime], [OperName], [SplyId], [State], [Remark]) VALUES (9, N'SR-20161209-0004', N'MD-20161209-0003', 107, 30114, CAST(N'2016-12-09T15:48:31.563' AS DateTime), NULL, NULL, N'zs', NULL, 0, N'')
SET IDENTITY_INSERT [dbo].[TB_BILL] OFF
SET IDENTITY_INSERT [dbo].[TB_IN] ON 

INSERT [dbo].[TB_IN] ([UID], [BillNum], [PoBillNum], [PoLineNum], [PartCode], [Batch], [ToLocCode], [Qty], [UnitPrice], [ProduceDate], [State], [Remark]) VALUES (3, N'MR0001', N'PO0001', 1, N'Part0001', N'161212', N'KW001', 100.0000, 12.0000, CAST(N'2016-12-06T11:01:11.087' AS DateTime), 0, NULL)
SET IDENTITY_INSERT [dbo].[TB_IN] OFF
SET IDENTITY_INSERT [dbo].[TB_INVENTORY_DETAIL] ON 

INSERT [dbo].[TB_INVENTORY_DETAIL] ([UID], [BillNum], [CheckLocCode], [PartCode], [Batch], [BookQty], [CheckQty], [CheckTime], [OperName]) VALUES (2, N'IV-20161210-0002', N'KW001', N'LJ001', N'16101001', 18.0000, 20.0000, CAST(N'2016-12-10T10:17:40.000' AS DateTime), N'')
INSERT [dbo].[TB_INVENTORY_DETAIL] ([UID], [BillNum], [CheckLocCode], [PartCode], [Batch], [BookQty], [CheckQty], [CheckTime], [OperName]) VALUES (3, N'IV-20161210-0002', N'KW001', N'LJ001', N'16101002', 11.0000, 10.0000, CAST(N'2016-12-10T10:17:40.000' AS DateTime), N'')
SET IDENTITY_INSERT [dbo].[TB_INVENTORY_DETAIL] OFF
SET IDENTITY_INSERT [dbo].[TB_INVENTORY_LOC] ON 

INSERT [dbo].[TB_INVENTORY_LOC] ([UID], [BillNum], [LocCode], [OperName], [BillTime], [CheckBeginTime], [CheckEndTime], [State], [Remark]) VALUES (1, N'IV-20161210-0002', N'KW001', NULL, CAST(N'2016-12-10T10:17:38.247' AS DateTime), NULL, NULL, 0, NULL)
SET IDENTITY_INSERT [dbo].[TB_INVENTORY_LOC] OFF
SET IDENTITY_INSERT [dbo].[TB_OTHER_IN] ON 

INSERT [dbo].[TB_OTHER_IN] ([UID], [BillNum], [PartCode], [Batch], [ToLocCode], [Qty], [ProduceDate], [UnitPrice], [Amount], [Remark]) VALUES (1, N'OI-20161209-0002', N'LJ001', N'16101002', N'KW001', 11.0000, CAST(N'2016-10-10T00:00:00.000' AS DateTime), 2.3000, 25.3000, NULL)
SET IDENTITY_INSERT [dbo].[TB_OTHER_IN] OFF
SET IDENTITY_INSERT [dbo].[TB_OTHER_OUT] ON 

INSERT [dbo].[TB_OTHER_OUT] ([UID], [BillNum], [PartCode], [Batch], [FromLocCode], [Qty], [UnitPrice], [Amount], [Remark]) VALUES (1, N'OI-20161209-0008', N'LJ001', N'16101001', N'KW001', 3.0000, 2.5000, 7.5000, NULL)
SET IDENTITY_INSERT [dbo].[TB_OTHER_OUT] OFF
SET IDENTITY_INSERT [dbo].[TB_OUT] ON 

INSERT [dbo].[TB_OUT] ([UID], [BillNum], [PartCode], [Batch], [FromLocCode], [BillQty], [OutQty], [UnitPrice], [Amount], [DeptCode], [ProjectCode], [WorklineCode], [EqptCode], [AskUser], [AskTime], [ConfirmUser], [ConfirmTime], [TakeType], [TakeUser], [TakeTime], [State], [Remark]) VALUES (1, N'MD-20161209-0002', N'LJ001', N'16101001', N'KW001', NULL, 1.0000, 2.5000, 2.5000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, N'zhangs', CAST(N'2016-12-09T14:20:13.487' AS DateTime), 0, NULL)
INSERT [dbo].[TB_OUT] ([UID], [BillNum], [PartCode], [Batch], [FromLocCode], [BillQty], [OutQty], [UnitPrice], [Amount], [DeptCode], [ProjectCode], [WorklineCode], [EqptCode], [AskUser], [AskTime], [ConfirmUser], [ConfirmTime], [TakeType], [TakeUser], [TakeTime], [State], [Remark]) VALUES (2, N'MD-20161209-0003', N'LJ001', N'16101001', N'KW001', NULL, 2.0000, 2.5000, 5.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, N'zss', CAST(N'2016-12-09T14:22:56.390' AS DateTime), 0, NULL)
SET IDENTITY_INSERT [dbo].[TB_OUT] OFF
SET IDENTITY_INSERT [dbo].[TB_PO] ON 

INSERT [dbo].[TB_PO] ([UID], [BillNum], [Line], [PartCode], [BillQty], [ArrialQty], [State], [Remark]) VALUES (2, N'MR0001', 1, N'Part0001', 100.0000, 0.0000, 0, NULL)
INSERT [dbo].[TB_PO] ([UID], [BillNum], [Line], [PartCode], [BillQty], [ArrialQty], [State], [Remark]) VALUES (1, N'PO0001', 1, N'Part0001', 100.0000, 0.0000, 0, NULL)
SET IDENTITY_INSERT [dbo].[TB_PO] OFF
SET IDENTITY_INSERT [dbo].[TB_RETURN] ON 

INSERT [dbo].[TB_RETURN] ([UID], [BillNum], [PartCode], [Batch], [FromLocCode], [ToLocCode], [OutQty], [InQty], [UnitPrice], [Amount], [DeptCode], [ProjectCode], [WorklineCode], [EqptCode], [AskUser], [AskTime], [ConfirmUser], [ConfirmTime], [ReturnUser], [ReturnTime], [TakeUser], [TakeTime], [State], [Remark]) VALUES (1, N'SR-20161209-0004', N'LJ001', N'16101001', N'', N'KW001', 2.0000, 1.0000, 2.5000, 5.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'zss', CAST(N'2016-12-09T15:48:28.547' AS DateTime), N'zss', CAST(N'2016-12-09T14:22:56.390' AS DateTime), 0, NULL)
SET IDENTITY_INSERT [dbo].[TB_RETURN] OFF
SET IDENTITY_INSERT [dbo].[TB_STOCK_MOVE] ON 

INSERT [dbo].[TB_STOCK_MOVE] ([UID], [BillNum], [PartCode], [Batch], [FromLocCode], [ToLocCode], [Qty], [Remark]) VALUES (3, N'SM-20161209-0009', N'LJ001', N'16101001', N'KW001', N'KW002', 5.0000, NULL)
SET IDENTITY_INSERT [dbo].[TB_STOCK_MOVE] OFF
SET IDENTITY_INSERT [dbo].[TL_BASEDATA] ON 

INSERT [dbo].[TL_BASEDATA] ([UID], [OperName], [LogTime], [LogType], [DataType], [OldValue], [NewValue], [Remark]) VALUES (1, N'', CAST(N'2016-12-06T15:10:37.230' AS DateTime), N'Add', N'TA_STORE_LOCATION', N'', N'UID:0,LocCode:123,WhseCode:123,GroupCode:,LocType:,State:0,Remark:11111,', NULL)
INSERT [dbo].[TL_BASEDATA] ([UID], [OperName], [LogTime], [LogType], [DataType], [OldValue], [NewValue], [Remark]) VALUES (2, N'', CAST(N'2016-12-06T15:11:32.427' AS DateTime), N'Update', N'TA_STORE_LOCATION', N'UID:1,LocCode:123,WhseCode:123,GroupCode:,LocType:,State:0,Remark:11111,', N'UID:1,LocCode:123,WhseCode:123,GroupCode:,LocType:,State:0,Remark:222,', NULL)
INSERT [dbo].[TL_BASEDATA] ([UID], [OperName], [LogTime], [LogType], [DataType], [OldValue], [NewValue], [Remark]) VALUES (3, N'', CAST(N'2016-12-06T16:34:38.300' AS DateTime), N'Delete', N'TA_STORE_LOCATION', N'UID:1,LocCode:123,WhseCode:123,GroupCode:,LocType:,State:0,Remark:222,', N'', NULL)
INSERT [dbo].[TL_BASEDATA] ([UID], [OperName], [LogTime], [LogType], [DataType], [OldValue], [NewValue], [Remark]) VALUES (4, N'', CAST(N'2016-12-06T17:02:56.943' AS DateTime), N'Add', N'TA_STORE_LOCATION', N'', N'UID:0,LocCode:234,WhseCode:234,GroupCode:,LocType:,State:0,Remark:,', NULL)
INSERT [dbo].[TL_BASEDATA] ([UID], [OperName], [LogTime], [LogType], [DataType], [OldValue], [NewValue], [Remark]) VALUES (5, N'', CAST(N'2016-12-06T17:03:06.663' AS DateTime), N'Delete', N'TA_STORE_LOCATION', N'UID:2,LocCode:234,WhseCode:234,GroupCode:,LocType:,State:0,Remark:,', N'', NULL)
INSERT [dbo].[TL_BASEDATA] ([UID], [OperName], [LogTime], [LogType], [DataType], [OldValue], [NewValue], [Remark]) VALUES (6, N'', CAST(N'2016-12-07T14:47:58.007' AS DateTime), N'Add', N'TA_STORE_LOCATION', N'', N'UID:0,LocCode:11,WhseCode:11,GroupCode:11,LocType:,State:0,Remark:,', NULL)
INSERT [dbo].[TL_BASEDATA] ([UID], [OperName], [LogTime], [LogType], [DataType], [OldValue], [NewValue], [Remark]) VALUES (7, N'', CAST(N'2016-12-08T17:19:52.333' AS DateTime), N'Add', N'TA_STORE_LOCATION', N'', N'UID:0,LocCode:KW001,WhseCode:11,GroupCode:11,LocType:,State:0,Remark:,', NULL)
INSERT [dbo].[TL_BASEDATA] ([UID], [OperName], [LogTime], [LogType], [DataType], [OldValue], [NewValue], [Remark]) VALUES (8, N'', CAST(N'2016-12-09T09:09:06.013' AS DateTime), N'Add', N'TA_STORE_WHSE', N'', N'UID:0,WhseCode:CK001,WhseName:备件库,WhseAddress:123123,WhseType:第三方仓库,State:0,Remark:,', NULL)
INSERT [dbo].[TL_BASEDATA] ([UID], [OperName], [LogTime], [LogType], [DataType], [OldValue], [NewValue], [Remark]) VALUES (9, N'', CAST(N'2016-12-09T09:09:37.377' AS DateTime), N'Delete', N'TA_STORE_LOCATION', N'UID:3,LocCode:11,WhseCode:11,GroupCode:11,LocType:,State:0,Remark:,', N'', NULL)
INSERT [dbo].[TL_BASEDATA] ([UID], [OperName], [LogTime], [LogType], [DataType], [OldValue], [NewValue], [Remark]) VALUES (10, N'', CAST(N'2016-12-09T09:09:37.377' AS DateTime), N'Update', N'TA_STORE_LOCATION', N'UID:4,LocCode:KW001,WhseCode:11,GroupCode:11,LocType:,State:0,Remark:,', N'UID:4,LocCode:KW001,WhseCode:CK001,GroupCode:11,LocType:,State:0,Remark:,', NULL)
INSERT [dbo].[TL_BASEDATA] ([UID], [OperName], [LogTime], [LogType], [DataType], [OldValue], [NewValue], [Remark]) VALUES (11, N'', CAST(N'2016-12-09T09:11:23.410' AS DateTime), N'Add', N'TA_PART', N'', N'UID:0,PartCode:LJ001,ErpPartCode:LJ001,PartDesc1:零件描述1,PartDesc2:零件描述2,Unit:个,BM:BM,PartType:0,MaxQty:50,MinQty:20,SafeQty:30,IdleDays:0,SplyPackQty:0,ValidityDays:200,State:0,Remark:,Picture:,', NULL)
INSERT [dbo].[TL_BASEDATA] ([UID], [OperName], [LogTime], [LogType], [DataType], [OldValue], [NewValue], [Remark]) VALUES (12, N'', CAST(N'2016-12-09T09:12:20.483' AS DateTime), N'Add', N'TA_WORKLINE', N'', N'UID:0,WorklineCode:Line001,WokrlineName:生产线001,State:0,Remark:,', NULL)
INSERT [dbo].[TL_BASEDATA] ([UID], [OperName], [LogTime], [LogType], [DataType], [OldValue], [NewValue], [Remark]) VALUES (13, N'', CAST(N'2016-12-09T16:58:04.377' AS DateTime), N'Add', N'TA_STORE_LOCATION', N'', N'UID:0,LocCode:KW002,WhseCode:备件库,GroupCode:11,LocType:,State:0,Remark:,', NULL)
SET IDENTITY_INSERT [dbo].[TL_BASEDATA] OFF
SET IDENTITY_INSERT [dbo].[TL_BILL] ON 

INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (1, N'张三', CAST(N'2016-12-06T14:50:03.740' AS DateTime), N'Add', N'ASK0001', 104, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (2, N'张三', CAST(N'2016-12-06T14:50:07.783' AS DateTime), N'Add', N'ASK0001', 104, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (3, N'张三', CAST(N'2016-12-06T14:50:55.857' AS DateTime), N'Add', N'ASK0001', 104, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (4, N'张三', CAST(N'2016-12-06T14:53:59.050' AS DateTime), N'Add', N'ASK0001', 104, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (5, N'张三', CAST(N'2016-12-06T15:54:45.713' AS DateTime), N'Add', N'ASK0001', 104, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (6, N'张三SSS', CAST(N'2016-12-06T15:55:05.823' AS DateTime), N'Add', N'ASK0001', 104, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (7, N'张三SSS', CAST(N'2016-12-06T15:55:26.957' AS DateTime), N'Add', N'ASK0001', 104, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (8, N'张三SSS', CAST(N'2016-12-06T15:55:49.377' AS DateTime), N'Add', N'ASK0001', 104, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (9, N'张三SSS', CAST(N'2016-12-06T15:57:36.403' AS DateTime), N'Add', N'ASK0001', 104, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (10, N'张三SSS', CAST(N'2016-12-06T15:58:04.870' AS DateTime), N'Add', N'ASK0001', 104, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (11, N'张三SSS', CAST(N'2016-12-06T16:04:57.683' AS DateTime), N'Add', N'ASK0001', 104, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (12, N'张三SSS', CAST(N'2016-12-06T16:20:22.547' AS DateTime), N'Add', N'ASK0001', 104, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (13, N'张三SSS', CAST(N'2016-12-06T16:44:38.577' AS DateTime), N'Add', N'ASK0001', 104, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (14, N'张三SSS', CAST(N'2016-12-06T16:47:01.110' AS DateTime), N'Add', N'ASK0001', 104, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (15, N'张三SSS', CAST(N'2016-12-06T17:08:19.103' AS DateTime), N'Add', N'ASK0001', 104, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (16, N'张三SSS', CAST(N'2016-12-06T17:08:52.730' AS DateTime), N'Add', N'ASK0001', 104, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (17, N'张三SSS', CAST(N'2016-12-06T17:09:02.053' AS DateTime), N'Add', N'ASK0001', 104, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (18, N'张三SSS', CAST(N'2016-12-06T17:09:25.693' AS DateTime), N'Add', N'ASK0001', 104, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (19, N'123', CAST(N'2016-12-06T17:12:55.980' AS DateTime), N'Add', N'MA-20161206-0001', 104, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (20, N'123', CAST(N'2016-12-07T14:43:11.477' AS DateTime), N'Add', N'MA-20161206-0001', 1041, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (21, N'张三SSS', CAST(N'2016-12-09T10:24:40.440' AS DateTime), N'Add', N'ASK0001', 104, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (22, N'张三', CAST(N'2016-12-09T10:31:28.960' AS DateTime), N'Add', N'MA-20161209-0001', 104, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (23, N'张三', CAST(N'2016-12-09T10:35:40.683' AS DateTime), N'Add', N'MA-20161209-0001', 104, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (24, N'zhangsan', CAST(N'2016-12-09T14:20:27.430' AS DateTime), N'Add', N'MD-20161209-0002', 103, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (25, N'zs', CAST(N'2016-12-09T14:23:06.203' AS DateTime), N'Add', N'MD-20161209-0003', 103, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (26, N'zs', CAST(N'2016-12-09T14:23:36.157' AS DateTime), N'Add', N'MD-20161209-0003', 103, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (27, N'zs', CAST(N'2016-12-09T14:34:53.840' AS DateTime), N'Add', N'MD-20161209-0003', 103, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (28, N'zs', CAST(N'2016-12-09T14:35:14.587' AS DateTime), N'Add', N'MD-20161209-0003', 103, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (29, N'zs', CAST(N'2016-12-09T14:40:46.677' AS DateTime), N'Add', N'MD-20161209-0003', 103, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (30, N'zs', CAST(N'2016-12-09T15:05:03.643' AS DateTime), N'Finish', N'MD-20161209-0003', 103, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (31, N'zhangsan', CAST(N'2016-12-09T15:06:54.433' AS DateTime), N'Finish', N'MD-20161209-0002', 103, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (32, N'zs', CAST(N'2016-12-09T15:12:09.077' AS DateTime), N'Finish', N'MD-20161209-0003', 103, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (33, N'zs', CAST(N'2016-12-09T15:29:10.667' AS DateTime), N'Add', N'MD-20161209-0003', 103, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (34, N'zs', CAST(N'2016-12-09T15:29:10.670' AS DateTime), N'Finish', N'MD-20161209-0003', 103, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (35, N'zhangsan', CAST(N'2016-12-09T15:29:33.110' AS DateTime), N'Add', N'MD-20161209-0002', 103, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (36, N'zhangsan', CAST(N'2016-12-09T15:29:33.110' AS DateTime), N'Finish', N'MD-20161209-0002', 103, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (37, N'zs', CAST(N'2016-12-09T15:43:33.823' AS DateTime), N'Add', N'SR-20161209-0002', 107, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (38, N'zs', CAST(N'2016-12-09T15:48:35.703' AS DateTime), N'Add', N'SR-20161209-0004', 107, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (39, N'zs', CAST(N'2016-12-09T16:06:35.187' AS DateTime), N'Add', N'SR-20161209-0004', 107, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (42, N'zhangs', CAST(N'2016-12-09T18:51:06.493' AS DateTime), N'Add', N'SM-20161209-0009', 302, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (43, N'zhangs', CAST(N'2016-12-09T19:48:48.150' AS DateTime), N'Add', N'OI-20161209-0002', 301, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (44, N'zhangs', CAST(N'2016-12-09T20:34:08.733' AS DateTime), N'Add', N'OI-20161209-0008', 301, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (45, N'zhangs', CAST(N'2016-12-10T10:17:40.467' AS DateTime), N'Add', N'IV-20161210-0002', 305, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (46, N'zhangs', CAST(N'2016-12-10T10:34:37.713' AS DateTime), N'Add', N'IV-20161210-0002', 305, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (47, N'zhangs', CAST(N'2016-12-10T11:29:42.267' AS DateTime), N'Add', N'IV-20161210-0002', 305, NULL, NULL)
INSERT [dbo].[TL_BILL] ([UID], [OperName], [LogTime], [LogType], [BillNum], [BillType], [SubBillType], [Message]) VALUES (48, N'zhangs', CAST(N'2016-12-10T11:29:42.267' AS DateTime), N'Finish', N'IV-20161210-0002', 305, NULL, NULL)
SET IDENTITY_INSERT [dbo].[TL_BILL] OFF
SET IDENTITY_INSERT [dbo].[TL_NOTIFY] ON 

INSERT [dbo].[TL_NOTIFY] ([UID], [NotifyType], [NotifyMessage], [BillNum], [CreateOperName], [CreateTime], [CloseOperName], [CloseTime], [State]) VALUES (1, 0, N'', N'ASK0001', N'张三', CAST(N'2016-12-06T14:50:03.743' AS DateTime), N'', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[TL_NOTIFY] ([UID], [NotifyType], [NotifyMessage], [BillNum], [CreateOperName], [CreateTime], [CloseOperName], [CloseTime], [State]) VALUES (2, 0, N'', N'ASK0001', N'张三', CAST(N'2016-12-06T14:50:07.783' AS DateTime), N'', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[TL_NOTIFY] ([UID], [NotifyType], [NotifyMessage], [BillNum], [CreateOperName], [CreateTime], [CloseOperName], [CloseTime], [State]) VALUES (3, 0, N'', N'ASK0001', N'张三', CAST(N'2016-12-06T14:50:55.857' AS DateTime), N'', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[TL_NOTIFY] ([UID], [NotifyType], [NotifyMessage], [BillNum], [CreateOperName], [CreateTime], [CloseOperName], [CloseTime], [State]) VALUES (4, 0, N'', N'ASK0001', N'张三', CAST(N'2016-12-06T14:53:59.053' AS DateTime), N'', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[TL_NOTIFY] ([UID], [NotifyType], [NotifyMessage], [BillNum], [CreateOperName], [CreateTime], [CloseOperName], [CloseTime], [State]) VALUES (5, 0, N'', N'ASK0001', N'张三', CAST(N'2016-12-06T15:54:45.717' AS DateTime), N'', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[TL_NOTIFY] ([UID], [NotifyType], [NotifyMessage], [BillNum], [CreateOperName], [CreateTime], [CloseOperName], [CloseTime], [State]) VALUES (6, 0, N'', N'ASK0001', N'张三SSS', CAST(N'2016-12-06T15:55:05.823' AS DateTime), N'', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[TL_NOTIFY] ([UID], [NotifyType], [NotifyMessage], [BillNum], [CreateOperName], [CreateTime], [CloseOperName], [CloseTime], [State]) VALUES (7, 0, N'', N'ASK0001', N'张三SSS', CAST(N'2016-12-06T15:55:26.957' AS DateTime), N'', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[TL_NOTIFY] ([UID], [NotifyType], [NotifyMessage], [BillNum], [CreateOperName], [CreateTime], [CloseOperName], [CloseTime], [State]) VALUES (8, 0, N'', N'ASK0001', N'张三SSS', CAST(N'2016-12-06T15:55:49.377' AS DateTime), N'', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[TL_NOTIFY] ([UID], [NotifyType], [NotifyMessage], [BillNum], [CreateOperName], [CreateTime], [CloseOperName], [CloseTime], [State]) VALUES (9, 0, N'', N'ASK0001', N'张三SSS', CAST(N'2016-12-06T15:57:36.403' AS DateTime), N'', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[TL_NOTIFY] ([UID], [NotifyType], [NotifyMessage], [BillNum], [CreateOperName], [CreateTime], [CloseOperName], [CloseTime], [State]) VALUES (10, 0, N'', N'ASK0001', N'张三SSS', CAST(N'2016-12-06T15:58:04.870' AS DateTime), N'', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[TL_NOTIFY] ([UID], [NotifyType], [NotifyMessage], [BillNum], [CreateOperName], [CreateTime], [CloseOperName], [CloseTime], [State]) VALUES (11, 0, N'', N'ASK0001', N'张三SSS', CAST(N'2016-12-06T16:04:57.723' AS DateTime), N'', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[TL_NOTIFY] ([UID], [NotifyType], [NotifyMessage], [BillNum], [CreateOperName], [CreateTime], [CloseOperName], [CloseTime], [State]) VALUES (12, 0, N'', N'ASK0001', N'张三SSS', CAST(N'2016-12-06T16:20:22.550' AS DateTime), N'', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[TL_NOTIFY] ([UID], [NotifyType], [NotifyMessage], [BillNum], [CreateOperName], [CreateTime], [CloseOperName], [CloseTime], [State]) VALUES (13, 0, N'', N'ASK0001', N'张三SSS', CAST(N'2016-12-06T16:44:38.610' AS DateTime), N'', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[TL_NOTIFY] ([UID], [NotifyType], [NotifyMessage], [BillNum], [CreateOperName], [CreateTime], [CloseOperName], [CloseTime], [State]) VALUES (14, 0, N'', N'ASK0001', N'张三SSS', CAST(N'2016-12-06T16:47:01.137' AS DateTime), N'', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[TL_NOTIFY] ([UID], [NotifyType], [NotifyMessage], [BillNum], [CreateOperName], [CreateTime], [CloseOperName], [CloseTime], [State]) VALUES (15, 0, N'', N'ASK0001', N'张三SSS', CAST(N'2016-12-06T17:08:19.113' AS DateTime), N'', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[TL_NOTIFY] ([UID], [NotifyType], [NotifyMessage], [BillNum], [CreateOperName], [CreateTime], [CloseOperName], [CloseTime], [State]) VALUES (16, 0, N'', N'ASK0001', N'张三SSS', CAST(N'2016-12-06T17:08:52.733' AS DateTime), N'', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[TL_NOTIFY] ([UID], [NotifyType], [NotifyMessage], [BillNum], [CreateOperName], [CreateTime], [CloseOperName], [CloseTime], [State]) VALUES (17, 0, N'', N'ASK0001', N'张三SSS', CAST(N'2016-12-06T17:09:02.057' AS DateTime), N'', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[TL_NOTIFY] ([UID], [NotifyType], [NotifyMessage], [BillNum], [CreateOperName], [CreateTime], [CloseOperName], [CloseTime], [State]) VALUES (18, 0, N'', N'ASK0001', N'张三SSS', CAST(N'2016-12-06T17:09:25.697' AS DateTime), N'', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[TL_NOTIFY] ([UID], [NotifyType], [NotifyMessage], [BillNum], [CreateOperName], [CreateTime], [CloseOperName], [CloseTime], [State]) VALUES (19, 0, N'', N'MA-20161206-0001', N'123', CAST(N'2016-12-06T17:12:55.980' AS DateTime), N'', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[TL_NOTIFY] ([UID], [NotifyType], [NotifyMessage], [BillNum], [CreateOperName], [CreateTime], [CloseOperName], [CloseTime], [State]) VALUES (20, 0, N'', N'MA-20161206-0001', N'123', CAST(N'2016-12-07T14:43:11.493' AS DateTime), N'', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[TL_NOTIFY] ([UID], [NotifyType], [NotifyMessage], [BillNum], [CreateOperName], [CreateTime], [CloseOperName], [CloseTime], [State]) VALUES (21, 0, N'', N'ASK0001', N'张三SSS', CAST(N'2016-12-09T10:24:40.460' AS DateTime), N'', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[TL_NOTIFY] ([UID], [NotifyType], [NotifyMessage], [BillNum], [CreateOperName], [CreateTime], [CloseOperName], [CloseTime], [State]) VALUES (22, 0, N'', N'MA-20161209-0001', N'张三', CAST(N'2016-12-09T10:31:28.967' AS DateTime), N'', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[TL_NOTIFY] ([UID], [NotifyType], [NotifyMessage], [BillNum], [CreateOperName], [CreateTime], [CloseOperName], [CloseTime], [State]) VALUES (23, 0, N'', N'MA-20161209-0001', N'张三', CAST(N'2016-12-09T10:35:40.693' AS DateTime), N'', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[TL_NOTIFY] ([UID], [NotifyType], [NotifyMessage], [BillNum], [CreateOperName], [CreateTime], [CloseOperName], [CloseTime], [State]) VALUES (24, 5, N'', N'IV-20161210-0002', N'zhangs', CAST(N'2016-12-10T10:17:40.470' AS DateTime), N'', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[TL_NOTIFY] ([UID], [NotifyType], [NotifyMessage], [BillNum], [CreateOperName], [CreateTime], [CloseOperName], [CloseTime], [State]) VALUES (25, 5, N'', N'IV-20161210-0002', N'zhangs', CAST(N'2016-12-10T10:34:37.713' AS DateTime), N'', CAST(N'1970-01-01T00:00:00.000' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[TL_NOTIFY] OFF
SET IDENTITY_INSERT [dbo].[TL_OPER] ON 

INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (1, N'admin', N'超级管理员', CAST(N'2016-12-06T09:02:06.423' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (2, N'admin', N'超级管理员', CAST(N'2016-12-06T09:02:39.880' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (3, N'admin', N'超级管理员', CAST(N'2016-12-06T09:03:01.317' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (4, N'admin', N'超级管理员', CAST(N'2016-12-06T09:05:24.807' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (5, N'admin', N'超级管理员', CAST(N'2016-12-06T09:06:16.483' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (6, N'admin', N'超级管理员', CAST(N'2016-12-06T09:16:07.583' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (7, N'admin', N'超级管理员', CAST(N'2016-12-06T09:16:53.567' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (8, N'admin', N'超级管理员', CAST(N'2016-12-06T09:19:11.597' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (9, N'admin', N'超级管理员', CAST(N'2016-12-06T09:21:53.027' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (10, N'admin', N'超级管理员', CAST(N'2016-12-06T09:32:05.867' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (11, N'admin', N'超级管理员', CAST(N'2016-12-06T09:34:56.147' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (12, N'admin', N'超级管理员', CAST(N'2016-12-06T09:37:21.923' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (13, N'admin', N'超级管理员', CAST(N'2016-12-06T09:40:27.260' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (14, N'admin', N'超级管理员', CAST(N'2016-12-06T09:57:26.233' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (15, N'admin', N'超级管理员', CAST(N'2016-12-06T10:56:10.480' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (16, N'admin', N'超级管理员', CAST(N'2016-12-06T11:08:57.683' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (17, N'admin', N'超级管理员', CAST(N'2016-12-06T11:17:08.897' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (18, N'admin', N'超级管理员', CAST(N'2016-12-06T11:19:56.097' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (19, N'admin', N'超级管理员', CAST(N'2016-12-06T11:25:25.413' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (20, N'admin', N'超级管理员', CAST(N'2016-12-06T11:27:41.827' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (21, N'admin', N'超级管理员', CAST(N'2016-12-06T14:25:15.750' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (22, N'admin', N'超级管理员', CAST(N'2016-12-06T14:41:54.087' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (23, N'admin', N'超级管理员', CAST(N'2016-12-06T14:44:37.660' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (24, N'admin', N'超级管理员', CAST(N'2016-12-06T14:47:16.253' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (25, N'admin', N'超级管理员', CAST(N'2016-12-06T14:49:43.223' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (26, N'admin', N'超级管理员', CAST(N'2016-12-06T14:53:07.087' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (27, N'admin', N'超级管理员', CAST(N'2016-12-06T15:07:27.107' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (28, N'admin', N'超级管理员', CAST(N'2016-12-06T15:07:54.020' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (29, N'admin', N'超级管理员', CAST(N'2016-12-06T15:14:00.700' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (30, N'admin', N'超级管理员', CAST(N'2016-12-06T15:21:27.460' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (31, N'admin', N'超级管理员', CAST(N'2016-12-06T15:53:25.587' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (32, N'admin', N'超级管理员', CAST(N'2016-12-06T15:54:03.947' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (33, N'admin', N'超级管理员', CAST(N'2016-12-06T16:01:53.460' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (34, N'admin', N'超级管理员', CAST(N'2016-12-06T16:04:43.470' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (35, N'admin', N'超级管理员', CAST(N'2016-12-06T16:15:48.677' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (36, N'admin', N'超级管理员', CAST(N'2016-12-06T16:19:08.910' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (37, N'admin', N'超级管理员', CAST(N'2016-12-06T16:22:45.547' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (38, N'admin', N'超级管理员', CAST(N'2016-12-06T16:25:16.753' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (39, N'admin', N'超级管理员', CAST(N'2016-12-06T16:30:10.740' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (40, N'admin', N'超级管理员', CAST(N'2016-12-06T16:31:30.357' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (41, N'admin', N'超级管理员', CAST(N'2016-12-06T16:34:20.243' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (42, N'admin', N'超级管理员', CAST(N'2016-12-06T16:42:51.030' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (43, N'admin', N'超级管理员', CAST(N'2016-12-06T16:44:23.767' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (44, N'admin', N'超级管理员', CAST(N'2016-12-06T16:46:18.920' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (45, N'admin', N'超级管理员', CAST(N'2016-12-06T16:51:20.077' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (46, N'admin', N'超级管理员', CAST(N'2016-12-06T16:53:25.887' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (47, N'admin', N'超级管理员', CAST(N'2016-12-06T17:02:26.610' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (48, N'admin', N'超级管理员', CAST(N'2016-12-06T17:04:21.247' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (49, N'admin', N'超级管理员', CAST(N'2016-12-06T17:08:09.157' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (50, N'admin', N'超级管理员', CAST(N'2016-12-06T17:10:47.350' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (51, N'admin', N'超级管理员', CAST(N'2016-12-07T14:40:58.133' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (52, N'admin', N'超级管理员', CAST(N'2016-12-07T14:46:53.967' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (53, N'admin', N'超级管理员', CAST(N'2016-12-07T14:58:53.507' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (54, N'admin', N'超级管理员', CAST(N'2016-12-07T15:26:11.597' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (55, N'admin', N'超级管理员', CAST(N'2016-12-07T15:31:56.523' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (56, N'admin', N'超级管理员', CAST(N'2016-12-07T15:33:30.127' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (57, N'admin', N'超级管理员', CAST(N'2016-12-07T15:34:24.853' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (58, N'admin', N'超级管理员', CAST(N'2016-12-07T15:35:17.350' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (59, N'admin', N'超级管理员', CAST(N'2016-12-07T15:53:23.287' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (60, N'admin', N'超级管理员', CAST(N'2016-12-07T16:13:56.267' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (61, N'admin', N'超级管理员', CAST(N'2016-12-07T21:33:08.583' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (62, N'admin', N'超级管理员', CAST(N'2016-12-08T16:07:22.883' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (63, N'admin', N'超级管理员', CAST(N'2016-12-08T16:08:11.967' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (64, N'admin', N'超级管理员', CAST(N'2016-12-08T16:11:26.197' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (65, N'admin', N'超级管理员', CAST(N'2016-12-08T16:13:58.130' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (66, N'admin', N'超级管理员', CAST(N'2016-12-08T16:16:06.527' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (67, N'admin', N'超级管理员', CAST(N'2016-12-08T16:18:38.980' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (68, N'admin', N'超级管理员', CAST(N'2016-12-08T17:18:53.030' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (69, N'admin', N'超级管理员', CAST(N'2016-12-08T17:20:55.007' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (70, N'admin', N'超级管理员', CAST(N'2016-12-08T17:22:10.360' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (71, N'admin', N'超级管理员', CAST(N'2016-12-08T17:23:42.623' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (72, N'admin', N'超级管理员', CAST(N'2016-12-08T17:50:29.723' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (73, N'admin', N'超级管理员', CAST(N'2016-12-08T20:29:04.977' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (74, N'admin', N'超级管理员', CAST(N'2016-12-09T09:08:14.783' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (75, N'admin', N'超级管理员', CAST(N'2016-12-09T09:36:45.270' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (76, N'admin', N'超级管理员', CAST(N'2016-12-09T09:39:11.100' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (77, N'admin', N'超级管理员', CAST(N'2016-12-09T09:40:42.770' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (78, N'admin', N'超级管理员', CAST(N'2016-12-09T09:42:06.613' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (79, N'admin', N'超级管理员', CAST(N'2016-12-09T09:46:11.433' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (80, N'admin', N'超级管理员', CAST(N'2016-12-09T10:01:52.820' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (81, N'admin', N'超级管理员', CAST(N'2016-12-09T10:03:26.653' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (82, N'admin', N'超级管理员', CAST(N'2016-12-09T10:05:26.223' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (83, N'admin', N'超级管理员', CAST(N'2016-12-09T10:13:03.353' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (84, N'admin', N'超级管理员', CAST(N'2016-12-09T10:17:32.887' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (85, N'admin', N'超级管理员', CAST(N'2016-12-09T10:23:23.827' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (86, N'admin', N'超级管理员', CAST(N'2016-12-09T10:27:08.787' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (87, N'admin', N'超级管理员', CAST(N'2016-12-09T10:28:46.737' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (88, N'admin', N'超级管理员', CAST(N'2016-12-09T10:29:38.967' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (89, N'admin', N'超级管理员', CAST(N'2016-12-09T10:32:21.973' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (90, N'admin', N'超级管理员', CAST(N'2016-12-09T10:34:45.650' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (91, N'admin', N'超级管理员', CAST(N'2016-12-09T10:36:43.007' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (92, N'admin', N'超级管理员', CAST(N'2016-12-09T10:58:26.820' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (93, N'admin', N'超级管理员', CAST(N'2016-12-09T10:59:34.720' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (94, N'admin', N'超级管理员', CAST(N'2016-12-09T11:02:43.750' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (95, N'admin', N'超级管理员', CAST(N'2016-12-09T11:21:38.390' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (96, N'admin', N'超级管理员', CAST(N'2016-12-09T11:26:15.370' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (97, N'admin', N'超级管理员', CAST(N'2016-12-09T11:28:10.787' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (98, N'admin', N'超级管理员', CAST(N'2016-12-09T11:29:01.420' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (99, N'admin', N'超级管理员', CAST(N'2016-12-09T11:31:00.617' AS DateTime), N'Login', N'JH', N'登录成功')
GO
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (100, N'admin', N'超级管理员', CAST(N'2016-12-09T11:32:47.067' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (101, N'admin', N'超级管理员', CAST(N'2016-12-09T11:42:09.733' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (102, N'admin', N'超级管理员', CAST(N'2016-12-09T11:46:57.577' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (103, N'admin', N'超级管理员', CAST(N'2016-12-09T11:53:49.757' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (104, N'admin', N'超级管理员', CAST(N'2016-12-09T11:55:26.947' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (105, N'admin', N'超级管理员', CAST(N'2016-12-09T13:29:44.717' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (106, N'admin', N'超级管理员', CAST(N'2016-12-09T13:36:05.023' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (107, N'admin', N'超级管理员', CAST(N'2016-12-09T14:00:04.960' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (108, N'admin', N'超级管理员', CAST(N'2016-12-09T14:05:59.003' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (109, N'admin', N'超级管理员', CAST(N'2016-12-09T14:08:53.767' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (110, N'admin', N'超级管理员', CAST(N'2016-12-09T14:16:26.980' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (111, N'admin', N'超级管理员', CAST(N'2016-12-09T14:19:44.017' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (112, N'admin', N'超级管理员', CAST(N'2016-12-09T14:22:19.847' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (113, N'admin', N'超级管理员', CAST(N'2016-12-09T14:34:28.667' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (114, N'admin', N'超级管理员', CAST(N'2016-12-09T14:40:32.430' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (115, N'admin', N'超级管理员', CAST(N'2016-12-09T14:41:33.177' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (116, N'admin', N'超级管理员', CAST(N'2016-12-09T14:45:01.147' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (117, N'admin', N'超级管理员', CAST(N'2016-12-09T14:49:20.270' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (118, N'admin', N'超级管理员', CAST(N'2016-12-09T14:50:35.907' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (119, N'admin', N'超级管理员', CAST(N'2016-12-09T15:00:22.933' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (120, N'admin', N'超级管理员', CAST(N'2016-12-09T15:02:44.000' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (121, N'admin', N'超级管理员', CAST(N'2016-12-09T15:04:54.930' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (122, N'admin', N'超级管理员', CAST(N'2016-12-09T15:05:41.547' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (123, N'admin', N'超级管理员', CAST(N'2016-12-09T15:09:34.077' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (124, N'admin', N'超级管理员', CAST(N'2016-12-09T15:11:39.227' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (125, N'admin', N'超级管理员', CAST(N'2016-12-09T15:14:07.280' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (126, N'admin', N'超级管理员', CAST(N'2016-12-09T15:29:02.783' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (127, N'admin', N'超级管理员', CAST(N'2016-12-09T15:31:05.970' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (128, N'admin', N'超级管理员', CAST(N'2016-12-09T15:39:06.277' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (129, N'admin', N'超级管理员', CAST(N'2016-12-09T15:48:18.273' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (130, N'admin', N'超级管理员', CAST(N'2016-12-09T15:50:51.277' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (131, N'admin', N'超级管理员', CAST(N'2016-12-09T15:51:48.837' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (132, N'admin', N'超级管理员', CAST(N'2016-12-09T16:02:28.003' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (133, N'admin', N'超级管理员', CAST(N'2016-12-09T16:04:05.603' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (134, N'admin', N'超级管理员', CAST(N'2016-12-09T16:05:52.847' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (135, N'admin', N'超级管理员', CAST(N'2016-12-09T16:11:29.227' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (136, N'admin', N'超级管理员', CAST(N'2016-12-09T16:13:49.813' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (137, N'admin', N'超级管理员', CAST(N'2016-12-09T16:16:06.307' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (138, N'admin', N'超级管理员', CAST(N'2016-12-09T16:17:09.673' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (139, N'admin', N'超级管理员', CAST(N'2016-12-09T16:24:50.707' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (140, N'admin', N'超级管理员', CAST(N'2016-12-09T16:27:37.810' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (141, N'admin', N'超级管理员', CAST(N'2016-12-09T16:48:56.143' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (142, N'admin', N'超级管理员', CAST(N'2016-12-09T16:56:08.950' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (143, N'admin', N'超级管理员', CAST(N'2016-12-09T17:02:05.280' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (144, N'admin', N'超级管理员', CAST(N'2016-12-09T17:03:44.480' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (145, N'admin', N'超级管理员', CAST(N'2016-12-09T17:06:45.357' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (146, N'admin', N'超级管理员', CAST(N'2016-12-09T18:36:36.837' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (147, N'admin', N'超级管理员', CAST(N'2016-12-09T18:46:01.357' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (148, N'admin', N'超级管理员', CAST(N'2016-12-09T18:48:03.010' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (149, N'admin', N'超级管理员', CAST(N'2016-12-09T18:50:38.247' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (150, N'admin', N'超级管理员', CAST(N'2016-12-09T18:55:05.597' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (151, N'admin', N'超级管理员', CAST(N'2016-12-09T18:56:44.767' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (152, N'admin', N'超级管理员', CAST(N'2016-12-09T19:15:27.417' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (153, N'admin', N'超级管理员', CAST(N'2016-12-09T19:19:18.040' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (154, N'admin', N'超级管理员', CAST(N'2016-12-09T19:42:34.423' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (155, N'admin', N'超级管理员', CAST(N'2016-12-09T19:47:51.987' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (156, N'admin', N'超级管理员', CAST(N'2016-12-09T19:57:03.210' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (157, N'admin', N'超级管理员', CAST(N'2016-12-09T19:58:55.047' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (158, N'admin', N'超级管理员', CAST(N'2016-12-09T20:01:29.943' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (159, N'admin', N'超级管理员', CAST(N'2016-12-09T20:03:38.930' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (160, N'admin', N'超级管理员', CAST(N'2016-12-09T20:19:52.017' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (161, N'admin', N'超级管理员', CAST(N'2016-12-09T20:26:05.293' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (162, N'admin', N'超级管理员', CAST(N'2016-12-09T20:33:40.627' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (163, N'admin', N'超级管理员', CAST(N'2016-12-09T20:43:07.307' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (164, N'admin', N'超级管理员', CAST(N'2016-12-09T20:48:06.187' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (165, N'admin', N'超级管理员', CAST(N'2016-12-09T20:53:31.973' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (166, N'admin', N'超级管理员', CAST(N'2016-12-09T21:06:33.810' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (167, N'admin', N'超级管理员', CAST(N'2016-12-09T21:08:05.770' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (168, N'admin', N'超级管理员', CAST(N'2016-12-09T21:36:10.003' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (169, N'admin', N'超级管理员', CAST(N'2016-12-09T21:37:04.960' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (170, N'admin', N'超级管理员', CAST(N'2016-12-09T21:43:18.703' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (171, N'admin', N'超级管理员', CAST(N'2016-12-09T21:45:53.173' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (172, N'admin', N'超级管理员', CAST(N'2016-12-09T21:47:26.697' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (173, N'admin', N'超级管理员', CAST(N'2016-12-09T21:48:32.127' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (174, N'admin', N'超级管理员', CAST(N'2016-12-09T21:49:46.893' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (175, N'admin', N'超级管理员', CAST(N'2016-12-09T21:56:46.067' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (176, N'admin', N'超级管理员', CAST(N'2016-12-09T22:02:19.827' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (177, N'admin', N'超级管理员', CAST(N'2016-12-09T22:06:31.560' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (178, N'admin', N'超级管理员', CAST(N'2016-12-09T22:07:16.370' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (179, N'admin', N'超级管理员', CAST(N'2016-12-09T22:08:08.407' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (180, N'admin', N'超级管理员', CAST(N'2016-12-09T22:11:30.517' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (181, N'admin', N'超级管理员', CAST(N'2016-12-09T22:13:18.313' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (182, N'admin', N'超级管理员', CAST(N'2016-12-09T22:20:01.580' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (183, N'admin', N'超级管理员', CAST(N'2016-12-09T22:29:00.550' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (184, N'admin', N'超级管理员', CAST(N'2016-12-10T09:56:55.687' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (185, N'admin', N'超级管理员', CAST(N'2016-12-10T09:59:09.950' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (186, N'admin', N'超级管理员', CAST(N'2016-12-10T10:09:06.900' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (187, N'admin', N'超级管理员', CAST(N'2016-12-10T10:10:17.790' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (188, N'admin', N'超级管理员', CAST(N'2016-12-10T10:17:20.543' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (189, N'admin', N'超级管理员', CAST(N'2016-12-10T10:34:20.870' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (190, N'admin', N'超级管理员', CAST(N'2016-12-10T10:35:58.967' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (191, N'admin', N'超级管理员', CAST(N'2016-12-10T10:43:14.910' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (192, N'admin', N'超级管理员', CAST(N'2016-12-10T10:46:16.137' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (193, N'admin', N'超级管理员', CAST(N'2016-12-10T10:47:22.283' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (194, N'admin', N'超级管理员', CAST(N'2016-12-10T10:48:20.410' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (195, N'admin', N'超级管理员', CAST(N'2016-12-10T10:57:13.030' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (196, N'admin', N'超级管理员', CAST(N'2016-12-10T11:07:28.067' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (197, N'admin', N'超级管理员', CAST(N'2016-12-10T11:09:00.763' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (198, N'admin', N'超级管理员', CAST(N'2016-12-10T11:18:32.687' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (199, N'admin', N'超级管理员', CAST(N'2016-12-10T11:19:25.090' AS DateTime), N'Login', N'JH', N'登录成功')
GO
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (200, N'admin', N'超级管理员', CAST(N'2016-12-10T11:21:32.387' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (201, N'admin', N'超级管理员', CAST(N'2016-12-10T11:26:59.837' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (202, N'admin', N'超级管理员', CAST(N'2016-12-10T11:29:33.680' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (203, N'admin', N'超级管理员', CAST(N'2016-12-10T11:35:15.077' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (204, N'admin', N'超级管理员', CAST(N'2016-12-10T11:36:10.373' AS DateTime), N'Login', N'JH', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (205, N'admin', N'超级管理员', CAST(N'2016-12-10T15:54:21.697' AS DateTime), N'Login', N'Jiargcn-Home-Pc', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (206, N'admin', N'超级管理员', CAST(N'2016-12-10T21:40:29.893' AS DateTime), N'Login', N'Jiargcn-Home-Pc', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (207, N'admin', N'超级管理员', CAST(N'2016-12-10T21:49:39.250' AS DateTime), N'Login', N'Jiargcn-Home-Pc', N'登录成功')
INSERT [dbo].[TL_OPER] ([UID], [OperCode], [OperName], [LogTime], [LogType], [LogSite], [Message]) VALUES (208, N'admin', N'超级管理员', CAST(N'2016-12-10T21:50:34.023' AS DateTime), N'Login', N'Jiargcn-Home-Pc', N'登录成功')
SET IDENTITY_INSERT [dbo].[TL_OPER] OFF
SET IDENTITY_INSERT [dbo].[TL_TRANSACTION] ON 

INSERT [dbo].[TL_TRANSACTION] ([UID], [OperName], [LogTime], [BillNum], [BillType], [SubBillType], [PartCode], [Batch], [Qty], [UnitPrice], [LocCode], [Remark]) VALUES (1, N'zs', CAST(N'2016-12-09T15:05:03.637' AS DateTime), N'MD-20161209-0003', 103, 0, N'LJ001', N'16101001', 0.0000, 0.0000, N'KW001', N'Out')
INSERT [dbo].[TL_TRANSACTION] ([UID], [OperName], [LogTime], [BillNum], [BillType], [SubBillType], [PartCode], [Batch], [Qty], [UnitPrice], [LocCode], [Remark]) VALUES (2, N'zhangsan', CAST(N'2016-12-09T15:06:54.427' AS DateTime), N'MD-20161209-0002', 103, 0, N'LJ001', N'16101001', 0.0000, 0.0000, N'KW001', N'Out')
INSERT [dbo].[TL_TRANSACTION] ([UID], [OperName], [LogTime], [BillNum], [BillType], [SubBillType], [PartCode], [Batch], [Qty], [UnitPrice], [LocCode], [Remark]) VALUES (3, N'zs', CAST(N'2016-12-09T15:12:05.030' AS DateTime), N'MD-20161209-0003', 103, 0, N'LJ001', N'16101001', -2.0000, 0.0000, N'KW001', N'Out')
INSERT [dbo].[TL_TRANSACTION] ([UID], [OperName], [LogTime], [BillNum], [BillType], [SubBillType], [PartCode], [Batch], [Qty], [UnitPrice], [LocCode], [Remark]) VALUES (4, N'zs', CAST(N'2016-12-09T15:29:10.657' AS DateTime), N'MD-20161209-0003', 103, 0, N'LJ001', N'16101001', -2.0000, 0.0000, N'KW001', N'Out')
INSERT [dbo].[TL_TRANSACTION] ([UID], [OperName], [LogTime], [BillNum], [BillType], [SubBillType], [PartCode], [Batch], [Qty], [UnitPrice], [LocCode], [Remark]) VALUES (5, N'zhangsan', CAST(N'2016-12-09T15:29:33.107' AS DateTime), N'MD-20161209-0002', 103, 0, N'LJ001', N'16101001', -1.0000, 0.0000, N'KW001', N'Out')
INSERT [dbo].[TL_TRANSACTION] ([UID], [OperName], [LogTime], [BillNum], [BillType], [SubBillType], [PartCode], [Batch], [Qty], [UnitPrice], [LocCode], [Remark]) VALUES (6, N'zs', CAST(N'2016-12-09T16:27:50.573' AS DateTime), N'SR-20161209-0004', 107, 0, N'LJ001', N'16101001', 1.0000, 0.0000, N'KW001', N'In')
INSERT [dbo].[TL_TRANSACTION] ([UID], [OperName], [LogTime], [BillNum], [BillType], [SubBillType], [PartCode], [Batch], [Qty], [UnitPrice], [LocCode], [Remark]) VALUES (11, N'zhangs', CAST(N'2016-12-09T18:51:06.510' AS DateTime), N'SM-20161209-0009', 302, 0, N'LJ001', N'16101001', -5.0000, 0.0000, N'KW001', N'Out')
INSERT [dbo].[TL_TRANSACTION] ([UID], [OperName], [LogTime], [BillNum], [BillType], [SubBillType], [PartCode], [Batch], [Qty], [UnitPrice], [LocCode], [Remark]) VALUES (12, N'zhangs', CAST(N'2016-12-09T18:51:26.590' AS DateTime), N'SM-20161209-0009', 302, 0, N'LJ001', N'16101001', 5.0000, 0.0000, N'KW002', N'In')
INSERT [dbo].[TL_TRANSACTION] ([UID], [OperName], [LogTime], [BillNum], [BillType], [SubBillType], [PartCode], [Batch], [Qty], [UnitPrice], [LocCode], [Remark]) VALUES (13, N'zhangs', CAST(N'2016-12-09T19:48:48.173' AS DateTime), N'OI-20161209-0002', 301, 0, N'LJ001', N'16101002', 11.0000, 0.0000, N'KW001', N'In')
INSERT [dbo].[TL_TRANSACTION] ([UID], [OperName], [LogTime], [BillNum], [BillType], [SubBillType], [PartCode], [Batch], [Qty], [UnitPrice], [LocCode], [Remark]) VALUES (14, N'zhangs', CAST(N'2016-12-09T20:34:12.137' AS DateTime), N'OI-20161209-0008', 301, 0, N'LJ001', N'16101001', -3.0000, 0.0000, N'KW001', N'Out')
INSERT [dbo].[TL_TRANSACTION] ([UID], [OperName], [LogTime], [BillNum], [BillType], [SubBillType], [PartCode], [Batch], [Qty], [UnitPrice], [LocCode], [Remark]) VALUES (15, N'zhangs', CAST(N'2016-12-10T11:27:10.817' AS DateTime), N'IV-20161210-0002', 305, 0, N'LJ001', N'16101001', 2.0000, 0.0000, N'KW001', N'In')
INSERT [dbo].[TL_TRANSACTION] ([UID], [OperName], [LogTime], [BillNum], [BillType], [SubBillType], [PartCode], [Batch], [Qty], [UnitPrice], [LocCode], [Remark]) VALUES (16, N'zhangs', CAST(N'2016-12-10T11:27:24.270' AS DateTime), N'IV-20161210-0002', 305, 0, N'LJ001', N'16101002', -1.0000, 0.0000, N'KW001', N'Out')
INSERT [dbo].[TL_TRANSACTION] ([UID], [OperName], [LogTime], [BillNum], [BillType], [SubBillType], [PartCode], [Batch], [Qty], [UnitPrice], [LocCode], [Remark]) VALUES (17, N'zhangs', CAST(N'2016-12-10T11:27:40.110' AS DateTime), N'IV-20161210-0002', 305, 0, N'LJ001', N'16101002', 1.0000, 0.0000, N'OTHER', N'In')
INSERT [dbo].[TL_TRANSACTION] ([UID], [OperName], [LogTime], [BillNum], [BillType], [SubBillType], [PartCode], [Batch], [Qty], [UnitPrice], [LocCode], [Remark]) VALUES (18, N'zhangs', CAST(N'2016-12-10T11:29:42.247' AS DateTime), N'IV-20161210-0002', 305, 0, N'LJ001', N'16101001', 2.0000, 0.0000, N'KW001', N'In')
INSERT [dbo].[TL_TRANSACTION] ([UID], [OperName], [LogTime], [BillNum], [BillType], [SubBillType], [PartCode], [Batch], [Qty], [UnitPrice], [LocCode], [Remark]) VALUES (19, N'zhangs', CAST(N'2016-12-10T11:29:42.250' AS DateTime), N'IV-20161210-0002', 305, 0, N'LJ001', N'16101002', -1.0000, 0.0000, N'KW001', N'Out')
INSERT [dbo].[TL_TRANSACTION] ([UID], [OperName], [LogTime], [BillNum], [BillType], [SubBillType], [PartCode], [Batch], [Qty], [UnitPrice], [LocCode], [Remark]) VALUES (20, N'zhangs', CAST(N'2016-12-10T11:29:42.257' AS DateTime), N'IV-20161210-0002', 305, 0, N'LJ001', N'16101002', 1.0000, 0.0000, N'OTHER', N'In')
SET IDENTITY_INSERT [dbo].[TL_TRANSACTION] OFF
SET IDENTITY_INSERT [dbo].[TS_STOCK_DETAIL] ON 

INSERT [dbo].[TS_STOCK_DETAIL] ([UID], [LocCode], [PartCode], [Batch], [State], [Qty], [UnitPrice], [ProduceDate], [OverdueDate], [ReceiveDate], [UpdateQty], [UpdateTime]) VALUES (1, N'KW001', N'LJ001', N'16101001', 1, 22.0000, 2.5000, CAST(N'2016-10-10T00:00:00.000' AS DateTime), CAST(N'2017-04-28T00:00:00.000' AS DateTime), CAST(N'2016-10-10T00:00:00.000' AS DateTime), 2.0000, CAST(N'2016-12-10T11:29:42.223' AS DateTime))
INSERT [dbo].[TS_STOCK_DETAIL] ([UID], [LocCode], [PartCode], [Batch], [State], [Qty], [UnitPrice], [ProduceDate], [OverdueDate], [ReceiveDate], [UpdateQty], [UpdateTime]) VALUES (5, N'KW001', N'LJ001', N'16101002', 0, 9.0000, 0.0000, CAST(N'2016-10-10T00:00:00.000' AS DateTime), CAST(N'2017-04-28T00:00:00.000' AS DateTime), CAST(N'2016-12-09T19:48:48.153' AS DateTime), -1.0000, CAST(N'2016-12-10T11:29:42.250' AS DateTime))
INSERT [dbo].[TS_STOCK_DETAIL] ([UID], [LocCode], [PartCode], [Batch], [State], [Qty], [UnitPrice], [ProduceDate], [OverdueDate], [ReceiveDate], [UpdateQty], [UpdateTime]) VALUES (4, N'KW002', N'LJ001', N'16101001', 1, 35.0000, 2.5000, CAST(N'2016-10-10T00:00:00.000' AS DateTime), CAST(N'2017-04-28T00:00:00.000' AS DateTime), CAST(N'2016-10-10T00:00:00.000' AS DateTime), 5.0000, CAST(N'2016-12-09T18:51:26.577' AS DateTime))
INSERT [dbo].[TS_STOCK_DETAIL] ([UID], [LocCode], [PartCode], [Batch], [State], [Qty], [UnitPrice], [ProduceDate], [OverdueDate], [ReceiveDate], [UpdateQty], [UpdateTime]) VALUES (6, N'OTHER', N'LJ001', N'16101002', 0, 2.0000, 0.0000, CAST(N'2016-10-10T00:00:00.000' AS DateTime), CAST(N'2017-04-28T00:00:00.000' AS DateTime), CAST(N'2016-12-09T19:48:48.153' AS DateTime), 1.0000, CAST(N'2016-12-10T11:29:42.253' AS DateTime))
SET IDENTITY_INSERT [dbo].[TS_STOCK_DETAIL] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [PK10_1]    Script Date: 2016/12/10 22:00:55 ******/
ALTER TABLE [dbo].[TA_STORE_GROUP] ADD  CONSTRAINT [PK10_1] PRIMARY KEY NONCLUSTERED 
(
	[GroupCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [PK10]    Script Date: 2016/12/10 22:00:55 ******/
ALTER TABLE [dbo].[TA_STORE_LOCATION] ADD  CONSTRAINT [PK10] PRIMARY KEY NONCLUSTERED 
(
	[LocCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [PK7]    Script Date: 2016/12/10 22:00:55 ******/
ALTER TABLE [dbo].[TA_STORE_WHSE] ADD  CONSTRAINT [PK7] PRIMARY KEY NONCLUSTERED 
(
	[WhseCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [PK23]    Script Date: 2016/12/10 22:00:55 ******/
ALTER TABLE [dbo].[TA_SUPERLIER] ADD  CONSTRAINT [PK23] PRIMARY KEY NONCLUSTERED 
(
	[SplyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [PK17]    Script Date: 2016/12/10 22:00:55 ******/
ALTER TABLE [dbo].[TA_UNIT] ADD  CONSTRAINT [PK17] PRIMARY KEY NONCLUSTERED 
(
	[Unit] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [PK30_1]    Script Date: 2016/12/10 22:00:55 ******/
ALTER TABLE [dbo].[TA_WORKLINE] ADD  CONSTRAINT [PK30_1] PRIMARY KEY NONCLUSTERED 
(
	[WorklineCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK73_4]    Script Date: 2016/12/10 22:00:55 ******/
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
ALTER TABLE [dbo].[TA_MACHINE] ADD  CONSTRAINT [DF_TS_EQUIPMENT_LocCode]  DEFAULT ('') FOR [MachineLocation]
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
ALTER TABLE [dbo].[TB_OUT] ADD  CONSTRAINT [DF_TB_PICK_FACT_ActualQty]  DEFAULT ((0)) FOR [OutQty]
GO
ALTER TABLE [dbo].[TB_OUT] ADD  CONSTRAINT [DF_TB_PICK_FACT_State]  DEFAULT ((0)) FOR [State]
GO
ALTER TABLE [dbo].[TB_PO] ADD  CONSTRAINT [DF_TF_PO_DETAIL_Line]  DEFAULT ((1)) FOR [Line]
GO
ALTER TABLE [dbo].[TB_PO] ADD  CONSTRAINT [DF__KF_Purchas__nQty__5BAD9CC8]  DEFAULT ((0)) FOR [BillQty]
GO
ALTER TABLE [dbo].[TB_PO] ADD  CONSTRAINT [DF__KF_Purcha__FActu__5CA1C101]  DEFAULT ((0)) FOR [ArrialQty]
GO
ALTER TABLE [dbo].[TB_PO] ADD  CONSTRAINT [DF_TF_PO_DETAIL_State]  DEFAULT ((0)) FOR [State]
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实发数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_OUT', @level2type=N'COLUMN',@level2name=N'OutQty'
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'已收数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_PO', @level2type=N'COLUMN',@level2name=N'ArrialQty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_PO', @level2type=N'COLUMN',@level2name=N'State'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'说明' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_PO', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采购订单明细表 ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TB_PO'
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
         Begin Table = "sd"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 192
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
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VIEW_CalInaction_DAYS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VIEW_CalInaction_DAYS'
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
         Begin Table = "part"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 188
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
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VIEW_CalSafeQty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VIEW_CalSafeQty'
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
               Top = 6
               Left = 38
               Bottom = 125
               Right = 192
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
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VIEW_STOCK_DETAIL_AGE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VIEW_STOCK_DETAIL_AGE'
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
