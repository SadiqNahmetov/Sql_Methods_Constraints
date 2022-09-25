create table Teachers(
	Id int primary key identity(1,1),
	[Name] nvarchar(50),
	[Surname] nvarchar(100) default 'XXXX',
	Email nvarchar(100) unique,
	Age int check (Age>17), 
	Salary decimal
)

select * from Teachers

insert into Teachers ([Name], [Surname],[Email],[Age],[Salary])
values ('Sadiq','Nahmetov','sadiq123@gmail.com','22',1000),
        ('Esqin','Ceferli','esqin123@mail.ru','21',1500),
		('Seid','Nuraliyev','seid123@mail.ru','33',3500),
		('Ramin','Binnetov','ramin123@gmail.com','20',2550),
		('Emil','Abdullayev','emil123@mail.ru','20',1850),
		('Cavid','Basirov','cavid123@gmail.com','28',5555)


		select AVG(Age) from Teachers

		 select * from  Teachers
		where Age >(select AVG(Age) from Teachers);

		select * from Teachers
		where Salary between 1000 and 3000;

		select Name, Surname from Teachers
		where Teachers.Email like '%mail.ru'

		select * from Teachers
		where Teachers.Name like 'C%'