
--DDL and DML Statement.

---------------------------------DDL Statements (Create, Alter, Drop, Truncate, Comment) -----------------------------------------------

-- 1- Create			2- Alter			3- Drop		
	
-- 4- Truncate			5- Comment	

-------------- Create ----------------------

-------How to create Database in SQL?

create database SQL_Project

------ How to create table in SQL?
-- First of all use the database that you created. (use database_Name)

use SQL_Project

create table Stu_Info
(
S_Id int primary key not null identity(901,1),
S_Name char (44),
S_Email varchar(44),
S_Course varchar(45),
S_Fee money,
S_Address varchar(45)
)

select * from Stu_Info

---------------- Alter -------------------------
-----How to add a column in a table?

alter table Stu_Info
add S_Age int

alter table Stu_Info
add S_Contact_Number int

select * from Stu_Info

---------------- Drop --------------------------

-----How to drop the column from table?

alter table Stu_Info
drop column S_Age

alter table Stu_Info
drop column S_Contact_Number

select * from Stu_Info

------------------------------- DML Statements (Insert, Update, Delete) -----------------------------------------------

-- 1- Insert			2- Update				3- Delete

---------------- Insert ------------------------

------How to insert data in a table?
-- There are three types of inserting data in a table.

--Type 1st--

insert into Stu_Info values('Rajesh Sharma', 'rajesh@example.com', 'Cloud Computing', 29000, 'Lucknow')
insert into Stu_Info values('Kiran Patel', 'kiran@example.com', 'Computer Science', 25000, 'Mumbai')
insert into Stu_Info values ('Aarti Sharma', 'aarti@example.com', 'Information Technology', 30000, 'Delhi')

select * from Stu_Info
-- Type 2nd--

insert into Stu_Info values ('Amit Patel', 'amit@example.com', 'Computer Science', 25000, 'Mumbai'),
('Priya Sharma', 'priya@example.com', 'Information Technology', 30000, 'Delhi'),
('Rahul Singh', 'rahul@example.com', 'Software Engineering', 35000, 'Bangalore'),
('Neha Gupta', 'neha@example.com', 'Computer Engineering', 28000, 'Hyderabad'),
('Anjali Mishra', 'anjali@example.com', 'Cyber Security', 32000, 'Chennai'),
('Ravi Kumar', 'ravi@example.com', 'Data Science', 37000, 'Kolkata'),
('Sneha Reddy', 'sneha@example.com', 'Network Administration', 33000, 'Pune'),
('Vivek Verma', 'vivek@example.com', 'Web Development', 26000, 'Ahmedabad'),
('Pooja Singh', 'pooja@example.com', 'Information Systems', 38000, 'Jaipur')

select * from Stu_Info
-- 3rd Type--

insert into Stu_Info(S_Name, S_Email, S_Course, S_Fee, S_Address) 
values ('Rahul Kumar', 'rahulk@example.com', 'Software Engineering', 35000, 'Bangalore'),
('Neha Reddy', 'nehar@example.com', 'Computer Engineering', 28000, 'Hyderabad'),
('Anjali Verma', 'anjaliv@example.com', 'Cyber Security', 32000, 'Chennai')

select * from Stu_Info

-- Create second table --
create table Stu_Info_1
(
S_Id int primary key not null identity(901,1),
S_Fathers_Name char (44),
S_Contact_Number varchar(44),
)
----- How to On / Off Indentity keyword?

set identity_insert Stu_Info_1 off
-------------------------------------------------------------
insert into Stu_Info_1 values  ('Rahul Yadav', '1234567890'),
    ('Sumit Sharma', '2345678901'),
    ('Surendra Singh', '3456789012'),
    ('Raj Gupta', '4567890123'),
    ('Rinku Mishra', '5678901234'),
    ('Shiva Kumar', '6789012345'),
    ('Rishi Reddy', '7890123456'),
    ('Vipin Verma', '8901234567'),
    ('Manish Singh', '9012345678');

select * from Stu_Info_1


---------------- Update ------------------------

----- How to Update data in a table?

update Stu_Info 
set S_Name='Mann', S_Email='manthan@example.com',S_Course='Data Analytics', S_Address='Uttarakhand'
where S_Id=915

select * from Stu_Info
---------------- Delete ------------------------

--How to delete values from the table?

delete from Stu_Info

--How to delete single data values from the table?

delete from Stu_Info
where S_Id=915

-----How to use Order by Clause?

---------------- Ascending Order ----------------

select * from Stu_Info
order by S_Name asc

select * from Stu_Info
order by S_Fee asc

---------------- Descending Order -----------------

select * from Stu_Info
order by S_Id desc

select * from Stu_Info
order by S_Course desc

-----How to use UPPER and LOWER function()?
-- If you want to give your own cloumn name so that you have to use 'AS' Keyword.

---------------- UPPER FUNCTION()----------------

Select UPPER('hello sir') as 'Student'
Select UPPER('manthan saini') as 'Name'

---------------- LOWER FUNCTION()----------------

Select LOWER('HELLO SIR') as 'Student'
Select LOWER ('MANTHAN SAINI') as 'Name'

-----How to Add two string?

Select  'Hello' + ' ' + 'DK'  + ' ' + 'Sir' as 'Student'

select 'Advanced Excel' + ', ' + 'Python'+ ', ' + 'SQL' as 'Data Analytics'

----- How to use Range Operator?

-- 1- Between				2- Not Between

------------------ Between ------------------

select * from Stu_Info
where S_Fee between 30000 and 35000

select * from Stu_Info
where S_Fee between 25000 and 30000

---------------- Not Between ----------------

select * from Stu_Info
where S_Fee Not between 25000 and 30000


select * from Stu_Info
where S_Fee Not between 30000 and 34000

-- How to use 'In' and 'Not in' keyword?

---------- In ------------

select * from Stu_Info
where S_Address in ('Mumbai','Delhi','Lucknow','Chennai')

----------Not in ----------

select * from Stu_Info
where S_Course not in ('Mumbai','Delhi','Lucknow','Chennai')

-- How to use Relational Operator?

Select * from Stu_Info
where S_Fee>=30000

select * from Stu_Info
where S_Fee<=29000

--How to use Like Keyword(Name Pattern)?

select * from Stu_Info
where S_Name like 'A%'

select * from Stu_Info
where S_Name like '_a%'

select * from Stu_Info
where S_Name like '__j%'

select * from Stu_Info
where S_Name like '%a'

select * from Stu_Info
where S_Name like '[A-Z]%'

--------------- Aggregate Function()---------------

--	1- MAX				2- MIN				3- SUM		

--  4- AVG			    5- COUNT

--------------- Max Function() ----------------

select MAX(S_Fee) as 'Max Fee'
from Stu_Info

--------------- Min Function() ----------------

select MIN(S_Fee) as 'Min Fee'
from Stu_Info

--------------- Sum Function() ----------------

select SUM(S_Fee) as 'Grand_Total_Fee'
from Stu_Info

--------------- Avg Function() ----------------

select AVG(S_Fee) as 'Avg_of_Fee'
from Stu_Info

--------------- Count Function() ----------------

select COUNT(*) as 'Number_of_Students'
from Stu_Info

select COUNT(S_Fee) as 'Number_of _Students'
from Stu_Info

--------------- Date Functions()----------------

-----How to get current Date and Time?

select GETDATE() 
as 'Date'

-----How to get UTC date and time?

select GETUTCDATE()
as 'UTC_Date'

-----How to use Isdate function()?

select ISDATE('2024-03-19')
as 'IS it Date'

select ISDATE('3-Feb-2024')

select ISDATE('2024')
as 'Part of Date'

select ISDATE('Hello_Sir')

-----How to use Month function()?

select MONTH('2023/05/23')
AS 'Month Name'

select MONTH('2024-Jan-23')
as 'January Month'

------SP--------

declare @dt date= '2024-03-18'
select YEAR(@dt) AS 'Year Number', MONTH(@dt) as 'Month Number', DAY(@dt) as 'Day Number'

-----How to get System date and time [SYSDATETIME function()]?
select SYSDATETIME()
as 'System Data & Time'

----How to use year function()
select YEAR('2000/01/20')
AS 'YEAR ONLY'

-----How to use Cast function()
select CAST(120.21 as int)

-----How to convert float value to varchar data type
select CAST(12.11 as varchar)

-----How to convert value to a datetime data type
select CAST('2020-02-12' as date)

select CAST('2020-02-12' as datetime)

-----How to use coalesce() function

-----Return the first non-null value in a list
select Coalesce(null, null, 'DK.Com', null, 'www.google.com')
select Coalesce(null, 3, 4, 'DK.Com')

-----How to use convert function()
select convert(int,12.11)
select convert(varchar, 12.10)
select convert(datetime, '2020-02-12')

-----Return the Name of current user
select CURRENT_USER

----IIF() Function
select IIF(500<1000, 'YES','NO')
select IIF(500>1000, 'YES','NO')

select IIF(500<1000, 5, 20)
select IIF('Hello'='bye','YES','NO' )

-----How to use isnull function()
select ISNULL(null, 'DK')
select ISNULL('Hello', 'DK')

----- How to use isnumeric function()
select ISNUMERIC(300)
select ISNUMERIC('500')
select ISNUMERIC(10*2)
select ISNUMERIC('2020-01-12')
select ISNUMERIC('Hello')

-----How to use nullif() function
select nullif(25,2)

---------------- Joins ----------------
----- There are 5 types of Joins:

-- 1- Inner join			2- Outer join			3- Cross join

-- 5- Equi join				3- Self join

--------------- Inner Join ----------------

select Stu_Info.S_Name,Stu_Info_1.S_Fathers_Name,Stu_Info_1.S_Contact_Number
from Stu_Info inner join Stu_Info_1
on Stu_Info.S_Id=Stu_Info_1.S_Id

--------------- Outer Join ----------------
-- There are three types of Outer Join.

-- 1- Left Outer Join		2- Right Outer Join		3- Full Outer Join

--------------- Left Outer Join ---------------

select Stu_Info_1.S_Contact_Number, Stu_Info.S_Name
from Stu_Info left outer join Stu_Info_1
on Stu_Info.S_Id=Stu_Info_1.S_Id

--------------- Right Outer Join ---------------

select Stu_Info.S_Name,Stu_Info_1.S_Fathers_Name
from Stu_Info right outer join Stu_Info_1
on Stu_Info.S_Id=Stu_Info_1.S_Id

--------------- Full Outer Join ---------------

select Stu_Info_1.S_Fathers_Name,Stu_Info_1.S_Contact_Number,Stu_Info.S_Name
from Stu_Info full outer join Stu_Info_1
on Stu_Info.S_Id=Stu_Info_1.S_Id

--------------- Schema ----------------

-- Schema is a one kind of container, which stores the database objects.
--Exmaple-: (dbo.Emp) here dbo is a object and Emp is table name.

----- How to create a Schema?

create schema Project

create table Project.Stu_Info_3
(
id int primary key not null,
Name char (33),
City varchar(44)
)

select * from Project.Stu_Info_3

---------------- Indexes ----------------

-- There are tow types of Indexes.

--1 - Clustered Index		2- No Clustered Index

---- How to create clustered index?

Create clustered index Mann
on	
	
	select * from Stu_Info

--------------- Noncluered Index ----------------

Create nonclustered index Mann_1
on
	Stu_Info(S_Name)

	select * from Stu_Info

--------------- Filter Index ----------------

-- How to use Filter (Where Clause) with index?

create nonclustered index Mann_2
on	
	Stu_info(S_id,S_Name)
where S_Id=904

----- How to drop the Indexs?

drop index Mann
on Stu_Info

--------------- View ---------------

----- How to create View in SQL?

create view Stu_View
as
select * from Stu_Info

select * from Stu_View

----- How to create view for individual column?
 
create view Stu_View_2
as	
	select S_Name, S_Address, S_Course
	from Stu_Info

select * from Stu_View_2

----- How to alter the view?

alter view Stu_View_2
as
select S_Name, S_Address, S_Course, S_Email
from Stu_Info

select * from Stu_View_2

----- How to drop the view?

drop view Stu_View_2
-----------------------------
sp_helptext Stu_view
-----------------------------

----- How to do Encryption using view?

alter view Stu_View
with encryption
as
select * from Stu_Info

sp_helptext Stu_View
------------------------------------------------
-----How to insert data from another table?

select S_Id, S_Name, S_Fee
into S_Info_Data
from Stu_Info

select * from S_Info_Data

--------------- Schema and Schemabinding --------------

----- How to create Schema and Schemabinding?

create schema AI

create table AI.ML
(
C_Id int primary key,
C_Name char(33),
C_Address varchar(44)
)

select * from AI.ML

--------------- Schemabinding ---------------
create view Student
with schemabinding
as
select S_Name, S_Fee
from dbo.S_Info_Data

select * from Student
----- How to drop?
alter table Student
drop column S_Fee
-----------------------------------------------
--------------- View Catalog & Meta Data file ----------------

----- How to create view catalog and meta data fiel?
select * from
sys.objects

select * from
sys.views

select * from
sys.tables

select * from
sys.tables
where schema_id=5
------------------------------------------------
--------------- Batch and Script ---------------

-----How to create Batch and Script?
create database Demo_Batch1
Go
use Demo_Batch1

create table Test_Batch1
(
ID int primary key,
Name char(44)
)

----- There are two types of batches.
/*
1- Anonymous Batch:-
					Anonymous Batch is a collection of SQL statements 
					without any name called Anonymous Batch.

2- Name of Batches:-
	a) SP (Stored Procedures)
	b) UDF (User-Define-Function)
	c) Tirgger
*/
----- How to create Anonymous batch example:-

declare @id int, @name char (44)
set @id=34
set @name='Mannn'
print @id
print @name
------------------------------------------------
declare @id int, @name char(44)
select @id=45, @name='Manthan'
print @id
print @name
------------------------------------------------
----- How to use declare function()?

select * from Stu_Info

declare @C_Id int
set @C_Id=907
if @C_Id is null
begin
select * from Stu_Info
end

else
begin
select * from Stu_Info
where S_Id=@C_Id
end

--------------- Stored Procedure ---------------

----- How to create Stored Procedure?

create procedure SPget_1 (@Id int)
as
select * from Stu_Info
where S_Id=@ID

declare @ID int
set @ID=905
exec SPget_1 @ID
------------------------------------------------
sp_helptext SPget_1
--------------------------------------------
create procedure Stu_sp1(@E_ID int)
as
begin
	if @E_Id is null
	select * from Stu_Info

	else
		select * from Stu_Info
		where S_Id=@E_ID
end

exec Stu_sp1 @E_ID=906
-----------------------------------------------------
----------------- Trigger -------------------

----- How to create Trigger?

create trigger Tri_Stu_Info_Insert
on Stu_Info
for insert
as
begin
	print('Insert the value in Stu_info')
end
insert into Stu_Info values ('Parth','parth@gmail.com','Data Science',38000,'Delhi')

----- How to update values in Trigger?
create trigger Tri_Stu_Info_Update
on Stu_Info
for update
as
begin
	print('Update the value in the table')
end
update Stu_Info set S_Name='Gautam'
where S_Id=914

select * from Stu_Info

--------------- Transaction ---------------
--: Transaction is sequence of operation performed together as a single unit of work.
-- There are two types of Transaction.

/*

1- Explicit Transaction
2- Implicit Transaction

*/

select S_Id, S_Name, S_Course, S_Fee
into Demo_Stu
from Stu_Info

select * from Demo_Stu

--------------- Conditional Construct ---------------
if
{
-- True
Black of code
}

else
{
-- False
Block of code
}

/*
1- Errors
2- Compile Time Error
3- Run Time Error
4- Syntax Error
*/
----------------------------------------------------
--------------- Excepations Handling ---------------
try
{
-- SQL Statements
}]

Catch
{

}

Finally
{

}
--------------------------------------------------
-------------- Currency Format -------------------
----- How to create currency format?

-- If you want to see with decimal value.

select Format(3423, 'C') Result

-- If you want to see without decimal value.

select Format (3423, 'C0') Result

-- If you want to put number of decimal value.

select Format (3423, 'C5') Result

----- For Indian Currency -----

select Format (3423, 'C', 'INR-in') Result

----- For France Currency -----

select Format (3423, 'C', 'FR-fr') Result

----- For China Currency -----

select Format (3423, 'C', 'ZH-cn') Result

----- For Thailand Currency -----

select Format (3423, 'C', 'TH-th') Result

----- For Germany Currency -----

select Format (3423, 'C', 'DE-de') Result



