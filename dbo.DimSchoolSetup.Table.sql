USE [SDW_Prod]
GO
/****** Object:  Table [dbo].[DimSchoolSetup]    Script Date: 12/1/2016 8:51:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimSchoolSetup](
	[CYSch_SF_ID] [varchar](250) NULL,
	[Year_Start_date] [datetime] NULL,
	[Year_End_Date] [datetime] NULL,
	[Start_Date] [datetime] NULL,
	[End_Date] [datetime] NULL,
	[Quarter] [varchar](250) NULL,
	[SchoolID] [varchar](250) NULL
) ON [PRIMARY]

GO
