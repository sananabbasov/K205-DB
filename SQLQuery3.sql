Create table Singers (
	ID int Identity(1,1) Primary KEy,
	SingerName nvarchar(100),
	SingerSurname nvarchar(100),
	Birthday DateTime,
	PhotoUrl nvarchar(500)
)

Create table Genres (
	ID int Identity(1,1) primary key,
	GenreName nvarchar(250)
)


Create table Songs (
	ID int identity(1,1) primary key,
	SongName nvarchar(100),
	LaunchDate datetime,
	Duration int
)


create table SingerToSong(
	 ID int identity(1,1) primary key,
	 SingerID int FOREIGN KEY REFERENCES Singers(ID),
	 SongID int FOREIGN KEY REFERENCES Songs(ID)
)


create table SongToGenre(
	ID int identity(1,1) primary key,
	GenreID int FOREIGN KEY REFERENCES Genres(ID),
	SongID int FOREIGN KEY REFERENCES Songs(ID)
)

create table Countries(
	ID int identity(1,1) primary key,
	CountryName nvarchar(200)
)

create table Users(
	ID int identity(1,1) primary key,
	UserName nvarchar(100),
	UserSurname nvarchar(100),
	Birthday DateTime,
	Email nvarchar(100),
	CountryID int FOREIGN KEY REFERENCES Countries(ID)
)


create table SongList(
	ID int identity(1,1) primary key,
	UserID int FOREIGN KEY REFERENCES Users(ID),
	SongID int FOREIGN KEY REFERENCES Songs(ID),
	SongDate DateTime
)

create table LikedList(
	ID int identity(1,1) primary key,
	UserID int FOREIGN KEY REFERENCES Users(ID),
	SongID int FOREIGN KEY REFERENCES Songs(ID),
)



insert into Singers (SingerName,SingerSurname,Birthday,PhotoUrl)
values 
('Röya', N'Ayxan','06.14.1982','sekil2.jpg'),
('Elza ', N'Seyidcahan','07.07.1968','sekil3.jpg')


insert into Genres(GenreName)
values
('Rap'),('Caz'),('Pop'),('Hip-hop')

insert into Songs (SongName,Duration,LaunchDate)
values 
(N'Zəng elə',120,'01.01.2021'),
(N'Karma ',180,'05.05.2021'),
(N'Kəpənəklər  ',180,'07.07.2021'),
(N'Bu Gecə',180,'07.07.2021'),
(N'Ulduz nağılı',180,'07.07.2021'),
(N'Dostumsan yoxsa sevgilim',180,'07.07.2021'),
(N'Gözəllik',180,'07.07.2021')


insert into SingerToSong (SingerID,SongID)
values (2,1),(2,2),(2,3),(6,4),(5,5),(5,6),(6,7)

insert into SongToGenre(SongID,GenreID)
values (1,1),(2,2),(3,3),(4,3),(5,3),(6,3),(7,3)



Select Singers.SingerName, Singers.SingerSurname
from Singers 
INNER JOIN SingerToSong on Singers.ID = SingerToSong.SingerID


select * from Songs


select Singers.SingerName, Singers.SingerSurname,
Songs.SongName, Songs.Duration, Songs.LaunchDate
from SingerToSong
inner join Singers on SingerID = Singers.ID
inner join Songs on SongID = Songs.ID



create view [MySongList] as
select Singers.SingerName, Singers.SingerSurname,
Songs.SongName, Songs.Duration, Songs.LaunchDate
from SingerToSong
inner join Singers on SingerID = Singers.ID
inner join Songs on SongID = Songs.ID





Select * from [MySongList]