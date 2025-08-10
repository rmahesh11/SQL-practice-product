create database pally;
use pally;

create table employees(
emp_id int primary key,
name varchar(20),
dept_id int);
insert into employees values(1,'ravi',101);
insert into employees values(2,'priya',102);
insert into employees values(3,'karan',101);
insert into employees values(4,'anjali',103);
insert into employees values(5,'manish',null);
select * from employees;
create table department(
dept_id int primary key,
dept_name varchar(50));
insert into department values(101,'IT');
insert into department values(102,'HR');
insert into department values(103,'finance');
insert into department values(104,'marketing');
select * from department;
SELECT emp_id, name, dept_name FROM Employees  INNER JOIN Department ON employees. dept_id = department.dept_id WHERE dept_name = 'IT';
SELECT d.dept_id,d.dept_name FROM Department d LEFT JOIN Employees  e ON d.dept_id = e.dept_id WHERE e.emp_id IS NULL;
SELECT e.name, d.dept_name FROM Employees e CROSS JOIN Department d;
SELECT e.name, d.dept_name FROM Employees e LEFT JOIN Department d ON e.dept_id = d.dept_id
UNION
SELECT e.name, d.dept_name FROM Employees e RIGHT JOIN Department d ON e.dept_id = d.dept_id;
SELECT e.emp_id, e.name FROM Employees e LEFT JOIN Department d ON e.dept_id = d.dept_id WHERE d.dept_id IS NULL;