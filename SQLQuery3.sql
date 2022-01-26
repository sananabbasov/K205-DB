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