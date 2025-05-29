--1
-- bulk insert is a sql server command that is used to insert the huge amount of data to sql server from external sourses like text files or CSV. 
--2
--CSV (comma-separated values), TXT (plain text file), XML(extensible markub language), JSON (javascript object notation)
--3
create table Products (ProductID int primary key, ProductName varchar (50), Price decimal (10,2))
select * from products
--4
INSERT INTO Products (ProductID, ProductName, Price) VALUES
(1, 'Laptop', 1200)
,(2, 'Smartphone', 800)
,(3, 'Headphones', 150)
--5
--null represents unknown or missing value when not null is used to refer that a column cannot be empty. that means the column must always have a value
--6
alter table Products
add unique (Productname)
--7
--this query finds all products that cost more than 500
select * from products 
where price>500
--8
alter table products
add CategoryID int
--9
create table Categories (CategoryID int primary key, CategoryName varchar(50) unique)
--10
-- identity column automatically generates unique values for a column in a table. it is particularly useful for creating primary keys or unique identifiers for each row in a table

--11
 truncate table products 

 bulk insert products
from 'C:\Users\Hp\Documents\SQL Server Management Studio\productsss.txt'
with ( 
fieldterminator= ',',
rowterminator='\n',
firstrow=1 )
--12
select * from products as a
join categories as b
on b.CategoryID=a.categoryID

--13
--Primary keys cannot accept NULL values, while unique keys can accept one NULL value
--Only one primary key per table, but multiple unique keys are allowed
--Primary key values cannot be changed, but unique key values can be modified
--14
ALTER TABLE Products
ADD CONSTRAINT CHK_Products_Price
CHECK (Price > 0)
--15

--16
SELECT ProductName, ISNULL(Price, 0) AS Price
FROM Products

--17
--A FOREIGN KEY constraint is used to maintain referential integrity between two related tables. It ensures that the value in one table (the child table) must match a value in another table (the parent table).

--18
create table _customers_ (customerID int primary key, name varchar (30), age int check(age>18))
--19
create table customers__ (customerID int primary key identity(100,10), name varchar (30), age int)
--20
CREATE TABLE OrderDetails (
    OrderID INT NOT NULL,
    ProductID INT NOT NULL,
    Quantity INT,
    PRIMARY KEY (OrderID, ProductID)
)
--21
-- isnull function is used to replace null with something else, while coalesce is used to pick the first value that is not null from a list
--22
CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100) UNIQUE,
    HireDate DATE)
    
	--23
	CREATE TABLE DEPARTMENTS (DEPTID INT PRIMARY KEY, DEPTNAME VARCHAR (50) )
	CREATE TABLE Employees_ (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(100),
    DeptID INT,
    FOREIGN KEY (DeptID)
        REFERENCES Departments(DeptID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
)
lesso
