
--Database Yarat.
	CREATE DATABASE SmartWatchDB

--Database istifade et
	USE SmartWatchDB

--Isci cedveli yarat.
	CREATE table Employees
	(
	FirstName nvarchar(25),
	LastName nvarchar(25),
	Position nvarchar(25),
	Slary float ( 25 ) 
	 )
--Cedveldeki column olcusunu deyis.
 
	ALTER TABLE Employees 
	ALTER COLUMN Position nvarchar(25)

--Cedveldeki column adini duzelt.
	EXEC sp_rename 'Employees.Slary', 'Salary'

--Cedvele datalari elave et
Insert Into Employees(FirstName,LastName,Position,Salary)
	values ('David','Namaz','Direktor',8000),
		('Sadixhan','Gayxanov','Developer',2500),
		('Metin','Allahverdiyev','Komekci',2600),
		('Vüsal','Isgenderli','Reklemci',1900),
		('Mesud','Eliyev','Biznesmen',1499),
		('Altan','Isbrahimli','Bas meslehetci',250)
	

--0.Cedveldeki butun iscileri gostermek
	Select * from Employees

--1.Ortalama maaşı çıxarmalısınız
	Select AVG(Salary) 'Salary Avarage' from Employees

--2.Ortalama maaşdan yuxarı maaş alan işçilərin ad soyadını və maaşını cixartmaq
	
	Select (FirstName+' '+LastName),Salary from Employees
	where Salary>(Select AVG(Salary)from Employees)

--3.Max, Min maaşları çıxarmaq
	
	Select Max(Salary)'Maximum Salary',Min(Salary) 'Minimum Salary' from Employees