create schema sales;
use sales;
create table Products(
product_id int primary key,
product_name varchar(100),
category varchar(50),
unit_price decimal(10,2)
);
insert into Products values(101,'Laptop','Electronics',500.00);
insert into Products values(102,'Smartphone','Electronics',300.00);
insert into Products values(103,'Headphone','Electronics',30.00);
insert into Products values(104,'Keyboard','Electronics',20.00);
insert into Products values(105,'Mouse','Electronics',15.00);
select *from Products;
select product_name,unit_price from Products;
select product_name from Products where category='Electronics';
select product_id,product_name from Products where unit_price>100;
select avg(unit_price) as Average_price from Products;
select product_name,unit_price from Products order by unit_price desc;
select product_name,unit_price from Products where unit_price>20;
select product_name,category from Products order by category asc;