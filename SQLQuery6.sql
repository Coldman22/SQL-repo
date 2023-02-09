/*
1: Joins, Inner/Outer Joins, Left/Right Joins, FULL joins
2: Unions & Union Operators
3: Case Statement & Use Case
4: Having Clause
5: Updating/ Deleting Data
6: Aliasing
7: Partition By
*/

--select *
--from SQLTutorial.dbo.EmployeeDemographics

--select *
--from SQLTutorial.dbo.EmployeePaygrade

--Select *
--from SQLTutorial.dbo.EmployeeDemographics
--inner join SQLTutorial.dbo.EmployeePaygrade
--on EmployeeDemographics.EmployeeId = EmployeePaygrade.EmployeeId

--Select *
--from SQLTutorial.dbo.EmployeeDemographics
--full outer join SQLTutorial.dbo.EmployeePaygrade
--on EmployeeDemographics.EmployeeId = EmployeePaygrade.EmployeeId

--Select *
--from SQLTutorial.dbo.EmployeeDemographics
--Left outer join SQLTutorial.dbo.EmployeePaygrade
--on EmployeeDemographics.EmployeeId = EmployeePaygrade.EmployeeId

--Select *
--from SQLTutorial.dbo.EmployeeDemographics
--Right outer join SQLTutorial.dbo.EmployeePaygrade
--on EmployeeDemographics.EmployeeId = EmployeePaygrade.EmployeeId

--Select EmployeeDemographics.EmployeeId, FirstName, LastName, JobTitle, Salary
--from SQLTutorial.dbo.EmployeeDemographics
--inner join SQLTutorial.dbo.EmployeePaygrade
--on EmployeeDemographics.EmployeeId = EmployeePaygrade.EmployeeId

--Select EmployeePaygrade.EmployeeId, FirstName, LastName, JobTitle, Salary
--from SQLTutorial.dbo.EmployeeDemographics
--right outer join SQLTutorial.dbo.EmployeePaygrade
--on EmployeeDemographics.EmployeeId = EmployeePaygrade.EmployeeId

--Select EmployeeDemographics.EmployeeId, FirstName, LastName, JobTitle, Salary
--from SQLTutorial.dbo.EmployeeDemographics
--left outer join SQLTutorial.dbo.EmployeePaygrade
--on EmployeeDemographics.EmployeeId = EmployeePaygrade.EmployeeId

--Select EmployeePaygrade.EmployeeId, FirstName, LastName, JobTitle, Salary
--from SQLTutorial.dbo.EmployeeDemographics
--left outer join SQLTutorial.dbo.EmployeePaygrade
--on EmployeeDemographics.EmployeeId = EmployeePaygrade.EmployeeId

/* use case 1: where micheal has to complete the quota by 
removing 10000 to fill the quarter*/

--Select EmployeeDemographics.EmployeeId, FirstName, LastName, Salary
--from SQLTutorial.dbo.EmployeeDemographics
--inner join SQLTutorial.dbo.EmployeePaygrade
--on EmployeeDemographics.EmployeeId = EmployeePaygrade.EmployeeId
--where FirstName <> 'Micheal'
--order by Salary desc

/* use case 2: kevin malone did a mistake in accounting salary 
and now angela martin has to fix by finding the mistake*/

--Select JobTitle, avg(Salary)
--from SQLTutorial.dbo.EmployeeDemographics
--inner join SQLTutorial.dbo.EmployeePaygrade
--on EmployeeDemographics.EmployeeId = EmployeePaygrade.EmployeeId
--where JobTitle = 'Salesman'
--group by JobTitle

/*-------------------------------------------------------*/
--select *
--from SQLTutorial.dbo.EmployeeDemographics

--select *
--from SQLTutorial.dbo.WareHouseEmployeeDemographics

--select *
--from SQLTutorial.dbo.EmployeeDemographics
--union
--select *
--from SQLTutorial.dbo.WareHouseEmployeeDemographics

--select *
--from SQLTutorial.dbo.EmployeeDemographics
--union all
--select *
--from SQLTutorial.dbo.WareHouseEmployeeDemographics
--order by EmployeeId

--select *
--from SQLTutorial.dbo.EmployeeDemographics
--full outer join SQLTutorial.dbo.WareHouseEmployeeDemographics
--on EmployeeDemographics.EmployeeId = WareHouseEmployeeDemographics.EmployeeId

--select *
--from SQLTutorial.dbo.EmployeePaygrade
--order by EmployeeId

--select EmployeeId, FirstName, Age
--from SQLTutorial.dbo.EmployeeDemographics
--union
--select EmployeeId, Jobtitle, Salary
--from SQLTutorial.dbo.EmployeePaygrade

/*--------------Case Statement----------------------------*/
--SELECT FirstName, LastName, Age,
--CASE
--WHEN Age > 30 THEN 'Old'
--WHEN Age BETWEEN 27 AND 30 THEN 'Young'
--ELSE 'Baby'
--END
--FROM SQLTutorial.dbo.EmployeeDemographics
--WHERE AGE is NOT NULL
--ORDER BY Age

/* Create a case statement to calculate the salary after getting raises*/
--select FirstName, LastName, JobTitle, Salary,
--case
--when JobTitle = 'Salesman' then Salary + (Salary * .10)
--when JobTitle = 'Regional Manager' then Salary + (Salary * .09)
--when JobTitle = 'Supplier Relations' then Salary + (Salary * .08)
--when JobTitle = 'Accountant' then Salary + (Salary* .05)
--when JobTitle = 'HR' then Salary + (Salary* .000001)
--else Salary + (Salary* .03)
--end as SalaryAfterRaise
--from SQLTutorial.dbo.EmployeeDemographics
--join SQLTutorial.dbo.EmployeePaygrade
--on EmployeeDemographics.EmployeeId = EmployeePaygrade.EmployeeId

/*-------------------Having Clause---------------------------*/
--select JobTitle, COUNT(JobTitle)
--from SQLTutorial.dbo.EmployeeDemographics
--join SQLTutorial.dbo.EmployeePaygrade
--on EmployeeDemographics.EmployeeId = EmployeePaygrade.EmployeeId
--group by JobTitle
--having COUNT(JobTitle) > 1

--select JobTitle, AVG(Salary)
--from SQLTutorial.dbo.EmployeeDemographics
--join SQLTutorial.dbo.EmployeePaygrade
--on EmployeeDemographics.EmployeeId = EmployeePaygrade.EmployeeId
--group by JobTitle
--having AVG(Salary) > 45000
--order by AVG(Salary)

/*----------------Updating/Deleting Data ----------------------*/
--select *
--from SQLTutorial.dbo.EmployeeDemographics

--update SQLTutorial.dbo.EmployeeDemographics
--set EmployeeId = 1012
--where FirstName = 'Holly' and LastName = 'Flax'

--update SQLTutorial.dbo.EmployeeDemographics
--set Age = 31, Gender = 'Female'
--where FirstName = 'Holly' and LastName = 'Flax'

--delete from SQLTutorial.dbo.EmployeeDemographics
--where EmployeeId = 1005

/*--------------------- Aliasing ----------------------*/
--select * 
--from SQLTutorial.dbo.EmployeeDemographics

--select FirstName  Fname
--from SQLTutorial.dbo.EmployeeDemographics

--select FirstName+ ' ' + LastName as FullName
--from SQLTutorial.dbo.EmployeeDemographics

--select AVG(Age) AvgAge
--from SQLTutorial.dbo.EmployeeDemographics

--select Demo.EmployeeId , Sal.Salary
--from SQLTutorial.dbo.EmployeeDemographics as Demo
--join SQLTutorial.dbo.EmployeePaygrade as Sal
--on Demo.EmployeeId = Sal.EmployeeId

--select Demo.EmployeeId, Demo.FirstName, Sal.JobTitle, Ware.Age
--from SQLTutorial.dbo.EmployeeDemographics Demo
--left join SQLTutorial.dbo.EmployeePaygrade Sal
--on Demo.EmployeeId = Sal.EmployeeId
--left join SQLTutorial.dbo.WareHouseEmployeeDemographics Ware
--on Demo.EmployeeId = Ware.EmployeeId

/*-------------- Partition By ---------------------*/
--select *
--from SQLTutorial.dbo.EmployeeDemographics

--select *
--from SQLTutorial.dbo.EmployeePaygrade

--select FirstName, LastName, Gender, Salary
--, COUNT(Gender) over (Partition by Gender) as TotalGender
--from SQLTutorial.dbo.EmployeeDemographics dem
--join SQLTutorial.dbo.EmployeePaygrade sal
--on dem.EmployeeId = sal.EmployeeId