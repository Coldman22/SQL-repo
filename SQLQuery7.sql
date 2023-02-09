/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [EmployeeId]
      ,[FirstName]
      ,[LastName]
      ,[Age]
      ,[Gender]
  FROM [SQLTutorial].[dbo].[WareHouseEmployeeDemographics]