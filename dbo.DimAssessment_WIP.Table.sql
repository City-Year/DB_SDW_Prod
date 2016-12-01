USE [SDW_Prod]
GO
/****** Object:  Table [dbo].[DimAssessment_WIP]    Script Date: 12/1/2016 8:51:13 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimAssessment_WIP](
	[AssessmentID] [int] IDENTITY(1,1) NOT NULL,
	[AssessmentName] [varchar](250) NULL,
	[AssessmentType] [varchar](250) NULL,
	[ADA] [varchar](250) NULL,
	[Create_Date] [date] NULL,
	[Created_By] [varchar](250) NULL,
	[Frequency] [varchar](250) NULL,
	[Time_Period] [varchar](250) NULL,
	[Data_Type_Display] [varchar](250) NULL,
	[Performance_Value_ID] [varchar](250) NULL,
	[Performance_Value_Name] [varchar](250) NULL,
	[A_to_Z_Alpha_Scale] [varchar](250) NULL,
	[A_to_Z_Alpha_Scale_for_Summative_Reports] [varchar](250) NULL,
	[AIMSweb_ELA_Scale_score] [varchar](250) NULL,
	[AIMSweb_ELA_Student_Target_Score] [varchar](250) NULL,
	[AIMSweb_Math_Scale_score] [varchar](250) NULL,
	[AIMSweb_Math_Student_Target_Score] [varchar](250) NULL,
	[AIMSweb_Scale_score_for_Sum_Reports] [varchar](250) NULL,
	[Average_Ability_Score] [varchar](250) NULL,
	[BPS_Predict_Scaled_Score_for_Sum_Reports] [varchar](250) NULL,
	[BPS_Predictive_Scaled_Score] [varchar](250) NULL,
	[Check_ins] [varchar](250) NULL,
	[DIBELS_GLE_Score_for_Summative_Reports] [varchar](250) NULL,
	[DIBELS_GLE_Student_Target_Score] [varchar](250) NULL,
	[DIBELS_Grade_Level_Equivalent_Score] [varchar](250) NULL,
	[District_Benchmark] [varchar](250) NULL,
	[District_Benchmark_for_Summative_Reports] [varchar](250) NULL,
	[DRA_GLE_Score_for_Summative_Reports] [varchar](250) NULL,
	[DRA_GLE_Student_Target_Score] [varchar](250) NULL,
	[DRA_Grade_Level_Equivalent_Score] [varchar](250) NULL,
	[DRA_Oral_Reading] [varchar](250) NULL,
	[DRP_Exam_Score] [varchar](250) NULL,
	[DRP_Proficiency_Level] [varchar](250) NULL,
	[Explore_Composite_Score] [varchar](250) NULL,
	[Explore_Composite_Score_for_Sum_Reports] [varchar](250) NULL,
	[FSA_Algebra_Score] [varchar](250) NULL,
	[FSA_Algebra_Score_for_Summative_Reports] [varchar](250) NULL,
	[FSA_ELA_Score] [varchar](250) NULL,
	[FSA_ELA_Score_for_Summative_Reports] [varchar](250) NULL,
	[FSA_Math_Score] [varchar](250) NULL,
	[FSA_Math_Score_for_Summative_Reports] [varchar](250) NULL,
	[Goals_set] [varchar](250) NULL,
	[Greatness_Lessons] [varchar](250) NULL,
	[IRLA_GLE_Score_for_Summative_Reports] [varchar](250) NULL,
	[IRLA_GLE_Student_Target_Score] [varchar](250) NULL,
	[IRLA_Grade_Level_Equivalent_Score] [varchar](250) NULL,
	[Jerry_Johns_BRI_GLE_Score] [varchar](250) NULL,
	[Jerry_Johns_BRI_GLE_Score_for_Sum_Report] [varchar](250) NULL,
	[Leadership_Lesson] [varchar](250) NULL,
	[Lexia_Step_Number] [varchar](250) NULL,
	[Lexia_Step_Number_for_Summative_Reports] [varchar](250) NULL,
	[Lexile_Score] [varchar](250) NULL,
	[Lexile_Score_for_Summative_Reports] [varchar](250) NULL,
	[Lexile_Student_Target_Score] [varchar](250) NULL,
	[Local_Benchmark] [varchar](250) NULL,
	[DAZE] [varchar](250) NULL,
	[MAZE] [varchar](250) NULL,
	[MSD_Computation_Score] [varchar](250) NULL,
	[Percent_Correct] [varchar](250) NULL,
	[Percentile_for_Summative_Reports] [varchar](250) NULL,
	[Percentile_PL] [varchar](250) NULL,
	[PreTest] [varchar](250) NULL,
	[PostTest] [varchar](250) NULL,
	[Quantile_Score] [varchar](250) NULL,
	[Quantile_Score_for_Summative_Reports] [varchar](250) NULL,
	[Quantile_Student_Target_Score] [varchar](250) NULL,
	[RCT_Ability_Score] [varchar](250) NULL,
	[VKT_Ability_Score] [varchar](250) NULL,
	[WRT_Ability_Score] [varchar](250) NULL,
	[RIT_Score] [varchar](250) NULL,
	[Scantron_Scaled_Score] [varchar](250) NULL,
	[Scantron_Scaled_Score_for_Sum_Reports] [varchar](250) NULL,
	[Scantron_Student_Target_Score] [varchar](250) NULL,
	[SBAC_ELA_Band] [varchar](250) NULL,
	[SBAC_ELA_Scale_Score] [varchar](250) NULL,
	[SBAC_Math_Band] [varchar](250) NULL,
	[SBAC_Math_Scale_Score] [varchar](250) NULL,
	[Student_Reading_Level] [varchar](250) NULL,
	[Testing_Grade_Level] [varchar](250) NULL,
	[TRC_Alpha_Scale_for_Summative_Reports] [varchar](250) NULL,
	[TRC_Alpha_Scale_Score] [varchar](250) NULL,
	[TRC_Alpha_Scale_Student_Target_Score] [varchar](250) NULL,
	[Weekly_goal_progress] [varchar](250) NULL,
	[Weekly_goals_set] [varchar](250) NULL,
	[X0_to_100_Scale_Score] [varchar](250) NULL,
	[X0_to_100_Scale_Score_for_Sum_Reports] [varchar](250) NULL,
	[X0_to_100_Scale_Student_Target_Score] [varchar](250) NULL,
	[X0_to_1000_Scaled_Score] [varchar](250) NULL,
	[X0_to_1000_Scaled_Score_for_Sum_Reports] [varchar](250) NULL,
	[X0_to_1000_Student_Target_Score] [varchar](250) NULL,
	[X0_to_300_Scaled_Score] [varchar](250) NULL,
	[X0_to_300_Scaled_Score_for_Sum_Reports] [varchar](250) NULL,
	[X0_to_300_Student_Target_Score] [varchar](250) NULL,
	[STAR_GLE_Score_for_Summative_Reports] [varchar](250) NULL,
	[STAR_GLE_Student_Target_Score] [varchar](250) NULL,
	[STAR_Grade_Level_Equivalent_Score] [varchar](250) NULL,
	[Number_of_Detentions] [varchar](250) NULL,
	[Number_of_In_School_Suspensions] [varchar](250) NULL,
	[Number_of_Office_Referrals] [varchar](250) NULL,
	[Number_of_Out_of_School_Suspensions] [varchar](250) NULL,
	[Number_of_Suspensions] [varchar](250) NULL,
	[Number_of_Absences] [varchar](250) NULL,
	[Number_of_Excused_Absences] [varchar](250) NULL,
	[Number_of_Tardies] [varchar](250) NULL,
	[Number_of_Unexcused_Absences] [varchar](250) NULL,
	[Days_Enrolled] [varchar](250) NULL,
	[Date_Administered] [varchar](250) NULL,
	[Goal_progress] [varchar](250) NULL,
	[Difficulty_of_Goal] [varchar](250) NULL,
	[Date_of_Goal_Completion] [varchar](250) NULL,
	[Number_of_Acts_of_Greatness_for_week] [varchar](250) NULL,
	[Number_of_Acts_of_Leadership_for_week] [varchar](250) NULL,
	[Goal_directed_Behavior_Description] [varchar](250) NULL,
	[Goal_directed_Behavior_Percentile] [varchar](250) NULL,
	[Goal_directed_Behavior_Raw_Score] [varchar](250) NULL,
	[Goal_directed_Behavior_T_Score] [varchar](250) NULL,
	[Optimistic_Thinking_Description] [varchar](250) NULL,
	[Optimistic_Thinking_Percentile] [varchar](250) NULL,
	[Optimistic_Thinking_Raw_Score] [varchar](250) NULL,
	[Optimistic_Thinking_T_Score] [varchar](250) NULL,
	[Personal_Responsibility_Description] [varchar](250) NULL,
	[Personal_Responsibility_Percentile] [varchar](250) NULL,
	[Personal_Responsibility_Raw_Score] [varchar](250) NULL,
	[Personal_Responsibility_T_Score] [varchar](250) NULL,
	[Relationship_Skills_Description] [varchar](250) NULL,
	[Relationship_Skills_Percentile] [varchar](250) NULL,
	[Relationship_Skills_Raw_Score] [varchar](250) NULL,
	[Relationship_Skills_T_Score] [varchar](250) NULL,
	[Self_Awareness_Description] [varchar](250) NULL,
	[Self_Awareness_Percentile] [varchar](250) NULL,
	[Self_Awareness_Raw_Score] [varchar](250) NULL,
	[Self_Awareness_T_Score] [varchar](250) NULL,
	[Self_Management_Description] [varchar](250) NULL,
	[Self_Management_Percentile] [varchar](250) NULL,
	[Self_Management_Raw_Score] [varchar](250) NULL,
	[Self_Management_T_Score] [varchar](250) NULL,
	[Social_Awareness_Description] [varchar](250) NULL,
	[Social_Awareness_Percentile] [varchar](250) NULL,
	[Social_Awareness_Raw_Score] [varchar](250) NULL,
	[Social_Awareness_T_Score] [varchar](250) NULL,
	[Score] [varchar](50) NULL,
	[Indicator_Area] [varchar](250) NULL,
	[Data_Type_Display_2] [varchar](250) NULL,
	[Score_2] [varchar](250) NULL,
	[Data_Type_Display_3] [varchar](250) NULL,
	[Score_3] [varchar](250) NULL,
	[Data_Type_Display_4] [varchar](250) NULL,
	[Score_4] [varchar](250) NULL,
	[Data_Type_Display_5] [varchar](250) NULL,
	[Score_5] [varchar](250) NULL,
	[Classification] [varchar](250) NULL,
	[SEL_Composite_Description] [varchar](250) NULL,
	[SEL_Composite_Percentile] [varchar](250) NULL,
	[SEL_Composite_T_Score] [varchar](250) NULL,
	[SEL_Composite_Raw_Score] [varchar](250) NULL,
	[Average_Daily_Attendance__c] [varchar](250) NULL,
	[Decision_Making_Description] [varchar](250) NULL,
	[Decision_Making_Percentile] [varchar](50) NULL,
	[Decision_Making_Raw_Score] [varchar](50) NULL,
	[Decision_Making_T_Score] [varchar](50) NULL
) ON [PRIMARY]

GO
