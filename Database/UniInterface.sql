USE [master]
GO
/****** Object:  Database [UniInterface]    Script Date: 2016/11/29 9:38:22 ******/
CREATE DATABASE [UniInterface]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'UniInterface', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\UniInterface.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'UniInterface_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\UniInterface_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [UniInterface] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [UniInterface].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [UniInterface] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [UniInterface] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [UniInterface] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [UniInterface] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [UniInterface] SET ARITHABORT OFF 
GO
ALTER DATABASE [UniInterface] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [UniInterface] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [UniInterface] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [UniInterface] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [UniInterface] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [UniInterface] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [UniInterface] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [UniInterface] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [UniInterface] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [UniInterface] SET  DISABLE_BROKER 
GO
ALTER DATABASE [UniInterface] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [UniInterface] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [UniInterface] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [UniInterface] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [UniInterface] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [UniInterface] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [UniInterface] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [UniInterface] SET RECOVERY FULL 
GO
ALTER DATABASE [UniInterface] SET  MULTI_USER 
GO
ALTER DATABASE [UniInterface] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [UniInterface] SET DB_CHAINING OFF 
GO
ALTER DATABASE [UniInterface] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [UniInterface] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [UniInterface] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'UniInterface', N'ON'
GO
ALTER DATABASE [UniInterface] SET QUERY_STORE = OFF
GO
USE [UniInterface]
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
USE [UniInterface]
GO
/****** Object:  Table [dbo].[xxqad_cm_mstr]    Script Date: 2016/11/29 9:38:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xxqad_cm_mstr](
	[xxqad_cm_seq] [varchar](20) NOT NULL,
	[xxqad_cm_addr] [varchar](8) NOT NULL,
	[xxqad_cm_name] [varchar](100) NOT NULL,
	[xxqad_cm_line1] [varchar](100) NOT NULL,
	[xxqad_cm_line2] [varchar](100) NULL,
	[xxqad_cm_line3] [varchar](100) NULL,
	[xxqad_cm_country] [varchar](8) NULL,
	[xxqad_cm_city] [varchar](8) NULL,
	[xxqad_cm_phone] [varchar](15) NOT NULL,
	[xxqad_cm_fax] [varchar](15) NOT NULL,
	[xxqad_cm_pst_id] [varchar](15) NOT NULL,
	[xxqad_cm_attn] [varchar](50) NOT NULL,
	[xxqad_cm_curr] [varchar](15) NOT NULL,
	[xxqad_cm_active] [bit] NOT NULL,
	[xxqad_cm_promo] [varchar](2) NOT NULL,
	[xxqad_cm_type] [int] NULL,
	[xxqad_cm_domain] [varchar](8) NOT NULL,
	[xxqad_cm_qadread] [varchar](1) NULL,
	[xxqad_cm_WMSread] [varchar](1) NULL,
	[xxqad_cm_scmread] [varchar](1) NULL,
	[xxqad_cm_ediread] [varchar](1) NULL,
	[xxqad_cm_rmks] [varchar](40) NULL,
	[xxqad_cm_createdt] [date] NULL,
	[xxqad_cm_createtur] [varchar](8) NULL,
	[xxqad_cm_updatedt] [date] NULL,
	[xxqad_cm_updateur] [varchar](8) NULL,
 CONSTRAINT [PK_xxqad_cm_mstr] PRIMARY KEY CLUSTERED 
(
	[xxqad_cm_seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[xxqad_ctrl]    Script Date: 2016/11/29 9:38:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xxqad_ctrl](
	[xxqad_seq] [int] NOT NULL,
	[xxqad_table] [varchar](18) NOT NULL,
	[xxqad_table_qty] [int] NOT NULL,
	[xxqad_qad] [varchar](1) NULL,
	[xxqad_mes] [varchar](1) NULL,
	[xxqad_SCM] [varchar](1) NULL,
	[xxqad_edi] [varchar](1) NULL,
	[xxqad_rmks] [varchar](40) NULL,
 CONSTRAINT [PK_xxqad_ctrl] PRIMARY KEY CLUSTERED 
(
	[xxqad_seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[xxqad_ld_det]    Script Date: 2016/11/29 9:38:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xxqad_ld_det](
	[xxqad_ld_seq] [varchar](20) NOT NULL,
	[xxqad_ld_site] [varchar](4) NOT NULL,
	[xxqad_ld_loc] [varchar](8) NOT NULL,
	[xxqad_ld_lot] [varchar](8) NULL,
	[xxqad_ld_part] [varchar](18) NOT NULL,
	[xxqad_ld_rmks] [varchar](36) NULL,
	[xxqad_ld_qty] [money] NOT NULL,
	[xxqad_ld_date] [date] NOT NULL,
	[xxqad_ld_time] [date] NOT NULL,
	[xxqad_ld_um] [varchar](2) NOT NULL,
	[xxqad_ld_domain] [nchar](10) NULL,
	[xxqad_ld_qadread] [varchar](1) NULL,
	[xxqad_ld_WMSread] [varchar](1) NULL,
	[xxqad_ld_scmread] [varchar](1) NULL,
	[xxqad_ld_ediread] [varchar](1) NULL,
	[xxqad_ld_rmks1] [varchar](40) NULL,
	[xxqad_ld_createdt] [date] NULL,
	[xxqad_ld_createtur] [varchar](8) NULL,
	[xxqad_ld_updatedt] [date] NULL,
	[xxqad_ld_updateur] [varchar](8) NULL,
 CONSTRAINT [PK_xxqad_ld_det] PRIMARY KEY CLUSTERED 
(
	[xxqad_ld_seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[xxqad_loc_det]    Script Date: 2016/11/29 9:38:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xxqad_loc_det](
	[xxqad_loc_seq] [varchar](20) NOT NULL,
	[xxqad_loc_loc] [varchar](8) NOT NULL,
	[xxqad_loc_desc] [varchar](36) NOT NULL,
	[xxqad_loc_type] [varchar](8) NOT NULL,
	[xxqad_loc_site] [varchar](8) NOT NULL,
	[xxqad_loc_domain] [varchar](8) NOT NULL,
	[xxqad_loc_qadread] [varchar](1) NULL,
	[xxqad_loc_wmsread] [varchar](1) NULL,
	[xxqad_loc_scmread] [varchar](1) NULL,
	[xxqad_loc_ediread] [varchar](1) NULL,
	[xxqad_loc_rmks] [varchar](40) NULL,
	[xxqad_loc_createdt] [date] NULL,
	[xxqad_loc_createur] [varchar](8) NULL,
	[xxqad_loc_updatedt] [date] NULL,
	[xxqad_loc_updateur] [varchar](8) NULL,
 CONSTRAINT [PK_xxqad_loc_det] PRIMARY KEY CLUSTERED 
(
	[xxqad_loc_seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[xxqad_pod_det]    Script Date: 2016/11/29 9:38:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xxqad_pod_det](
	[xxqad_pod_nbr] [varchar](8) NOT NULL,
	[xxqad_pod_line] [varchar](4) NOT NULL,
	[xxqad_pod_part] [varchar](18) NOT NULL,
	[xxqad_pod_desc] [varchar](36) NOT NULL,
	[xxqad_pod_qty_ord] [float] NOT NULL,
	[xxqad_pod_qty_rct] [float] NOT NULL,
	[xxqad_pod_qty_std] [float] NOT NULL,
	[xxqad_pod_due_date] [date] NOT NULL,
	[xxqad_pod_loc_um] [varchar](2) NOT NULL,
	[xxqad_pod_um] [varchar](2) NOT NULL,
	[xxqad_pod_um_conv] [float] NOT NULL,
	[xxqad_pod_vend] [varchar](8) NOT NULL,
	[xxqad_pod_name] [varchar](100) NOT NULL,
	[xxqad_pod_attn] [varchar](8) NOT NULL,
	[xxqad_pod_ship] [varchar](8) NOT NULL,
	[xxqad_pod_made] [varchar](2) NOT NULL,
	[xxqad_pod_site] [varchar](8) NOT NULL,
	[xxqad_pod_confirm] [bit] NOT NULL,
	[xxqad_pod_domain] [varchar](8) NOT NULL,
	[xxqad_pod_buyer] [varchar](8) NOT NULL,
	[xxqad_pod_buyer_phone] [varchar](20) NOT NULL,
	[xxqad_pod_qadread] [varchar](1) NOT NULL,
	[xxqad_pod_wmsread] [varchar](1) NOT NULL,
	[xxqad_pod_scmread] [varchar](1) NOT NULL,
	[xxqad_pod_ediread] [varchar](1) NOT NULL,
	[xxqad_pod_rmkks] [varchar](40) NOT NULL,
	[xxqad_pod_createdt] [date] NOT NULL,
	[xxqad_pod_createur] [varchar](8) NOT NULL,
	[xxqad_pod_updatedt] [date] NOT NULL,
	[xxqad_pod_updateur] [varchar](8) NOT NULL,
	[xxqad_pod_seq] [varchar](20) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[xxqad_pprice_det]    Script Date: 2016/11/29 9:38:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xxqad_pprice_det](
	[xxqad_pprice_seq] [varchar](20) NOT NULL,
	[xxqad_pprice_list] [varchar](8) NOT NULL,
	[xxqad_pprice_curr] [varchar](3) NOT NULL,
	[xxqad_pprice_part] [varchar](18) NOT NULL,
	[xxqad_pprice_um] [varchar](2) NOT NULL,
	[xxqad_pprice_start] [date] NOT NULL,
	[xxqad_pprice_end] [date] NULL,
	[xxqad_pprice_amt] [money] NULL,
	[xxqad_pprice_domain] [varchar](8) NOT NULL,
	[xxqad_pprice_qadread] [varchar](1) NULL,
	[xxqad_pprice_wmsread] [varchar](1) NULL,
	[xxqad_pprice_scmread] [varchar](1) NULL,
	[xxqad_pprice_ediread] [varchar](1) NULL,
	[xxqad_pprice_rmks] [varchar](40) NULL,
	[xxqad_pprice_createdt] [date] NULL,
	[xxqad_pprice_createur] [varchar](8) NULL,
	[xxqad_pprice_updatedt] [date] NULL,
	[xxqad_pprice_updateur] [varchar](8) NULL,
 CONSTRAINT [PK_xxqad_pprice_det] PRIMARY KEY CLUSTERED 
(
	[xxqad_pprice_seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[xxqad_ps_mstr]    Script Date: 2016/11/29 9:38:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xxqad_ps_mstr](
	[xxwms_ps_seq] [varchar](20) NOT NULL,
	[xxqad_ps_par] [varchar](18) NOT NULL,
	[xxqad_ps_comp] [varchar](2) NOT NULL,
	[xxqad_ps_ref] [varchar](36) NOT NULL,
	[xxqad_ps_qty_per] [varchar](10) NULL,
	[xxqad_ps_ps_code] [int] NOT NULL,
	[xxqad_ps_start] [date] NOT NULL,
	[xxqad_ps_end] [date] NOT NULL,
	[xxqad_ps_rmks] [varchar](8) NOT NULL,
	[xxqad_ps_op] [varchar](8) NOT NULL,
	[xxqad_ps_domain] [varchar](8) NOT NULL,
	[xxwms_ps_qadread] [varchar](1) NULL,
	[xxwms_ps_WMSread] [varchar](1) NULL,
	[xxwms_ps_scmread] [varchar](1) NULL,
	[xxwms_ps_ediread] [varchar](1) NULL,
	[xxwms_ps_rmks1] [varchar](40) NULL,
	[xxwms_ps_createdt] [date] NULL,
	[xxwms_ps_createtur] [varchar](8) NULL,
	[xxwms_ps_updatedt] [date] NULL,
	[xxwms_ps_updateur] [varchar](8) NULL,
 CONSTRAINT [PK_xxqad_ps_mstr] PRIMARY KEY CLUSTERED 
(
	[xxwms_ps_seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[xxqad_pt_mstr]    Script Date: 2016/11/29 9:38:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xxqad_pt_mstr](
	[xxqad_pt_seq] [varchar](20) NOT NULL,
	[xxqad_pt_part] [varchar](18) NOT NULL,
	[xxqad_pt_um] [varchar](2) NOT NULL,
	[xxqad_pt_desc1] [varchar](36) NOT NULL,
	[xxqad_pt_desc2] [varchar](36) NULL,
	[xxqad_pt_dsgn_grp] [varchar](8) NOT NULL,
	[xxqad_pt_promo] [varchar](8) NOT NULL,
	[xxqad_pt_part_type] [varchar](8) NOT NULL,
	[xxqad_pt_prod_line] [varchar](8) NOT NULL,
	[xxqad_pt_status] [varchar](8) NOT NULL,
	[xxqad_pt_site] [varchar](8) NOT NULL,
	[xxqad_pt_domain] [varchar](8) NOT NULL,
	[xxqad_pt_qadread] [varchar](1) NULL,
	[xxqad_pt_WMSread] [varchar](1) NULL,
	[xxqad_pt_scmread] [varchar](1) NULL,
	[xxqad_pt_ediread] [varchar](1) NULL,
	[xxqad_pt_rmks] [varchar](40) NULL,
	[xxqad_pt_createdt] [date] NULL,
	[xxqad_pt_createtur] [varchar](8) NULL,
	[xxqad_pt_updatedt] [date] NULL,
	[xxqad_pt_updateur] [varchar](8) NULL,
 CONSTRAINT [PK_xxqad_pt_mstr] PRIMARY KEY CLUSTERED 
(
	[xxqad_pt_seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[xxqad_sche_det]    Script Date: 2016/11/29 9:38:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xxqad_sche_det](
	[xxqad_sche_seq] [varchar](20) NOT NULL,
	[xxqad_sche_cust] [varchar](8) NOT NULL,
	[xxqad_sche_name] [varchar](100) NULL,
	[xxqad_sche_part] [varchar](18) NOT NULL,
	[xxqad_sche_custpart] [varchar](8) NOT NULL,
	[xxqad_sche_desc] [varchar](100) NULL,
	[xxqad_sche_comment] [money] NOT NULL,
	[xxqad_sche_domain] [varchar](8) NOT NULL,
	[xxqad_sche_qadread] [varchar](1) NULL,
	[xxqad_sche_wmsread] [varchar](1) NULL,
	[xxqad_sche_scmread] [varchar](1) NULL,
	[xxqad_sche_ediread] [varchar](1) NULL,
	[xxqad_sche_rmks] [varchar](40) NULL,
	[xxqad_sche_createdt] [date] NULL,
	[xxqad_sche_createur] [varchar](8) NULL,
	[xxqad_sche_updatedt] [date] NULL,
	[xxqad_sche_updateur] [varchar](8) NULL,
 CONSTRAINT [PK_xxqad_sche_det] PRIMARY KEY CLUSTERED 
(
	[xxqad_sche_seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[xxqad_sct_det]    Script Date: 2016/11/29 9:38:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xxqad_sct_det](
	[xxwms_sct_seq] [varchar](20) NOT NULL,
	[xxqad_sct_site] [varchar](18) NOT NULL,
	[xxqad_sct_part] [varchar](2) NOT NULL,
	[xxqad_sct_ref] [varchar](36) NOT NULL,
	[xxqad_sct_cst_tot] [int] NULL,
	[xxqad_sct_cst_date] [date] NOT NULL,
	[xxqad_sct_domain] [varchar](8) NOT NULL,
	[xxwms_sct_qadread] [varchar](1) NULL,
	[xxwms_sct_WMSread] [varchar](1) NULL,
	[xxwms_sct_scmread] [varchar](1) NULL,
	[xxwms_sct_ediread] [varchar](1) NULL,
	[xxwms_sct_rmks1] [varchar](40) NULL,
	[xxwms_sct_createdt] [date] NULL,
	[xxwms_sct_createtur] [varchar](8) NULL,
	[xxwms_sct_updatedt] [date] NULL,
	[xxwms_sct_updateur] [varchar](8) NULL,
 CONSTRAINT [PK_xxqad_sct_det] PRIMARY KEY CLUSTERED 
(
	[xxwms_sct_seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[xxqad_sod_det]    Script Date: 2016/11/29 9:38:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xxqad_sod_det](
	[xxqad_sod_seq] [varchar](20) NOT NULL,
	[xxqad_sod_cust] [varchar](8) NOT NULL,
	[xxqad_sod_part] [varchar](18) NOT NULL,
	[xxqad_sod_desc] [varchar](48) NOT NULL,
	[xxqad_sod_order] [varchar](8) NOT NULL,
	[xxqad_sod_line] [int] NULL,
	[xxqad_sod_um] [varchar](2) NOT NULL,
	[xxqad_sod_site] [varchar](8) NOT NULL,
	[xxqad_sod_loc] [varchar](8) NOT NULL,
	[xxqad_sod_qty_std] [nchar](10) NULL,
	[xxqad_sod_domain] [varchar](8) NOT NULL,
	[xxqad_sod_qadread] [varchar](1) NULL,
	[xxqad_sod_WMSread] [varchar](1) NULL,
	[xxqad_sod_scmread] [varchar](1) NULL,
	[xxqad_sod_ediread] [varchar](1) NULL,
	[xxqad_sod_rmks] [varchar](40) NULL,
	[xxqad_sod_createdt] [date] NULL,
	[xxqad_sod_createtur] [varchar](8) NULL,
	[xxqad_sod_updatedt] [date] NULL,
	[xxqad_sod_updateur] [varchar](8) NULL,
 CONSTRAINT [PK_xxqad_sod_det] PRIMARY KEY CLUSTERED 
(
	[xxqad_sod_seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[xxqad_sprice_det]    Script Date: 2016/11/29 9:38:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xxqad_sprice_det](
	[xxqad_sprice_seq] [varchar](20) NOT NULL,
	[xxqad_sprice_list] [varchar](8) NOT NULL,
	[xxqad_sprice_curr] [varchar](3) NOT NULL,
	[xxqad_sprice_part] [varchar](18) NOT NULL,
	[xxqad_sprice_um] [varchar](2) NOT NULL,
	[xxqad_sprice_start] [date] NOT NULL,
	[xxqad_sprice_end] [date] NULL,
	[xxqad_sprice_amt] [money] NULL,
	[xxqad_sprice_domain] [varchar](8) NOT NULL,
	[xxqad_sprice_qadread] [varchar](1) NULL,
	[xxqad_sprice_wmsread] [varchar](1) NULL,
	[xxqad_sprice_scmread] [varchar](1) NULL,
	[xxqad_sprice_ediread] [varchar](1) NULL,
	[xxqad_sprice_rmkks] [varchar](40) NULL,
	[xxqad_sprice_createdt] [date] NULL,
	[xxqad_sprice_createur] [varchar](8) NULL,
	[xxqad_sprice_updatedt] [date] NULL,
	[xxqad_sprice_updateur] [varchar](8) NULL,
 CONSTRAINT [PK_xxqad_sprice_det] PRIMARY KEY CLUSTERED 
(
	[xxqad_sprice_seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[xxqad_tag_det]    Script Date: 2016/11/29 9:38:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xxqad_tag_det](
	[xxscms_tag_seq] [varchar](20) NOT NULL,
	[xxwms_tag_nbr] [varchar](20) NOT NULL,
	[xxwms_tag_part] [varchar](18) NOT NULL,
	[xxwms_tag_loc] [varchar](8) NOT NULL,
	[xxwms_tag_lot] [varchar](8) NULL,
	[xxwms_tag_date] [date] NOT NULL,
	[xxwms_tag_var_qty] [money] NOT NULL,
	[xxwms_tag_site] [varchar](8) NOT NULL,
	[xxwms_tag_domain] [varchar](8) NULL,
	[xxscms_tag_qadread] [varchar](1) NULL,
	[xxscms_tag_wmsread] [varchar](1) NULL,
	[xxscms_tag_scmread] [varchar](1) NULL,
	[xxscms_tag_ediread] [varchar](1) NULL,
	[xxscms_tag_rmkks] [varchar](40) NULL,
	[xxscms_tag_createdt] [date] NULL,
	[xxscms_tag_createur] [varchar](8) NULL,
	[xxscms_tag_updatedt] [date] NULL,
	[xxscms_tag_updateur] [varchar](8) NULL,
 CONSTRAINT [PK_xxqad_tag_det] PRIMARY KEY CLUSTERED 
(
	[xxscms_tag_seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[xxqad_vd_mstr]    Script Date: 2016/11/29 9:38:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xxqad_vd_mstr](
	[xxqad_vd_seq] [varchar](20) NOT NULL,
	[xxqad_vd_addr] [varchar](8) NOT NULL,
	[xxqad_vd_name] [varchar](100) NOT NULL,
	[xxqad_vd_line1] [varchar](100) NOT NULL,
	[xxqad_vd_line2] [varchar](100) NULL,
	[xxqad_vd_line3] [varchar](100) NULL,
	[xxqad_vd_country] [varchar](8) NULL,
	[xxqad_vd_city] [varchar](8) NULL,
	[xxqad_vd_phone] [varchar](15) NOT NULL,
	[xxqad_vd_fax] [varchar](15) NOT NULL,
	[xxqad_vd_pst_id] [varchar](15) NOT NULL,
	[xxqad_vd_attn] [varchar](50) NOT NULL,
	[xxqad_vd_curr] [varchar](15) NOT NULL,
	[xxqad_vd_active] [bit] NOT NULL,
	[xxqad_vd_promo] [varchar](2) NOT NULL,
	[xxqad_vd_type] [int] NULL,
	[xxqad_vd_domain] [varchar](8) NOT NULL,
	[xxqad_vd_qadread] [varchar](1) NULL,
	[xxqad_vd_WMSread] [varchar](1) NULL,
	[xxqad_vd_scmread] [varchar](1) NULL,
	[xxqad_vd_ediread] [varchar](1) NULL,
	[xxqad_vd_rmks] [varchar](40) NULL,
	[xxqad_vd_createdt] [date] NULL,
	[xxqad_vd_createtur] [varchar](8) NULL,
	[xxqad_vd_updatedt] [date] NULL,
	[xxqad_vd_updateur] [varchar](8) NULL,
 CONSTRAINT [PK_xxqad_vd_mstr] PRIMARY KEY CLUSTERED 
(
	[xxqad_vd_seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[xxqad_vp_mstr]    Script Date: 2016/11/29 9:38:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xxqad_vp_mstr](
	[xxqad_vp_seq] [varchar](20) NOT NULL,
	[xxqad_vp_addr] [varchar](8) NOT NULL,
	[xxqad_vp_part] [varchar](18) NOT NULL,
	[xxqad_vp_vend_part] [varchar](36) NULL,
	[xxqad_vp_site] [varchar](8) NOT NULL,
	[xxqad_vp_comment] [money] NOT NULL,
	[xxqad_vp_domain] [varchar](8) NOT NULL,
	[xxqad_vp_qadread] [varchar](1) NULL,
	[xxqad_vp_WMSread] [varchar](1) NULL,
	[xxqad_vp_scmread] [varchar](1) NULL,
	[xxqad_vp_ediread] [varchar](1) NULL,
	[xxqad_vp_rmks] [varchar](40) NULL,
	[xxqad_vp_createdt] [date] NULL,
	[xxqad_vp_createtur] [varchar](8) NULL,
	[xxqad_vp_updatedt] [date] NULL,
	[xxqad_vp_updateur] [varchar](8) NULL,
 CONSTRAINT [PK_xxqad_vp_mstr] PRIMARY KEY CLUSTERED 
(
	[xxqad_vp_seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[xxscm_ctrl]    Script Date: 2016/11/29 9:38:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xxscm_ctrl](
	[xxSCM_seq] [int] NOT NULL,
	[xxSCM_table] [varchar](18) NOT NULL,
	[xxSCM_table_qty] [int] NOT NULL,
	[xxSCM_qad] [varchar](1) NULL,
	[xxSCM_mes] [varchar](1) NULL,
	[xxSCM_SCM] [varchar](1) NULL,
	[xxSCM_edi] [varchar](1) NULL,
	[xxSCM_rmks] [varchar](40) NOT NULL,
 CONSTRAINT [PK_xxscm_ctrl] PRIMARY KEY CLUSTERED 
(
	[xxSCM_seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[xxscm_inv_det]    Script Date: 2016/11/29 9:38:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xxscm_inv_det](
	[xxscm_inv_seq] [varchar](20) NOT NULL,
	[xxscm_inv_invoice] [nchar](10) NOT NULL,
	[xxscm_inv_nbr] [nchar](10) NULL,
	[xxscm_inv_wend] [nchar](10) NOT NULL,
	[xxscm_inv_date] [nchar](10) NOT NULL,
	[xxscm_inv_curr] [nchar](10) NOT NULL,
	[xxscm_inv_order] [nchar](10) NOT NULL,
	[xxscm_inv_line] [nchar](10) NULL,
	[xxscm_inv_receiver] [nchar](10) NOT NULL,
	[xxscm_inv_asn] [nchar](10) NULL,
	[xxscm_inv_part] [nchar](10) NULL,
	[xxscm_inv_qty] [nchar](10) NOT NULL,
	[xxscm_inv_price] [nchar](10) NOT NULL,
	[xxscm_inv_taxt] [nchar](10) NOT NULL,
	[xxscm_inv_taxamt] [nchar](10) NULL,
	[xxscm_inv_amt] [nchar](10) NOT NULL,
	[xxscm_inv_qadread] [varchar](1) NULL,
	[xxscm_inv_wmsread] [varchar](1) NULL,
	[xxscm_inv_scmread] [varchar](1) NULL,
	[xxscm_inv_ediread] [varchar](1) NULL,
	[xxscm_inv_rmkks] [varchar](40) NULL,
	[xxscm_inv_createdt] [date] NULL,
	[xxscm_inv_createur] [varchar](8) NULL,
	[xxscm_inv_updatedt] [date] NULL,
	[xxscm_inv_updateur] [varchar](8) NULL,
 CONSTRAINT [PK_xxscm_inv_det] PRIMARY KEY CLUSTERED 
(
	[xxscm_inv_seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[xxscm_tx_det]    Script Date: 2016/11/29 9:38:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xxscm_tx_det](
	[xxscm_tx_seq] [varchar](20) NOT NULL,
	[xxscm_tx_nbr] [varchar](20) NOT NULL,
	[xxscm_tx_po_nbr] [varchar](8) NOT NULL,
	[xxscm_tx_po_line] [int] NOT NULL,
	[xxscm_tx_part] [varchar](18) NOT NULL,
	[xxscm_tx_qty_real] [money] NOT NULL,
	[xxscm_tx_boxcode] [varchar](20) NOT NULL,
	[xxscm_tx_qadread] [varchar](1) NULL,
	[xxscm_tx_WMSread] [varchar](1) NULL,
	[xxscm_tx_scmread] [varchar](1) NULL,
	[xxscm_tx_ediread] [varchar](1) NULL,
	[xxscm_tx_rmks] [varchar](40) NULL,
	[xxscm_tx_createdt] [date] NULL,
	[xxscm_tx_createtur] [varchar](8) NULL,
	[xxscm_tx_updatedt] [date] NULL,
	[xxscm_tx_updateur] [varchar](8) NULL,
 CONSTRAINT [PK_xxscm_tx_det] PRIMARY KEY CLUSTERED 
(
	[xxscm_tx_seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[xxscm_tx_mstr]    Script Date: 2016/11/29 9:38:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xxscm_tx_mstr](
	[xxscm_tx_seq] [varchar](20) NOT NULL,
	[xxscm_tx_nbr] [varchar](20) NOT NULL,
	[xxscm_tx_po_nbr] [varchar](8) NOT NULL,
	[xxscm_tx_po_line] [varchar](4) NOT NULL,
	[xxscm_tx_part] [varchar](18) NOT NULL,
	[xxscm_tx_qty_total] [money] NOT NULL,
	[xxscm_tx_qty_std] [money] NOT NULL,
	[xxscm_tx_date_ship] [date] NOT NULL,
	[xxscm_tx_date_Promise] [date] NOT NULL,
	[xxscm_tx_date_due] [date] NOT NULL,
	[xxscm_tx_site] [varchar](8) NOT NULL,
	[xxscm_tx_vend] [varchar](8) NOT NULL,
	[xxscm_tx_ware_class] [varchar](20) NULL,
	[xxscm_tx_ware] [varchar](20) NULL,
	[xxscm_tx_po_um] [varchar](2) NOT NULL,
	[xxscm_tx_loc_um] [varchar](2) NOT NULL,
	[xxscm_tx_conv] [money] NOT NULL,
	[xxscm_tx_type] [varchar](8) NOT NULL,
	[xxscm_tx_vend_batch] [varchar](20) NULL,
	[xxscm_tx_qadread] [varchar](1) NULL,
	[xxscm_tx_wmsread] [varchar](1) NULL,
	[xxscm_tx_scmread] [varchar](1) NULL,
	[xxscm_tx_ediread] [varchar](1) NULL,
	[xxscm_tx_rmkks] [varchar](40) NULL,
	[xxscm_tx_createdt] [date] NULL,
	[xxscm_tx_createur] [varchar](8) NULL,
	[xxscm_tx_updatedt] [date] NULL,
	[xxscm_tx_updateur] [varchar](8) NULL,
 CONSTRAINT [PK_xxscm_tx_mstr] PRIMARY KEY CLUSTERED 
(
	[xxscm_tx_seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[xxwms_bk_mstr]    Script Date: 2016/11/29 9:38:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xxwms_bk_mstr](
	[xxwms_bk_seq] [varchar](20) NOT NULL,
	[xxwms_bk_no] [varchar](20) NOT NULL,
	[xxwms_bk_site] [varchar](8) NOT NULL,
	[xxwms_bk_line] [varchar](4) NOT NULL,
	[xxwms_bk_part] [nchar](18) NOT NULL,
	[xxwms_bk_rmks2] [nchar](36) NULL,
	[xxwms_bk_lot] [nchar](10) NULL,
	[xxwms_bk_qty] [money] NOT NULL,
	[xxwms_bk_date] [date] NOT NULL,
	[xxwms_bk_time] [date] NOT NULL,
	[xxwms_bk_loc] [varchar](8) NOT NULL,
	[xxwms_bk_um] [varchar](2) NOT NULL,
	[xxwms_bk_qadread] [varchar](1) NULL,
	[xxwms_bk_WMSread] [varchar](1) NULL,
	[xxwms_bk_scmread] [varchar](1) NULL,
	[xxwms_bk_ediread] [varchar](1) NULL,
	[xxwms_bk_rmks] [varchar](40) NULL,
	[xxwms_bk_createdt] [date] NULL,
	[xxwms_bk_createtur] [varchar](8) NULL,
	[xxwms_bk_updatedt] [date] NOT NULL,
	[xxwms_bk_updateur] [varchar](8) NULL,
 CONSTRAINT [PK_xxwms_bk_mstr] PRIMARY KEY CLUSTERED 
(
	[xxwms_bk_seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[xxwms_ctrl]    Script Date: 2016/11/29 9:38:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xxwms_ctrl](
	[xxmes_seq] [varchar](20) NOT NULL,
	[xxmes_table] [varchar](50) NOT NULL,
	[xxmes_table_qty] [int] NOT NULL,
	[xxmes_qad] [varchar](1) NULL,
	[xxmes_mes] [varchar](1) NULL,
	[xxmes_SCM] [varchar](1) NULL,
	[xxmes_edi] [varchar](1) NULL,
	[xxmes_rmks] [varchar](40) NULL,
 CONSTRAINT [PK_xxwms_ctrl] PRIMARY KEY CLUSTERED 
(
	[xxmes_seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[xxwms_iss_det]    Script Date: 2016/11/29 9:38:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xxwms_iss_det](
	[xxwms_iss_seq] [varchar](20) NOT NULL,
	[xxwms_iss_no] [varchar](20) NOT NULL,
	[xxwms_iss_site] [varchar](8) NOT NULL,
	[xxwms_iss_part] [varchar](18) NOT NULL,
	[xxwms_iss_rmks2] [varchar](36) NULL,
	[xxwms_iss_lot] [nchar](10) NULL,
	[xxwms_iss_qty] [money] NOT NULL,
	[xxwms_iss_date] [date] NOT NULL,
	[xxwms_iss_time] [date] NOT NULL,
	[xxwms_iss_loc] [varchar](8) NOT NULL,
	[xxwms_iss_un] [varchar](2) NOT NULL,
	[xxwms_iss_reason] [varchar](100) NULL,
	[xxwms_iss_qadread] [varchar](1) NULL,
	[xxwms_iss_WMSread] [varchar](1) NULL,
	[xxwms_iss_scmread] [varchar](1) NULL,
	[xxwms_iss_ediread] [varchar](1) NULL,
	[xxwms_iss_rmks1] [varchar](40) NULL,
	[xxwms_iss_createdt] [date] NULL,
	[xxwms_iss_createtur] [varchar](8) NULL,
	[xxwms_iss_updatedt] [date] NULL,
	[xxwms_iss_updateur] [varchar](8) NULL,
 CONSTRAINT [PK_xxwms_iss_det] PRIMARY KEY CLUSTERED 
(
	[xxwms_iss_seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[xxwms_ld_det]    Script Date: 2016/11/29 9:38:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xxwms_ld_det](
	[xxwms_ld_seq] [varchar](20) NOT NULL,
	[xxwms_ld_site] [varchar](4) NOT NULL,
	[xxwms_ld_vend] [varchar](8) NOT NULL,
	[xxwms_ld_loc] [varchar](8) NOT NULL,
	[xxwms_ld_part] [varchar](18) NOT NULL,
	[xxwms_ld_lot] [varchar](20) NULL,
	[xxwms_ld_vend_batch] [varchar](20) NULL,
	[xxwms_ld_rmks] [varchar](36) NULL,
	[xxwms_ld_qty] [money] NOT NULL,
	[xxwms_ld_date] [date] NOT NULL,
	[xxwms_ld_time] [date] NOT NULL,
	[xxwms_ld_um] [varchar](2) NOT NULL,
	[xxwms_ld_qadread] [varchar](1) NULL,
	[xxwms_ld_WMSread] [varchar](1) NULL,
	[xxwms_ld_scmread] [varchar](1) NULL,
	[xxwms_ld_ediread] [varchar](1) NULL,
	[xxwms_ld_rmks1] [varchar](40) NULL,
	[xxwms_ld_createdt] [date] NULL,
	[xxwms_ld_createtur] [varchar](8) NULL,
	[xxwms_ld_updatedt] [date] NULL,
	[xxwms_ld_updateur] [varchar](8) NULL,
 CONSTRAINT [PK_xxwms_ld_det] PRIMARY KEY CLUSTERED 
(
	[xxwms_ld_seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[xxwms_rc_det]    Script Date: 2016/11/29 9:38:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xxwms_rc_det](
	[xxscm_rc_seq] [varchar](20) NOT NULL,
	[xxwms_rc_nbr] [varchar](20) NOT NULL,
	[xxwms_rc_po_nbr] [varchar](8) NOT NULL,
	[xxwms_rc_po_line] [int] NOT NULL,
	[xxwms_rc_part] [varchar](18) NOT NULL,
	[xxwms_rc_qty_total] [money] NOT NULL,
	[xxwms_rc_date_ship] [date] NOT NULL,
	[xxwms_rc_site] [varchar](8) NOT NULL,
	[xxwms_rc_vend] [varchar](8) NOT NULL,
	[xxwms_rc_ware_class] [varchar](20) NULL,
	[xxwms_rc_ware] [varchar](20) NULL,
	[xxwms_rc_loc] [varchar](8) NOT NULL,
	[xxwms_rc_po_um] [varchar](2) NOT NULL,
	[xxwms_rc_loc_um] [varchar](2) NOT NULL,
	[xxwms_rc_conv] [nchar](10) NOT NULL,
	[xxwms_rc_lot] [money] NULL,
	[xxwms_rc_vend_batch] [varchar](20) NOT NULL,
	[xxscm_rc_qadread] [varchar](1) NULL,
	[xxscm_rc_wmsread] [varchar](1) NULL,
	[xxscm_rc_scmread] [varchar](1) NULL,
	[xxscm_rc_ediread] [varchar](1) NULL,
	[xxscm_rc_rmkks] [varchar](40) NULL,
	[xxscm_rc_createdt] [date] NULL,
	[xxscm_rc_createur] [varchar](8) NULL,
	[xxscm_rc_updatedt] [date] NULL,
	[xxscm_rc_updateur] [varchar](8) NULL,
 CONSTRAINT [PK_xxwms_rc_det] PRIMARY KEY CLUSTERED 
(
	[xxscm_rc_seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[xxwms_rct_det]    Script Date: 2016/11/29 9:38:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xxwms_rct_det](
	[xxscms_rct_seq] [varchar](20) NOT NULL,
	[xxwms_rct_no] [varchar](20) NOT NULL,
	[xxwms_rct_site] [varchar](8) NOT NULL,
	[xxwms_rct_part] [varchar](18) NOT NULL,
	[xxwms_rct_rmks2] [varchar](36) NULL,
	[xxwms_rct_lot] [varchar](8) NULL,
	[xxwms_rct_qty] [money] NOT NULL,
	[xxwms_rct_date] [date] NOT NULL,
	[xxwms_rct_time] [date] NOT NULL,
	[xxwms_rct_loc] [varchar](8) NOT NULL,
	[xxwms_rct_um] [varchar](2) NOT NULL,
	[xxwms_rct_reason] [varchar](100) NULL,
	[xxscms_rct_qadread] [varchar](1) NULL,
	[xxscms_rct_wmsread] [varchar](1) NULL,
	[xxscms_rct_scmread] [varchar](1) NULL,
	[xxscms_rct_ediread] [varchar](1) NULL,
	[xxscms_rct_rmkks] [varchar](40) NULL,
	[xxscms_rct_createdt] [date] NULL,
	[xxscms_rct_createur] [varchar](8) NULL,
	[xxscms_rct_updatedt] [date] NULL,
	[xxscms_rct_updateur] [varchar](8) NULL,
 CONSTRAINT [PK_xxwms_rct_det] PRIMARY KEY CLUSTERED 
(
	[xxscms_rct_seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[xxwms_rt_det]    Script Date: 2016/11/29 9:38:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xxwms_rt_det](
	[xxscm_rt_seq] [varchar](20) NOT NULL,
	[xxwms_rt_nbr] [varchar](20) NOT NULL,
	[xxwms_rt_po_nbr] [varchar](8) NOT NULL,
	[xxwms_rt_po_line] [int] NOT NULL,
	[xxwms_rt_part] [varchar](18) NOT NULL,
	[xxwms_rt_qty_total] [money] NOT NULL,
	[xxwms_rt_date_ship] [date] NOT NULL,
	[xxwms_rt_site] [varchar](8) NOT NULL,
	[xxwms_rt_vend] [varchar](8) NOT NULL,
	[xxwms_rt_ware_class] [varchar](20) NULL,
	[xxwms_rt_ware] [varchar](20) NULL,
	[xxwms_rt_loc] [varchar](8) NOT NULL,
	[xxwms_rt_po_um] [varchar](2) NOT NULL,
	[xxwms_rt_loc_um] [varchar](2) NOT NULL,
	[xxwms_rt_conv] [nchar](10) NOT NULL,
	[xxwms_rt_lot] [money] NULL,
	[xxwms_rt_vend_batch] [varchar](20) NOT NULL,
	[xxscm_rt_qadread] [varchar](1) NULL,
	[xxscm_rt_wmsread] [varchar](1) NULL,
	[xxscm_rt_scmread] [varchar](1) NULL,
	[xxscm_rt_ediread] [varchar](1) NULL,
	[xxscm_rt_rmkks] [varchar](40) NULL,
	[xxscm_rt_createdt] [date] NULL,
	[xxscm_rt_createur] [varchar](8) NULL,
	[xxscm_rt_updatedt] [date] NULL,
	[xxscm_rt_updateur] [varchar](8) NULL,
 CONSTRAINT [PK_xxwms_rt_det] PRIMARY KEY CLUSTERED 
(
	[xxscm_rt_seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[xxwms_soiss_det]    Script Date: 2016/11/29 9:38:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xxwms_soiss_det](
	[xxscms_soiss_seq] [varchar](20) NOT NULL,
	[xxwms_soiss_nbr] [varchar](20) NOT NULL,
	[xxwms_soiss_order] [nchar](10) NULL,
	[xxwms_soiss_line] [nchar](10) NULL,
	[xxwms_soiss_part] [varchar](18) NOT NULL,
	[xxwms_soiss_loc] [varchar](8) NOT NULL,
	[xxwms_soiss_date] [date] NOT NULL,
	[xxwms_soiss_qty] [money] NOT NULL,
	[xxwms_soiss_lot] [varchar](8) NULL,
	[xxwms_soiss_site] [varchar](8) NOT NULL,
	[xxwms_soiss_domain] [varchar](8) NULL,
	[xxscms_soiss_qadread] [varchar](1) NULL,
	[xxscms_soiss_wmsread] [varchar](1) NULL,
	[xxscms_soiss_scmread] [varchar](1) NULL,
	[xxscms_soiss_ediread] [varchar](1) NULL,
	[xxscms_soiss_rmkks] [varchar](40) NULL,
	[xxscms_soiss_createdt] [date] NULL,
	[xxscms_soiss_createur] [varchar](8) NULL,
	[xxscms_soiss_updatedt] [date] NULL,
	[xxscms_soiss_updateur] [varchar](8) NULL,
 CONSTRAINT [PK_xxwms_soiss_det] PRIMARY KEY CLUSTERED 
(
	[xxscms_soiss_seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[xxwms_tr_det]    Script Date: 2016/11/29 9:38:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xxwms_tr_det](
	[xxwms_tr_seq] [varchar](20) NOT NULL,
	[xxwms_tr_no] [varchar](20) NULL,
	[xxwms_tr_site] [varchar](8) NOT NULL,
	[xxwms_tr_part] [varchar](18) NOT NULL,
	[xxwms_tr_rmks] [varchar](36) NULL,
	[xxwms_tr_lot] [varchar](8) NULL,
	[xxwms_tr_qty] [money] NOT NULL,
	[xxwms_tr_date] [date] NOT NULL,
	[xxwms_tr_time] [date] NOT NULL,
	[xxwms_tr_loc1] [varchar](8) NULL,
	[xxwms_tr_loc2] [varchar](8) NOT NULL,
	[xxwms_tr_um] [varchar](2) NULL,
	[xxwms_tr_qadread] [varchar](1) NULL,
	[xxwms_tr_WMSread] [varchar](1) NULL,
	[xxwms_tr_scmread] [varchar](1) NULL,
	[xxwms_tr_ediread] [varchar](1) NULL,
	[xxwms_tr_rmks1] [varchar](40) NULL,
	[xxwms_tr_createdt] [date] NULL,
	[xxwms_tr_createtur] [varchar](8) NULL,
	[xxwms_tr_updatedt] [date] NULL,
	[xxwms_tr_updateur] [varchar](8) NULL,
 CONSTRAINT [PK_xxwms_tr_det] PRIMARY KEY CLUSTERED 
(
	[xxwms_tr_seq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流水号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_cm_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_cm_seq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'客户编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_cm_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_cm_addr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'客户名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_cm_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_cm_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地址1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_cm_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_cm_line1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地址2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_cm_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_cm_line2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地址3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_cm_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_cm_line3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'国家' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_cm_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_cm_country'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'城市' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_cm_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_cm_city'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_cm_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_cm_phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'传真' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_cm_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_cm_fax'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮编' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_cm_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_cm_pst_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_cm_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_cm_attn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'货币' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_cm_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_cm_curr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_cm_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_cm_active'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'国内国外' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_cm_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_cm_promo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'供应商类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_cm_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_cm_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'域' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_cm_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_cm_domain'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'QAD读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_cm_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_cm_qadread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'WMS读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_cm_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_cm_WMSread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SCM读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_cm_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_cm_scmread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'EDI读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_cm_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_cm_ediread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_cm_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_cm_rmks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_cm_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_cm_createdt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_cm_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_cm_createtur'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_cm_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_cm_updatedt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_cm_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_cm_updateur'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流水号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_ctrl', @level2type=N'COLUMN',@level2name=N'xxqad_seq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_ctrl', @level2type=N'COLUMN',@level2name=N'xxqad_table'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'输出总笔数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_ctrl', @level2type=N'COLUMN',@level2name=N'xxqad_table_qty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'QAD读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_ctrl', @level2type=N'COLUMN',@level2name=N'xxqad_qad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'MES读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_ctrl', @level2type=N'COLUMN',@level2name=N'xxqad_mes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SCM读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_ctrl', @level2type=N'COLUMN',@level2name=N'xxqad_SCM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'EDI读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_ctrl', @level2type=N'COLUMN',@level2name=N'xxqad_edi'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_ctrl', @level2type=N'COLUMN',@level2name=N'xxqad_rmks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流水号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_ld_det', @level2type=N'COLUMN',@level2name=N'xxqad_ld_seq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工厂' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_ld_det', @level2type=N'COLUMN',@level2name=N'xxqad_ld_site'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'库位编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_ld_det', @level2type=N'COLUMN',@level2name=N'xxqad_ld_loc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'批次' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_ld_det', @level2type=N'COLUMN',@level2name=N'xxqad_ld_lot'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物料号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_ld_det', @level2type=N'COLUMN',@level2name=N'xxqad_ld_part'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_ld_det', @level2type=N'COLUMN',@level2name=N'xxqad_ld_rmks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'库存数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_ld_det', @level2type=N'COLUMN',@level2name=N'xxqad_ld_qty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_ld_det', @level2type=N'COLUMN',@level2name=N'xxqad_ld_date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_ld_det', @level2type=N'COLUMN',@level2name=N'xxqad_ld_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_ld_det', @level2type=N'COLUMN',@level2name=N'xxqad_ld_um'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'QAD读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_ld_det', @level2type=N'COLUMN',@level2name=N'xxqad_ld_qadread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'WMS读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_ld_det', @level2type=N'COLUMN',@level2name=N'xxqad_ld_WMSread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SCM读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_ld_det', @level2type=N'COLUMN',@level2name=N'xxqad_ld_scmread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'EDI读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_ld_det', @level2type=N'COLUMN',@level2name=N'xxqad_ld_ediread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_ld_det', @level2type=N'COLUMN',@level2name=N'xxqad_ld_rmks1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_ld_det', @level2type=N'COLUMN',@level2name=N'xxqad_ld_createdt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_ld_det', @level2type=N'COLUMN',@level2name=N'xxqad_ld_createtur'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_ld_det', @level2type=N'COLUMN',@level2name=N'xxqad_ld_updatedt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_ld_det', @level2type=N'COLUMN',@level2name=N'xxqad_ld_updateur'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流水号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_loc_det', @level2type=N'COLUMN',@level2name=N'xxqad_loc_seq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'库位编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_loc_det', @level2type=N'COLUMN',@level2name=N'xxqad_loc_loc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_loc_det', @level2type=N'COLUMN',@level2name=N'xxqad_loc_desc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分类' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_loc_det', @level2type=N'COLUMN',@level2name=N'xxqad_loc_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工厂' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_loc_det', @level2type=N'COLUMN',@level2name=N'xxqad_loc_site'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'域' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_loc_det', @level2type=N'COLUMN',@level2name=N'xxqad_loc_domain'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'QAD读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_loc_det', @level2type=N'COLUMN',@level2name=N'xxqad_loc_qadread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'WMS读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_loc_det', @level2type=N'COLUMN',@level2name=N'xxqad_loc_wmsread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SCM读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_loc_det', @level2type=N'COLUMN',@level2name=N'xxqad_loc_scmread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'EDI读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_loc_det', @level2type=N'COLUMN',@level2name=N'xxqad_loc_ediread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_loc_det', @level2type=N'COLUMN',@level2name=N'xxqad_loc_rmks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_loc_det', @level2type=N'COLUMN',@level2name=N'xxqad_loc_createdt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_loc_det', @level2type=N'COLUMN',@level2name=N'xxqad_loc_createur'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_loc_det', @level2type=N'COLUMN',@level2name=N'xxqad_loc_updatedt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_loc_det', @level2type=N'COLUMN',@level2name=N'xxqad_loc_updateur'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采购单' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_pod_det', @level2type=N'COLUMN',@level2name=N'xxqad_pod_nbr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'项次' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_pod_det', @level2type=N'COLUMN',@level2name=N'xxqad_pod_line'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物料号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_pod_det', @level2type=N'COLUMN',@level2name=N'xxqad_pod_part'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物料号描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_pod_det', @level2type=N'COLUMN',@level2name=N'xxqad_pod_desc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采购量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_pod_det', @level2type=N'COLUMN',@level2name=N'xxqad_pod_qty_ord'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'已收货量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_pod_det', @level2type=N'COLUMN',@level2name=N'xxqad_pod_qty_rct'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标准包装量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_pod_det', @level2type=N'COLUMN',@level2name=N'xxqad_pod_qty_std'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'要货日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_pod_det', @level2type=N'COLUMN',@level2name=N'xxqad_pod_due_date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'库存单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_pod_det', @level2type=N'COLUMN',@level2name=N'xxqad_pod_loc_um'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采购单单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_pod_det', @level2type=N'COLUMN',@level2name=N'xxqad_pod_um'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'转换率' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_pod_det', @level2type=N'COLUMN',@level2name=N'xxqad_pod_um_conv'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'供应商编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_pod_det', @level2type=N'COLUMN',@level2name=N'xxqad_pod_vend'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'供应商名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_pod_det', @level2type=N'COLUMN',@level2name=N'xxqad_pod_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_pod_det', @level2type=N'COLUMN',@level2name=N'xxqad_pod_attn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发货至' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_pod_det', @level2type=N'COLUMN',@level2name=N'xxqad_pod_ship'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'国内国外' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_pod_det', @level2type=N'COLUMN',@level2name=N'xxqad_pod_made'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工厂' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_pod_det', @level2type=N'COLUMN',@level2name=N'xxqad_pod_site'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否为确认采购单' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_pod_det', @level2type=N'COLUMN',@level2name=N'xxqad_pod_confirm'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'域' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_pod_det', @level2type=N'COLUMN',@level2name=N'xxqad_pod_domain'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'交货联系人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_pod_det', @level2type=N'COLUMN',@level2name=N'xxqad_pod_buyer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'交货联系人电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_pod_det', @level2type=N'COLUMN',@level2name=N'xxqad_pod_buyer_phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'qad读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_pod_det', @level2type=N'COLUMN',@level2name=N'xxqad_pod_qadread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'wms读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_pod_det', @level2type=N'COLUMN',@level2name=N'xxqad_pod_wmsread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'scm读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_pod_det', @level2type=N'COLUMN',@level2name=N'xxqad_pod_scmread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'edi读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_pod_det', @level2type=N'COLUMN',@level2name=N'xxqad_pod_ediread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_pod_det', @level2type=N'COLUMN',@level2name=N'xxqad_pod_rmkks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_pod_det', @level2type=N'COLUMN',@level2name=N'xxqad_pod_createdt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_pod_det', @level2type=N'COLUMN',@level2name=N'xxqad_pod_createur'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_pod_det', @level2type=N'COLUMN',@level2name=N'xxqad_pod_updatedt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_pod_det', @level2type=N'COLUMN',@level2name=N'xxqad_pod_updateur'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流水号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_pod_det', @level2type=N'COLUMN',@level2name=N'xxqad_pod_seq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流水号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_pprice_det', @level2type=N'COLUMN',@level2name=N'xxqad_pprice_seq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'价格表代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_pprice_det', @level2type=N'COLUMN',@level2name=N'xxqad_pprice_list'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'币别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_pprice_det', @level2type=N'COLUMN',@level2name=N'xxqad_pprice_curr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'零件号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_pprice_det', @level2type=N'COLUMN',@level2name=N'xxqad_pprice_part'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'计量单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_pprice_det', @level2type=N'COLUMN',@level2name=N'xxqad_pprice_um'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_pprice_det', @level2type=N'COLUMN',@level2name=N'xxqad_pprice_start'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_pprice_det', @level2type=N'COLUMN',@level2name=N'xxqad_pprice_end'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_pprice_det', @level2type=N'COLUMN',@level2name=N'xxqad_pprice_amt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'域' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_pprice_det', @level2type=N'COLUMN',@level2name=N'xxqad_pprice_domain'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'QAD读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_pprice_det', @level2type=N'COLUMN',@level2name=N'xxqad_pprice_qadread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'WMS读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_pprice_det', @level2type=N'COLUMN',@level2name=N'xxqad_pprice_wmsread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SCM读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_pprice_det', @level2type=N'COLUMN',@level2name=N'xxqad_pprice_scmread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'EDI读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_pprice_det', @level2type=N'COLUMN',@level2name=N'xxqad_pprice_ediread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_pprice_det', @level2type=N'COLUMN',@level2name=N'xxqad_pprice_rmks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_pprice_det', @level2type=N'COLUMN',@level2name=N'xxqad_pprice_createdt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_pprice_det', @level2type=N'COLUMN',@level2name=N'xxqad_pprice_createur'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_pprice_det', @level2type=N'COLUMN',@level2name=N'xxqad_pprice_updatedt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_pprice_det', @level2type=N'COLUMN',@level2name=N'xxqad_pprice_updateur'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流水号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_ps_mstr', @level2type=N'COLUMN',@level2name=N'xxwms_ps_seq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父料号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_ps_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_ps_par'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'子料号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_ps_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_ps_comp'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'参考号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_ps_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_ps_ref'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_ps_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_ps_qty_per'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_ps_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_ps_ps_code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_ps_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_ps_start'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_ps_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_ps_end'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_ps_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_ps_rmks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_ps_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_ps_op'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'域' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_ps_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_ps_domain'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'QAD读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_ps_mstr', @level2type=N'COLUMN',@level2name=N'xxwms_ps_qadread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'WMS读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_ps_mstr', @level2type=N'COLUMN',@level2name=N'xxwms_ps_WMSread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SCM读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_ps_mstr', @level2type=N'COLUMN',@level2name=N'xxwms_ps_scmread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'EDI读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_ps_mstr', @level2type=N'COLUMN',@level2name=N'xxwms_ps_ediread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_ps_mstr', @level2type=N'COLUMN',@level2name=N'xxwms_ps_rmks1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_ps_mstr', @level2type=N'COLUMN',@level2name=N'xxwms_ps_createdt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_ps_mstr', @level2type=N'COLUMN',@level2name=N'xxwms_ps_createtur'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_ps_mstr', @level2type=N'COLUMN',@level2name=N'xxwms_ps_updatedt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_ps_mstr', @level2type=N'COLUMN',@level2name=N'xxwms_ps_updateur'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流水号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_pt_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_pt_seq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'零件号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_pt_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_pt_part'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'计量单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_pt_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_pt_um'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_pt_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_pt_desc1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_pt_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_pt_desc2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'来源' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_pt_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_pt_dsgn_grp'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物流属性' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_pt_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_pt_part_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'产品类' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_pt_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_pt_prod_line'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物料状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_pt_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_pt_status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工厂' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_pt_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_pt_site'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'域' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_pt_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_pt_domain'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'QAD读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_pt_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_pt_qadread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'WMS读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_pt_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_pt_WMSread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SCM读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_pt_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_pt_scmread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'EDI读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_pt_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_pt_ediread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_pt_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_pt_rmks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_pt_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_pt_createdt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_pt_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_pt_createtur'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_pt_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_pt_updatedt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_pt_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_pt_updateur'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流水号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_sche_det', @level2type=N'COLUMN',@level2name=N'xxqad_sche_seq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'客户编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_sche_det', @level2type=N'COLUMN',@level2name=N'xxqad_sche_cust'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'客户名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_sche_det', @level2type=N'COLUMN',@level2name=N'xxqad_sche_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'对应产成品' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_sche_det', @level2type=N'COLUMN',@level2name=N'xxqad_sche_part'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'客户零件编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_sche_det', @level2type=N'COLUMN',@level2name=N'xxqad_sche_custpart'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地址描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_sche_det', @level2type=N'COLUMN',@level2name=N'xxqad_sche_desc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'外箱包装量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_sche_det', @level2type=N'COLUMN',@level2name=N'xxqad_sche_comment'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'域' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_sche_det', @level2type=N'COLUMN',@level2name=N'xxqad_sche_domain'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'QAD读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_sche_det', @level2type=N'COLUMN',@level2name=N'xxqad_sche_qadread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'WMS读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_sche_det', @level2type=N'COLUMN',@level2name=N'xxqad_sche_wmsread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SCM读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_sche_det', @level2type=N'COLUMN',@level2name=N'xxqad_sche_scmread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'EDI读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_sche_det', @level2type=N'COLUMN',@level2name=N'xxqad_sche_ediread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_sche_det', @level2type=N'COLUMN',@level2name=N'xxqad_sche_rmks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_sche_det', @level2type=N'COLUMN',@level2name=N'xxqad_sche_createdt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_sche_det', @level2type=N'COLUMN',@level2name=N'xxqad_sche_createur'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_sche_det', @level2type=N'COLUMN',@level2name=N'xxqad_sche_updatedt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_sche_det', @level2type=N'COLUMN',@level2name=N'xxqad_sche_updateur'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流水号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_sct_det', @level2type=N'COLUMN',@level2name=N'xxwms_sct_seq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地点' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_sct_det', @level2type=N'COLUMN',@level2name=N'xxqad_sct_site'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物料号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_sct_det', @level2type=N'COLUMN',@level2name=N'xxqad_sct_part'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物料名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_sct_det', @level2type=N'COLUMN',@level2name=N'xxqad_sct_ref'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标准成本' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_sct_det', @level2type=N'COLUMN',@level2name=N'xxqad_sct_cst_tot'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_sct_det', @level2type=N'COLUMN',@level2name=N'xxqad_sct_cst_date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'域' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_sct_det', @level2type=N'COLUMN',@level2name=N'xxqad_sct_domain'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'QAD读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_sct_det', @level2type=N'COLUMN',@level2name=N'xxwms_sct_qadread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'WMS读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_sct_det', @level2type=N'COLUMN',@level2name=N'xxwms_sct_WMSread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SCM读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_sct_det', @level2type=N'COLUMN',@level2name=N'xxwms_sct_scmread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'EDI读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_sct_det', @level2type=N'COLUMN',@level2name=N'xxwms_sct_ediread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_sct_det', @level2type=N'COLUMN',@level2name=N'xxwms_sct_rmks1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_sct_det', @level2type=N'COLUMN',@level2name=N'xxwms_sct_createdt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_sct_det', @level2type=N'COLUMN',@level2name=N'xxwms_sct_createtur'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_sct_det', @level2type=N'COLUMN',@level2name=N'xxwms_sct_updatedt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_sct_det', @level2type=N'COLUMN',@level2name=N'xxwms_sct_updateur'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流水号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_sod_det', @level2type=N'COLUMN',@level2name=N'xxqad_sod_seq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'客户编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_sod_det', @level2type=N'COLUMN',@level2name=N'xxqad_sod_cust'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物料号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_sod_det', @level2type=N'COLUMN',@level2name=N'xxqad_sod_part'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物料号描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_sod_det', @level2type=N'COLUMN',@level2name=N'xxqad_sod_desc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_sod_det', @level2type=N'COLUMN',@level2name=N'xxqad_sod_order'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单项次' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_sod_det', @level2type=N'COLUMN',@level2name=N'xxqad_sod_line'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_sod_det', @level2type=N'COLUMN',@level2name=N'xxqad_sod_um'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'销售地点' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_sod_det', @level2type=N'COLUMN',@level2name=N'xxqad_sod_site'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'销售库位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_sod_det', @level2type=N'COLUMN',@level2name=N'xxqad_sod_loc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标准包装' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_sod_det', @level2type=N'COLUMN',@level2name=N'xxqad_sod_qty_std'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'域' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_sod_det', @level2type=N'COLUMN',@level2name=N'xxqad_sod_domain'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'QAD读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_sod_det', @level2type=N'COLUMN',@level2name=N'xxqad_sod_qadread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'WMS读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_sod_det', @level2type=N'COLUMN',@level2name=N'xxqad_sod_WMSread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SCM读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_sod_det', @level2type=N'COLUMN',@level2name=N'xxqad_sod_scmread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'EDI读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_sod_det', @level2type=N'COLUMN',@level2name=N'xxqad_sod_ediread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_sod_det', @level2type=N'COLUMN',@level2name=N'xxqad_sod_rmks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_sod_det', @level2type=N'COLUMN',@level2name=N'xxqad_sod_createdt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_sod_det', @level2type=N'COLUMN',@level2name=N'xxqad_sod_createtur'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_sod_det', @level2type=N'COLUMN',@level2name=N'xxqad_sod_updatedt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_sod_det', @level2type=N'COLUMN',@level2name=N'xxqad_sod_updateur'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流水号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_sprice_det', @level2type=N'COLUMN',@level2name=N'xxqad_sprice_seq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'价格表代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_sprice_det', @level2type=N'COLUMN',@level2name=N'xxqad_sprice_list'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'币别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_sprice_det', @level2type=N'COLUMN',@level2name=N'xxqad_sprice_curr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'零件号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_sprice_det', @level2type=N'COLUMN',@level2name=N'xxqad_sprice_part'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'计量单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_sprice_det', @level2type=N'COLUMN',@level2name=N'xxqad_sprice_um'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_sprice_det', @level2type=N'COLUMN',@level2name=N'xxqad_sprice_start'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结束日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_sprice_det', @level2type=N'COLUMN',@level2name=N'xxqad_sprice_end'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_sprice_det', @level2type=N'COLUMN',@level2name=N'xxqad_sprice_amt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'域' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_sprice_det', @level2type=N'COLUMN',@level2name=N'xxqad_sprice_domain'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'qad读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_sprice_det', @level2type=N'COLUMN',@level2name=N'xxqad_sprice_qadread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'wms读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_sprice_det', @level2type=N'COLUMN',@level2name=N'xxqad_sprice_wmsread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'scm读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_sprice_det', @level2type=N'COLUMN',@level2name=N'xxqad_sprice_scmread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'edi读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_sprice_det', @level2type=N'COLUMN',@level2name=N'xxqad_sprice_ediread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_sprice_det', @level2type=N'COLUMN',@level2name=N'xxqad_sprice_rmkks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_sprice_det', @level2type=N'COLUMN',@level2name=N'xxqad_sprice_createdt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_sprice_det', @level2type=N'COLUMN',@level2name=N'xxqad_sprice_createur'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_sprice_det', @level2type=N'COLUMN',@level2name=N'xxqad_sprice_updatedt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_sprice_det', @level2type=N'COLUMN',@level2name=N'xxqad_sprice_updateur'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流水号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_tag_det', @level2type=N'COLUMN',@level2name=N'xxscms_tag_seq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'盘点单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_tag_det', @level2type=N'COLUMN',@level2name=N'xxwms_tag_nbr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物料号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_tag_det', @level2type=N'COLUMN',@level2name=N'xxwms_tag_part'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'QAD库位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_tag_det', @level2type=N'COLUMN',@level2name=N'xxwms_tag_loc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'批次' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_tag_det', @level2type=N'COLUMN',@level2name=N'xxwms_tag_lot'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_tag_det', @level2type=N'COLUMN',@level2name=N'xxwms_tag_date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'差异数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_tag_det', @level2type=N'COLUMN',@level2name=N'xxwms_tag_var_qty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工厂' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_tag_det', @level2type=N'COLUMN',@level2name=N'xxwms_tag_site'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'域' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_tag_det', @level2type=N'COLUMN',@level2name=N'xxwms_tag_domain'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'qad读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_tag_det', @level2type=N'COLUMN',@level2name=N'xxscms_tag_qadread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'wms读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_tag_det', @level2type=N'COLUMN',@level2name=N'xxscms_tag_wmsread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'scm读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_tag_det', @level2type=N'COLUMN',@level2name=N'xxscms_tag_scmread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'edi读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_tag_det', @level2type=N'COLUMN',@level2name=N'xxscms_tag_ediread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_tag_det', @level2type=N'COLUMN',@level2name=N'xxscms_tag_rmkks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_tag_det', @level2type=N'COLUMN',@level2name=N'xxscms_tag_createdt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_tag_det', @level2type=N'COLUMN',@level2name=N'xxscms_tag_createur'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_tag_det', @level2type=N'COLUMN',@level2name=N'xxscms_tag_updatedt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_tag_det', @level2type=N'COLUMN',@level2name=N'xxscms_tag_updateur'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流水号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_vd_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_vd_seq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'供应商编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_vd_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_vd_addr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'供应商名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_vd_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_vd_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地址1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_vd_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_vd_line1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地址2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_vd_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_vd_line2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地址3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_vd_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_vd_line3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'国家' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_vd_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_vd_country'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'城市' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_vd_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_vd_city'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_vd_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_vd_phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'传真' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_vd_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_vd_fax'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮编' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_vd_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_vd_pst_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_vd_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_vd_attn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'货币' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_vd_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_vd_curr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_vd_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_vd_active'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'国内国外' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_vd_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_vd_promo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'供应商类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_vd_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_vd_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'域' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_vd_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_vd_domain'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'QAD读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_vd_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_vd_qadread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'WMS读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_vd_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_vd_WMSread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SCM读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_vd_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_vd_scmread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'EDI读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_vd_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_vd_ediread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_vd_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_vd_rmks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_vd_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_vd_createdt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_vd_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_vd_createtur'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_vd_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_vd_updatedt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_vd_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_vd_updateur'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流水号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_vp_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_vp_seq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'供应商编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_vp_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_vp_addr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'对应物料号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_vp_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_vp_part'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'供应商物料号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_vp_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_vp_vend_part'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工厂' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_vp_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_vp_site'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'外箱包装量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_vp_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_vp_comment'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'域' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_vp_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_vp_domain'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'QAD读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_vp_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_vp_qadread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'WMS读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_vp_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_vp_WMSread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SCM读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_vp_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_vp_scmread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'EDI读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_vp_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_vp_ediread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_vp_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_vp_rmks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_vp_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_vp_createdt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_vp_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_vp_createtur'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_vp_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_vp_updatedt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxqad_vp_mstr', @level2type=N'COLUMN',@level2name=N'xxqad_vp_updateur'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流水号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxscm_ctrl', @level2type=N'COLUMN',@level2name=N'xxSCM_seq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxscm_ctrl', @level2type=N'COLUMN',@level2name=N'xxSCM_table'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'输出总笔数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxscm_ctrl', @level2type=N'COLUMN',@level2name=N'xxSCM_table_qty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'QAD读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxscm_ctrl', @level2type=N'COLUMN',@level2name=N'xxSCM_qad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'MES读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxscm_ctrl', @level2type=N'COLUMN',@level2name=N'xxSCM_mes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SCM读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxscm_ctrl', @level2type=N'COLUMN',@level2name=N'xxSCM_SCM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'EDI读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxscm_ctrl', @level2type=N'COLUMN',@level2name=N'xxSCM_edi'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxscm_ctrl', @level2type=N'COLUMN',@level2name=N'xxSCM_rmks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流水号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxscm_inv_det', @level2type=N'COLUMN',@level2name=N'xxscm_inv_seq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'增值税发票号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxscm_inv_det', @level2type=N'COLUMN',@level2name=N'xxscm_inv_invoice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发票序号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxscm_inv_det', @level2type=N'COLUMN',@level2name=N'xxscm_inv_nbr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'供应商编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxscm_inv_det', @level2type=N'COLUMN',@level2name=N'xxscm_inv_wend'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开票日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxscm_inv_det', @level2type=N'COLUMN',@level2name=N'xxscm_inv_date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'货币' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxscm_inv_det', @level2type=N'COLUMN',@level2name=N'xxscm_inv_curr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采购订单' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxscm_inv_det', @level2type=N'COLUMN',@level2name=N'xxscm_inv_order'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采购项次' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxscm_inv_det', @level2type=N'COLUMN',@level2name=N'xxscm_inv_line'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'wms收库单/退货单' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxscm_inv_det', @level2type=N'COLUMN',@level2name=N'xxscm_inv_receiver'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SCM送货单' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxscm_inv_det', @level2type=N'COLUMN',@level2name=N'xxscm_inv_asn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'零件编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxscm_inv_det', @level2type=N'COLUMN',@level2name=N'xxscm_inv_part'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发票数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxscm_inv_det', @level2type=N'COLUMN',@level2name=N'xxscm_inv_qty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发票单价' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxscm_inv_det', @level2type=N'COLUMN',@level2name=N'xxscm_inv_price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'税率' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxscm_inv_det', @level2type=N'COLUMN',@level2name=N'xxscm_inv_taxt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'税金' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxscm_inv_det', @level2type=N'COLUMN',@level2name=N'xxscm_inv_taxamt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发票总金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxscm_inv_det', @level2type=N'COLUMN',@level2name=N'xxscm_inv_amt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'qad读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxscm_inv_det', @level2type=N'COLUMN',@level2name=N'xxscm_inv_qadread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'wms读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxscm_inv_det', @level2type=N'COLUMN',@level2name=N'xxscm_inv_wmsread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'scm读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxscm_inv_det', @level2type=N'COLUMN',@level2name=N'xxscm_inv_scmread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'edi读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxscm_inv_det', @level2type=N'COLUMN',@level2name=N'xxscm_inv_ediread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxscm_inv_det', @level2type=N'COLUMN',@level2name=N'xxscm_inv_rmkks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxscm_inv_det', @level2type=N'COLUMN',@level2name=N'xxscm_inv_createdt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxscm_inv_det', @level2type=N'COLUMN',@level2name=N'xxscm_inv_createur'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxscm_inv_det', @level2type=N'COLUMN',@level2name=N'xxscm_inv_updatedt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxscm_inv_det', @level2type=N'COLUMN',@level2name=N'xxscm_inv_updateur'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流水号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxscm_tx_det', @level2type=N'COLUMN',@level2name=N'xxscm_tx_seq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'送货单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxscm_tx_det', @level2type=N'COLUMN',@level2name=N'xxscm_tx_nbr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采购单' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxscm_tx_det', @level2type=N'COLUMN',@level2name=N'xxscm_tx_po_nbr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'项次' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxscm_tx_det', @level2type=N'COLUMN',@level2name=N'xxscm_tx_po_line'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物料号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxscm_tx_det', @level2type=N'COLUMN',@level2name=N'xxscm_tx_part'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实发包装数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxscm_tx_det', @level2type=N'COLUMN',@level2name=N'xxscm_tx_qty_real'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'箱号(箱单条码)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxscm_tx_det', @level2type=N'COLUMN',@level2name=N'xxscm_tx_boxcode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'QAD读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxscm_tx_det', @level2type=N'COLUMN',@level2name=N'xxscm_tx_qadread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'WMS读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxscm_tx_det', @level2type=N'COLUMN',@level2name=N'xxscm_tx_WMSread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SCM读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxscm_tx_det', @level2type=N'COLUMN',@level2name=N'xxscm_tx_scmread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'EDI读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxscm_tx_det', @level2type=N'COLUMN',@level2name=N'xxscm_tx_ediread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxscm_tx_det', @level2type=N'COLUMN',@level2name=N'xxscm_tx_rmks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxscm_tx_det', @level2type=N'COLUMN',@level2name=N'xxscm_tx_createdt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxscm_tx_det', @level2type=N'COLUMN',@level2name=N'xxscm_tx_createtur'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxscm_tx_det', @level2type=N'COLUMN',@level2name=N'xxscm_tx_updatedt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxscm_tx_det', @level2type=N'COLUMN',@level2name=N'xxscm_tx_updateur'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流水号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxscm_tx_mstr', @level2type=N'COLUMN',@level2name=N'xxscm_tx_seq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'送货单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxscm_tx_mstr', @level2type=N'COLUMN',@level2name=N'xxscm_tx_nbr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采购单' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxscm_tx_mstr', @level2type=N'COLUMN',@level2name=N'xxscm_tx_po_nbr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'项次' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxscm_tx_mstr', @level2type=N'COLUMN',@level2name=N'xxscm_tx_po_line'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物料号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxscm_tx_mstr', @level2type=N'COLUMN',@level2name=N'xxscm_tx_part'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'送货总量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxscm_tx_mstr', @level2type=N'COLUMN',@level2name=N'xxscm_tx_qty_total'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标准包装量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxscm_tx_mstr', @level2type=N'COLUMN',@level2name=N'xxscm_tx_qty_std'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发货日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxscm_tx_mstr', @level2type=N'COLUMN',@level2name=N'xxscm_tx_date_ship'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预计到达日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxscm_tx_mstr', @level2type=N'COLUMN',@level2name=N'xxscm_tx_date_Promise'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采购单到期日' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxscm_tx_mstr', @level2type=N'COLUMN',@level2name=N'xxscm_tx_date_due'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工厂' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxscm_tx_mstr', @level2type=N'COLUMN',@level2name=N'xxscm_tx_site'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'供应商' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxscm_tx_mstr', @level2type=N'COLUMN',@level2name=N'xxscm_tx_vend'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'器具型号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxscm_tx_mstr', @level2type=N'COLUMN',@level2name=N'xxscm_tx_ware_class'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'器具号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxscm_tx_mstr', @level2type=N'COLUMN',@level2name=N'xxscm_tx_ware'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采购单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxscm_tx_mstr', @level2type=N'COLUMN',@level2name=N'xxscm_tx_po_um'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'转换比例' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxscm_tx_mstr', @level2type=N'COLUMN',@level2name=N'xxscm_tx_loc_um'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'基本单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxscm_tx_mstr', @level2type=N'COLUMN',@level2name=N'xxscm_tx_conv'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'零件类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxscm_tx_mstr', @level2type=N'COLUMN',@level2name=N'xxscm_tx_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'供应商批号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxscm_tx_mstr', @level2type=N'COLUMN',@level2name=N'xxscm_tx_vend_batch'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'qad读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxscm_tx_mstr', @level2type=N'COLUMN',@level2name=N'xxscm_tx_qadread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'wms读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxscm_tx_mstr', @level2type=N'COLUMN',@level2name=N'xxscm_tx_wmsread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'scm读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxscm_tx_mstr', @level2type=N'COLUMN',@level2name=N'xxscm_tx_scmread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'edi读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxscm_tx_mstr', @level2type=N'COLUMN',@level2name=N'xxscm_tx_ediread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxscm_tx_mstr', @level2type=N'COLUMN',@level2name=N'xxscm_tx_rmkks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxscm_tx_mstr', @level2type=N'COLUMN',@level2name=N'xxscm_tx_createdt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxscm_tx_mstr', @level2type=N'COLUMN',@level2name=N'xxscm_tx_createur'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxscm_tx_mstr', @level2type=N'COLUMN',@level2name=N'xxscm_tx_updatedt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxscm_tx_mstr', @level2type=N'COLUMN',@level2name=N'xxscm_tx_updateur'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流水号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_bk_mstr', @level2type=N'COLUMN',@level2name=N'xxwms_bk_seq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'wms成品收货单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_bk_mstr', @level2type=N'COLUMN',@level2name=N'xxwms_bk_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工厂' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_bk_mstr', @level2type=N'COLUMN',@level2name=N'xxwms_bk_site'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生产线' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_bk_mstr', @level2type=N'COLUMN',@level2name=N'xxwms_bk_line'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物料号(半成品、成品)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_bk_mstr', @level2type=N'COLUMN',@level2name=N'xxwms_bk_part'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_bk_mstr', @level2type=N'COLUMN',@level2name=N'xxwms_bk_rmks2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'批次号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_bk_mstr', @level2type=N'COLUMN',@level2name=N'xxwms_bk_lot'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_bk_mstr', @level2type=N'COLUMN',@level2name=N'xxwms_bk_qty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_bk_mstr', @level2type=N'COLUMN',@level2name=N'xxwms_bk_date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_bk_mstr', @level2type=N'COLUMN',@level2name=N'xxwms_bk_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'下线库位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_bk_mstr', @level2type=N'COLUMN',@level2name=N'xxwms_bk_loc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_bk_mstr', @level2type=N'COLUMN',@level2name=N'xxwms_bk_um'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'QAD读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_bk_mstr', @level2type=N'COLUMN',@level2name=N'xxwms_bk_qadread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'WMS读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_bk_mstr', @level2type=N'COLUMN',@level2name=N'xxwms_bk_WMSread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SCM读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_bk_mstr', @level2type=N'COLUMN',@level2name=N'xxwms_bk_scmread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'EDI读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_bk_mstr', @level2type=N'COLUMN',@level2name=N'xxwms_bk_ediread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_bk_mstr', @level2type=N'COLUMN',@level2name=N'xxwms_bk_rmks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_bk_mstr', @level2type=N'COLUMN',@level2name=N'xxwms_bk_createdt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_bk_mstr', @level2type=N'COLUMN',@level2name=N'xxwms_bk_createtur'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_bk_mstr', @level2type=N'COLUMN',@level2name=N'xxwms_bk_updatedt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_bk_mstr', @level2type=N'COLUMN',@level2name=N'xxwms_bk_updateur'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流水号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_ctrl', @level2type=N'COLUMN',@level2name=N'xxmes_seq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_ctrl', @level2type=N'COLUMN',@level2name=N'xxmes_table'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'输出总笔数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_ctrl', @level2type=N'COLUMN',@level2name=N'xxmes_table_qty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'QAD读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_ctrl', @level2type=N'COLUMN',@level2name=N'xxmes_qad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'MES读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_ctrl', @level2type=N'COLUMN',@level2name=N'xxmes_mes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SCM读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_ctrl', @level2type=N'COLUMN',@level2name=N'xxmes_SCM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'EDI读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_ctrl', @level2type=N'COLUMN',@level2name=N'xxmes_edi'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_ctrl', @level2type=N'COLUMN',@level2name=N'xxmes_rmks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流水号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_iss_det', @level2type=N'COLUMN',@level2name=N'xxwms_iss_seq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'其他出库单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_iss_det', @level2type=N'COLUMN',@level2name=N'xxwms_iss_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工厂' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_iss_det', @level2type=N'COLUMN',@level2name=N'xxwms_iss_site'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物料号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_iss_det', @level2type=N'COLUMN',@level2name=N'xxwms_iss_part'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_iss_det', @level2type=N'COLUMN',@level2name=N'xxwms_iss_rmks2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'批次号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_iss_det', @level2type=N'COLUMN',@level2name=N'xxwms_iss_lot'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发货量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_iss_det', @level2type=N'COLUMN',@level2name=N'xxwms_iss_qty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_iss_det', @level2type=N'COLUMN',@level2name=N'xxwms_iss_date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_iss_det', @level2type=N'COLUMN',@level2name=N'xxwms_iss_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'库位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_iss_det', @level2type=N'COLUMN',@level2name=N'xxwms_iss_loc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_iss_det', @level2type=N'COLUMN',@level2name=N'xxwms_iss_un'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'原因代码、出库类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_iss_det', @level2type=N'COLUMN',@level2name=N'xxwms_iss_reason'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'QAD读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_iss_det', @level2type=N'COLUMN',@level2name=N'xxwms_iss_qadread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'WMS读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_iss_det', @level2type=N'COLUMN',@level2name=N'xxwms_iss_WMSread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SCM读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_iss_det', @level2type=N'COLUMN',@level2name=N'xxwms_iss_scmread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'EDI读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_iss_det', @level2type=N'COLUMN',@level2name=N'xxwms_iss_ediread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_iss_det', @level2type=N'COLUMN',@level2name=N'xxwms_iss_rmks1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_iss_det', @level2type=N'COLUMN',@level2name=N'xxwms_iss_createdt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_iss_det', @level2type=N'COLUMN',@level2name=N'xxwms_iss_createtur'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_iss_det', @level2type=N'COLUMN',@level2name=N'xxwms_iss_updatedt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_iss_det', @level2type=N'COLUMN',@level2name=N'xxwms_iss_updateur'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流水号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_ld_det', @level2type=N'COLUMN',@level2name=N'xxwms_ld_seq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工厂' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_ld_det', @level2type=N'COLUMN',@level2name=N'xxwms_ld_site'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'供应商' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_ld_det', @level2type=N'COLUMN',@level2name=N'xxwms_ld_vend'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'库位编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_ld_det', @level2type=N'COLUMN',@level2name=N'xxwms_ld_loc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物料号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_ld_det', @level2type=N'COLUMN',@level2name=N'xxwms_ld_part'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'批次号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_ld_det', @level2type=N'COLUMN',@level2name=N'xxwms_ld_lot'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'供应商批号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_ld_det', @level2type=N'COLUMN',@level2name=N'xxwms_ld_vend_batch'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_ld_det', @level2type=N'COLUMN',@level2name=N'xxwms_ld_rmks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'库存数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_ld_det', @level2type=N'COLUMN',@level2name=N'xxwms_ld_qty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_ld_det', @level2type=N'COLUMN',@level2name=N'xxwms_ld_date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_ld_det', @level2type=N'COLUMN',@level2name=N'xxwms_ld_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_ld_det', @level2type=N'COLUMN',@level2name=N'xxwms_ld_um'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'QAD读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_ld_det', @level2type=N'COLUMN',@level2name=N'xxwms_ld_qadread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'WMS读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_ld_det', @level2type=N'COLUMN',@level2name=N'xxwms_ld_WMSread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SCM读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_ld_det', @level2type=N'COLUMN',@level2name=N'xxwms_ld_scmread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'EDI读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_ld_det', @level2type=N'COLUMN',@level2name=N'xxwms_ld_ediread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_ld_det', @level2type=N'COLUMN',@level2name=N'xxwms_ld_rmks1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_ld_det', @level2type=N'COLUMN',@level2name=N'xxwms_ld_createdt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_ld_det', @level2type=N'COLUMN',@level2name=N'xxwms_ld_createtur'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_ld_det', @level2type=N'COLUMN',@level2name=N'xxwms_ld_updatedt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_ld_det', @level2type=N'COLUMN',@level2name=N'xxwms_ld_updateur'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流水号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_rc_det', @level2type=N'COLUMN',@level2name=N'xxscm_rc_seq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'入库单号码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_rc_det', @level2type=N'COLUMN',@level2name=N'xxwms_rc_nbr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采购单' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_rc_det', @level2type=N'COLUMN',@level2name=N'xxwms_rc_po_nbr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'项次' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_rc_det', @level2type=N'COLUMN',@level2name=N'xxwms_rc_po_line'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物料号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_rc_det', @level2type=N'COLUMN',@level2name=N'xxwms_rc_part'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收货总量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_rc_det', @level2type=N'COLUMN',@level2name=N'xxwms_rc_qty_total'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收货日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_rc_det', @level2type=N'COLUMN',@level2name=N'xxwms_rc_date_ship'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工厂' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_rc_det', @level2type=N'COLUMN',@level2name=N'xxwms_rc_site'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'供应商' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_rc_det', @level2type=N'COLUMN',@level2name=N'xxwms_rc_vend'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'器具型号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_rc_det', @level2type=N'COLUMN',@level2name=N'xxwms_rc_ware_class'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'器具号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_rc_det', @level2type=N'COLUMN',@level2name=N'xxwms_rc_ware'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收货库位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_rc_det', @level2type=N'COLUMN',@level2name=N'xxwms_rc_loc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采购单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_rc_det', @level2type=N'COLUMN',@level2name=N'xxwms_rc_po_um'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'基本单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_rc_det', @level2type=N'COLUMN',@level2name=N'xxwms_rc_loc_um'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'转换比例' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_rc_det', @level2type=N'COLUMN',@level2name=N'xxwms_rc_conv'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'批次' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_rc_det', @level2type=N'COLUMN',@level2name=N'xxwms_rc_lot'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'供应商批号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_rc_det', @level2type=N'COLUMN',@level2name=N'xxwms_rc_vend_batch'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'qad读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_rc_det', @level2type=N'COLUMN',@level2name=N'xxscm_rc_qadread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'wms读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_rc_det', @level2type=N'COLUMN',@level2name=N'xxscm_rc_wmsread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'scm读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_rc_det', @level2type=N'COLUMN',@level2name=N'xxscm_rc_scmread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'edi读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_rc_det', @level2type=N'COLUMN',@level2name=N'xxscm_rc_ediread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_rc_det', @level2type=N'COLUMN',@level2name=N'xxscm_rc_rmkks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_rc_det', @level2type=N'COLUMN',@level2name=N'xxscm_rc_createdt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_rc_det', @level2type=N'COLUMN',@level2name=N'xxscm_rc_createur'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_rc_det', @level2type=N'COLUMN',@level2name=N'xxscm_rc_updatedt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_rc_det', @level2type=N'COLUMN',@level2name=N'xxscm_rc_updateur'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流水号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_rct_det', @level2type=N'COLUMN',@level2name=N'xxscms_rct_seq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'其他入库单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_rct_det', @level2type=N'COLUMN',@level2name=N'xxwms_rct_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工厂' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_rct_det', @level2type=N'COLUMN',@level2name=N'xxwms_rct_site'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物料号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_rct_det', @level2type=N'COLUMN',@level2name=N'xxwms_rct_part'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_rct_det', @level2type=N'COLUMN',@level2name=N'xxwms_rct_rmks2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'批次号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_rct_det', @level2type=N'COLUMN',@level2name=N'xxwms_rct_lot'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发货量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_rct_det', @level2type=N'COLUMN',@level2name=N'xxwms_rct_qty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_rct_det', @level2type=N'COLUMN',@level2name=N'xxwms_rct_date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_rct_det', @level2type=N'COLUMN',@level2name=N'xxwms_rct_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'库位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_rct_det', @level2type=N'COLUMN',@level2name=N'xxwms_rct_loc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_rct_det', @level2type=N'COLUMN',@level2name=N'xxwms_rct_um'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'原因代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_rct_det', @level2type=N'COLUMN',@level2name=N'xxwms_rct_reason'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'qad读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_rct_det', @level2type=N'COLUMN',@level2name=N'xxscms_rct_qadread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'wms读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_rct_det', @level2type=N'COLUMN',@level2name=N'xxscms_rct_wmsread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'scm读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_rct_det', @level2type=N'COLUMN',@level2name=N'xxscms_rct_scmread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'edi读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_rct_det', @level2type=N'COLUMN',@level2name=N'xxscms_rct_ediread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_rct_det', @level2type=N'COLUMN',@level2name=N'xxscms_rct_rmkks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_rct_det', @level2type=N'COLUMN',@level2name=N'xxscms_rct_createdt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_rct_det', @level2type=N'COLUMN',@level2name=N'xxscms_rct_createur'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_rct_det', @level2type=N'COLUMN',@level2name=N'xxscms_rct_updatedt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_rct_det', @level2type=N'COLUMN',@level2name=N'xxscms_rct_updateur'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流水号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_rt_det', @level2type=N'COLUMN',@level2name=N'xxscm_rt_seq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'退货单号码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_rt_det', @level2type=N'COLUMN',@level2name=N'xxwms_rt_nbr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采购单' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_rt_det', @level2type=N'COLUMN',@level2name=N'xxwms_rt_po_nbr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'项次' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_rt_det', @level2type=N'COLUMN',@level2name=N'xxwms_rt_po_line'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物料号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_rt_det', @level2type=N'COLUMN',@level2name=N'xxwms_rt_part'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'退货总量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_rt_det', @level2type=N'COLUMN',@level2name=N'xxwms_rt_qty_total'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收货日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_rt_det', @level2type=N'COLUMN',@level2name=N'xxwms_rt_date_ship'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工厂' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_rt_det', @level2type=N'COLUMN',@level2name=N'xxwms_rt_site'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'供应商' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_rt_det', @level2type=N'COLUMN',@level2name=N'xxwms_rt_vend'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'器具型号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_rt_det', @level2type=N'COLUMN',@level2name=N'xxwms_rt_ware_class'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'器具号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_rt_det', @level2type=N'COLUMN',@level2name=N'xxwms_rt_ware'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'退货库位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_rt_det', @level2type=N'COLUMN',@level2name=N'xxwms_rt_loc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采购单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_rt_det', @level2type=N'COLUMN',@level2name=N'xxwms_rt_po_um'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'基本单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_rt_det', @level2type=N'COLUMN',@level2name=N'xxwms_rt_loc_um'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'转换比例' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_rt_det', @level2type=N'COLUMN',@level2name=N'xxwms_rt_conv'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'批次' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_rt_det', @level2type=N'COLUMN',@level2name=N'xxwms_rt_lot'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'供应商批号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_rt_det', @level2type=N'COLUMN',@level2name=N'xxwms_rt_vend_batch'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'qad读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_rt_det', @level2type=N'COLUMN',@level2name=N'xxscm_rt_qadread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'wms读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_rt_det', @level2type=N'COLUMN',@level2name=N'xxscm_rt_wmsread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'scm读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_rt_det', @level2type=N'COLUMN',@level2name=N'xxscm_rt_scmread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'edi读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_rt_det', @level2type=N'COLUMN',@level2name=N'xxscm_rt_ediread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_rt_det', @level2type=N'COLUMN',@level2name=N'xxscm_rt_rmkks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_rt_det', @level2type=N'COLUMN',@level2name=N'xxscm_rt_createdt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_rt_det', @level2type=N'COLUMN',@level2name=N'xxscm_rt_createur'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_rt_det', @level2type=N'COLUMN',@level2name=N'xxscm_rt_updatedt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_rt_det', @level2type=N'COLUMN',@level2name=N'xxscm_rt_updateur'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流水号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_soiss_det', @level2type=N'COLUMN',@level2name=N'xxscms_soiss_seq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结算单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_soiss_det', @level2type=N'COLUMN',@level2name=N'xxwms_soiss_nbr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'销售订单' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_soiss_det', @level2type=N'COLUMN',@level2name=N'xxwms_soiss_order'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'销售行号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_soiss_det', @level2type=N'COLUMN',@level2name=N'xxwms_soiss_line'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物料号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_soiss_det', @level2type=N'COLUMN',@level2name=N'xxwms_soiss_part'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'库位(结算)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_soiss_det', @level2type=N'COLUMN',@level2name=N'xxwms_soiss_loc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_soiss_det', @level2type=N'COLUMN',@level2name=N'xxwms_soiss_date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'批次' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_soiss_det', @level2type=N'COLUMN',@level2name=N'xxwms_soiss_qty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工厂' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_soiss_det', @level2type=N'COLUMN',@level2name=N'xxwms_soiss_lot'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'域' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_soiss_det', @level2type=N'COLUMN',@level2name=N'xxwms_soiss_site'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'qad读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_soiss_det', @level2type=N'COLUMN',@level2name=N'xxscms_soiss_qadread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'wms读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_soiss_det', @level2type=N'COLUMN',@level2name=N'xxscms_soiss_wmsread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'scm读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_soiss_det', @level2type=N'COLUMN',@level2name=N'xxscms_soiss_scmread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'edi读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_soiss_det', @level2type=N'COLUMN',@level2name=N'xxscms_soiss_ediread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_soiss_det', @level2type=N'COLUMN',@level2name=N'xxscms_soiss_rmkks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_soiss_det', @level2type=N'COLUMN',@level2name=N'xxscms_soiss_createdt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_soiss_det', @level2type=N'COLUMN',@level2name=N'xxscms_soiss_createur'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_soiss_det', @level2type=N'COLUMN',@level2name=N'xxscms_soiss_updatedt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_soiss_det', @level2type=N'COLUMN',@level2name=N'xxscms_soiss_updateur'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'流水号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_tr_det', @level2type=N'COLUMN',@level2name=N'xxwms_tr_seq'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'转移单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_tr_det', @level2type=N'COLUMN',@level2name=N'xxwms_tr_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'工厂' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_tr_det', @level2type=N'COLUMN',@level2name=N'xxwms_tr_site'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'物料号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_tr_det', @level2type=N'COLUMN',@level2name=N'xxwms_tr_part'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_tr_det', @level2type=N'COLUMN',@level2name=N'xxwms_tr_rmks'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'批次号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_tr_det', @level2type=N'COLUMN',@level2name=N'xxwms_tr_lot'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_tr_det', @level2type=N'COLUMN',@level2name=N'xxwms_tr_qty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_tr_det', @level2type=N'COLUMN',@level2name=N'xxwms_tr_date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_tr_det', @level2type=N'COLUMN',@level2name=N'xxwms_tr_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'从库位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_tr_det', @level2type=N'COLUMN',@level2name=N'xxwms_tr_loc1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'至库位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_tr_det', @level2type=N'COLUMN',@level2name=N'xxwms_tr_loc2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_tr_det', @level2type=N'COLUMN',@level2name=N'xxwms_tr_um'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'QAD读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_tr_det', @level2type=N'COLUMN',@level2name=N'xxwms_tr_qadread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'WMS读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_tr_det', @level2type=N'COLUMN',@level2name=N'xxwms_tr_WMSread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'SCM读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_tr_det', @level2type=N'COLUMN',@level2name=N'xxwms_tr_scmread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'EDI读取' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_tr_det', @level2type=N'COLUMN',@level2name=N'xxwms_tr_ediread'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_tr_det', @level2type=N'COLUMN',@level2name=N'xxwms_tr_rmks1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_tr_det', @level2type=N'COLUMN',@level2name=N'xxwms_tr_createdt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_tr_det', @level2type=N'COLUMN',@level2name=N'xxwms_tr_createtur'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_tr_det', @level2type=N'COLUMN',@level2name=N'xxwms_tr_updatedt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'xxwms_tr_det', @level2type=N'COLUMN',@level2name=N'xxwms_tr_updateur'
GO
USE [master]
GO
ALTER DATABASE [UniInterface] SET  READ_WRITE 
GO
