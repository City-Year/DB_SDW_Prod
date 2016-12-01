USE [SDW_Prod]
GO
/****** Object:  View [dbo].[vw_School_Setup]    Script Date: 12/1/2016 8:51:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE  VIEW [dbo].[vw_School_Setup]
AS
SELECT DISTINCT 
                      TOP (100) PERCENT 
					  a.CYSch_SF_ID,
					  a.team, 
					  i.Year_End__c AS Year_End_Date, 
					  i.Year_Start__c AS Year_Start_Date, 
                      j.Date_Start_Date__c AS Start_Date, 
					  j.End_Date__c AS End_Date, 
					  j.Name__c AS Quarter

FROM            dbo.DimSchool AS a WITH (nolock) INNER JOIN
 SDW_Stage_Prod.dbo.Setup__c AS i WITH (nolock) ON a.CYSch_SF_ID = i.School__c INNER JOIN
 SDW_Stage_Prod.dbo.Time_Element__c AS j WITH (nolock) ON i.Term__c = j.Parent_Time_Element__c
WHERE     (DATEPART(yyyy, i.Year_Start__c) = 2015) AND (DATEPART(yyyy, i.Year_End__c) = 2016)  
ORDER BY a.CYSch_SF_ID, Start_Date




GO
