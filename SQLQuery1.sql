Create table Students(
	Id int Identity(1,1) Primary key, -- 1 
	FirstName nvarchar(255),
	LastName nvarchar(255),
	Address nvarchar(500)
)


Insert into Students
(FirstName,LastName,Address )
values ('Ibrahim','Feteliyev','New York')


--Drop table Students


--select * from Students


--SELECT FirstName, LastName
--FROM Students
--Where StudentId = 2



select * from Students
where FirstName = 'Ibrahim' and Address = 'New York'



--public int Id {get; set;}
--public string Name {get; set;}