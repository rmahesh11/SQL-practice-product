create database shop;
use shop;
create table sales(
SaleID INT PRIMARY KEY,
Salesperson VARCHAR(50),
Region VARCHAR(50),
Product VARCHAR(50),
Quantity INT,
SaleAmount DECIMAL(10,2)
);
INSERT INTO Sales (SaleID, Salesperson, Region, Product, Quantity, SaleAmount) VALUES
(1,'Alice','North','Laptop', 1, 1000.00),
(2,'Bob','South','Mouse',3,75.00),
(3,'Alice','North','Monitor',2, 300.00),
(4,'Charlie','East','Keyboard',1, 50.00),
(5,'Bob','South','Monitor',1, 150.00),
(6,'Alice','North','Mouse',2, 50.00),
(7,'Charlie','East','Laptop',2, 2000.00),
(8,'David','West','Laptop',1, 1100.00),
(9,'David','West','Mouse&',4, 100.00),
(10,'Eve','South','Monitor',3, 450.00),
(11,'Eve','South','Keyboard', 2, 100.00),
(12,'Eve','South','Mouse', 1, 25.00),
(13,'Alice','North','Keyboard', 1, 60.00),
(14,'Bob','South','Laptop',1, 1200.00),
(15,'Charlie','East','Mouse',2, 50.00);
select Salesperson,sum(Quantity) from Sales group by Salesperson;
select Salesperson,sum(Quantity) from Sales group by Salesperson having sum(Quantity)>5;
select Salesperson,count(Product) from Sales group by Salesperson;
select Region,sum(SaleAmount) from Sales group by Region having sum(SaleAmount) > 1000;
select Salesperson,count(SaleID) from Sales group by Salesperson having count(SaleID)>2;
select Product,sum(SaleAmount) from Sales group by Product having sum(SaleAmount)>500;
select Region,Product,sum(Quantity) from Sales group by Region,Product;
select Salesperson,count(Product) from Sales group by Salesperson having count(Product)>1;
select Region,Product,avg(Quantity) from Sales group by Region,Product having avg(Quantity)>1;
select Salesperson,sum(SaleAmount) from Sales group by Salesperson having sum(SaleAmount) between 500 and 1500;
select Product,sum(Quantity) from Sales group by Product having sum(Quantity)>3;
select Salesperson from Sales where Product='Laptop';
select Region,Salesperson,sum(SaleAmount) from Sales group by Region,Salesperson having sum(SaleAmount)>500;
select Salesperson,count(Product) from Sales group by Salesperson having count(Product)>=2;
select Product,count(Region) from Sales group by Product having count(Region)>1;
select Product,count(SaleID) from Sales group by Product having count(SaleID) > 2;
select Region,Salesperson,sum(Quantity) from Sales group by Region,Salesperson;
select Salesperson,count(SaleID),sum(SaleAmount) from Sales group by Salesperson having count(SaleID)>3 and sum(SaleAmount) > 1000;
select Region,avg(SaleAmount) from Sales group by Region having avg(SaleAmount) > 200;
select Region,Product,count(SaleID) from Sales group by Region,Product having count(SaleID)> 3;