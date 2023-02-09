/*
1: Create Table in SQL
2: Insert Table in SQL
3: Select Statement in SQL (*, Top, Distinct, Count, As, max,min,avg)
4: Group by, Order by
*/

--Create table EmployeeDemographics
--(
--EmployeeId int,
--FirstName varchar(50),
--LastName varchar(50),
--Age int,
--Gender varchar(50)
--)

--create table WareHouseEmployeeDemographics
--(
--EmployeeId int,
--FirstName varchar(50),
--LastName varchar(50),
--Age int,
--Gender varchar(50)
--)

--Create table EmployeePaygrade
--(
--EmployeeId int,
--JobTitle varchar(50),
--Salary int,
--)



--Insert into EmployeeDemographics values
--(1001,'Jim','Halpert',30,'Male'),
--(1002,'Pam','Beasley',30,'Female'),
--(1003,'Dwight','Shcrute',29,'Male'),
--(1004,'Angela','Martin',31,'Female'),
--(1005,'Toby','Flenderson',32,'Male'),
--(1006,'Micheal','Scott',35,'Male'),
--(1007,'Meredith','Palmer',32,'Female'),
--(1008,'Stanley','Hudson',38, 'Male'),
--(1009,'Kevin','Malone',31,'Male')

--Insert into EmployeeDemographics values
--(1011, 'Ryan', 'Howard', 26, 'Male'),
--(NULL,'Holly','Flax', NULL, NULL),
--(1013,'Darryl','Philbin', NULL, 'Male')

--Insert into EmployeePaygrade values
--(1001,'Salesman',45000),
--(1002,'Receptionist',36000),
--(1003,'Salesman',63000),
--(1004,'Accountant',47000),
--(1005,'HR',50000),
--(1006,'Regional Manager', 65000),
--(1007,'Supplier Relations', 41000),
--(1008,'Salesman',48000),
--(1009,'Accountant',42000)
--insert into EmployeePaygrade values
--(1010, NULL, 47000),
--(NULL,'Salesman', 43000)

--insert into WareHouseEmployeeDemographics values
--(1013,'Darryl','Philbin', NULL, 'Male'),
--(1050,'Roy','Anderson',31,'Male'),
--(1051,'Hidetoshi','Hasagawa', 40, 'Male'),
--(1052,'Val','Johnson', 31, 'Female')

--Select *
--From EmployeePaygrade

--select *
--from EmployeeDemographics

--Select top 5 *
--from EmployeeDemographics

--select top 5 *
--from EmployeePaygrade

--Select Distinct(EmployeeID)
--From EmployeeDemographics

--Select Distinct(EmployeeID)
--From EmployeePaygrade

--select distinct(Gender)
--from EmployeeDemographics

--select distinct(Salary)
--from EmployeePaygrade

--select count(FirstName) as FirstNameCount
--From EmployeeDemographics

--select count(Salary) as SalaryCount
--from EmployeePaygrade

--select max(Age) 
--from EmployeeDemographics

--select max(Salary)
--from EmployeePaygrade

--select min(Age)
--from EmployeeDemographic

--select min(Salary)
--from EmployeePaygrade

--select avg(Age)
--from EmployeeDemographics

--select avg(Salary)
--from EmployeePaygrade

--select *
--from EmployeeDemographics

--select Gender, Age, count(Gender)
--from EmployeeDemographics
--Group by Gender, Age

--select Gender, count(Gender)
--from EmployeeDemographics
--where age > 31
--group by Gender

--select Gender, count(Gender) as CountGender
--from EmployeeDemographics
--where Age > 31
--group by Gender
--order by CountGender desc

--select *
--from EmployeeDemographics
--order by Age 

--select *
--from EmployeeDemographics
--order by Age desc, Gender desc

/* same as above */

--select *
--from EmployeeDemographics
--order by 4 desc, 5 desc

