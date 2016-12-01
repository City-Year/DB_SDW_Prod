USE [SDW_Prod]
GO
/****** Object:  View [dbo].[vw_CMSCH_SPMBEH_Demographics]    Script Date: 12/1/2016 8:51:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vw_CMSCH_SPMBEH_Demographics]
AS
SELECT DISTINCT 
                      g.StudentName AS Student_Name, d.SchoolName AS Student_School_Name, d.CYSch_SF_ID AS cysch_Accnt_SF_ID, d.CYCh_SF_ID AS cych_Accnt_SF_ID, 
                      g.StudentSF_ID AS Student_SF_ID, g.Attendance_IA AS Student_IA_Att, g.Behavior_IA AS Student_IA_Beh, g.ELA_IA AS Student_IA_ELA, g.Math_IA AS Student_IA_Math, 
                      g.Gender AS Student_Gender, g.Ethnicity AS Student_Ethnicity, g.ELL AS Student_ELL, g.Grade AS Student_Grade, g.CY_StudentID AS CY_Student_ID, 
                      CASE WHEN program_description IN ('Enrichment', 'Homework Assistance', 'Starfish Corps', 'Afterschool Heroes') THEN 1 ELSE NULL END AS AfterSchoolPart, 
                      c.CorpsMember_Name AS Intervention_Corps_Member, c.CorpsMember_ID AS Intervention_Corps_Member_ID,g.StudentID
FROM         dbo.FactAll AS a WITH (nolock) INNER JOIN
                      dbo.DimFactType AS b WITH (nolock) ON a.FactTypeID = b.FactTypeID INNER JOIN
                      dbo.DimCorpsMember AS c WITH (nolock) ON a.CorpsMemberID = c.CorpsMemberID INNER JOIN
                      dbo.DimSchool AS d WITH (nolock) ON a.SchoolID = d.SchoolID INNER JOIN
                      dbo.DimIndicatorArea AS e WITH (nolock) ON a.IndicatorAreaID = e.IndicatorAreaID INNER JOIN
                      dbo.DimDate AS f WITH (nolock) ON a.DateID = f.DateID INNER JOIN
                      dbo.DimStudent AS g WITH (nolock) ON a.StudentID = g.StudentID INNER JOIN
                      dbo.DimAssignment AS h WITH (nolock) ON a.AssignmentID = h.AssignmentID INNER JOIN
                      dbo.DimGrade AS i WITH (nolock) ON a.GradeID = i.GradeID
WHERE     (e.IndicatorArea = 'Behavior') AND (g.Behavior_IA = 1)


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
         Begin Table = "a"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 292
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "b"
            Begin Extent = 
               Top = 6
               Left = 330
               Bottom = 84
               Right = 481
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "c"
            Begin Extent = 
               Top = 6
               Left = 519
               Bottom = 99
               Right = 698
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "d"
            Begin Extent = 
               Top = 84
               Left = 330
               Bottom = 192
               Right = 502
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "e"
            Begin Extent = 
               Top = 102
               Left = 540
               Bottom = 210
               Right = 719
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "f"
            Begin Extent = 
               Top = 114
               Left = 38
               Bottom = 222
               Right = 213
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "g"
            Begin Extent = 
               Top = 192
               Left = 251
               Bottom = 300
               Right = 436
            End
            DisplayFlags = 280
            TopColumn = 0
         End
    ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_CMSCH_SPMBEH_Demographics'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'     Begin Table = "h"
            Begin Extent = 
               Top = 210
               Left = 474
               Bottom = 318
               Right = 647
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "i"
            Begin Extent = 
               Top = 222
               Left = 38
               Bottom = 315
               Right = 189
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_CMSCH_SPMBEH_Demographics'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_CMSCH_SPMBEH_Demographics'
GO
