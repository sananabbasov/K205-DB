Create table Categories(
	CategoryId int Identity(1,1) primary key,
	CategoryName nvarchar(200)
)


Create table Products (
	ProductId int Identity(1,1) primary key,
	ProductName nvarchar(200),
	Price decimal(2), -- 18.50
	IsStock bit,
	
)


insert into Categories (CategoryName)
values ('Notbook')


select * from Categories


alter table Products
add CategoryId int


insert into Products (ProductName, Price,IsStock,CategoryId)
values ('MacBook Pro', 2000.5 ,0, 5),
('Dell', 2000.5 ,0, 5)


select * from Products

-- Reference

alter table Products
drop column CategoryId



alter table Products
add CategoryId INT FOREIGN KEY REFERENCES Categories(CategoryId)


select * from Products

-- join


select Categories.CategoryName, Products.ProductName, Products.Price,Products.Price 
from Products
INNER JOIN Categories ON Products.CategoryId=Categories.CategoryId


select * from Products
where Products.Price < 500


select * from Products
where Products.Price >400 AND Products.Price<500


select Products.ProductName, Products.Price
From Products
where Products.Price BETWEEN 400 AND 500

UPDATE Products 
SET Products.Price = 1199
where ProductId = 7

select Products.ProductName,Products.Price,Products.IsStock,Categories.CategoryName
from Products
INNER JOIN Categories on Products.CategoryId = Categories.CategoryId
where Products.Price > 400 AND Products.Price <500

DELETE FROM Products WHERE ProductId=1

-- JOINS, VIEW, PROCEDURS




