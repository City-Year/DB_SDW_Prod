USE [SDW_Prod]
GO
/****** Object:  Table [dbo].[DimFactType]    Script Date: 12/1/2016 8:51:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimFactType](
	[FactTypeID] [int] IDENTITY(1,1) NOT NULL,
	[FactType] [varchar](250) NULL
) ON [PRIMARY]

GO
