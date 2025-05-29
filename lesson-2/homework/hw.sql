drop database employees
--1
create database employees
go
use employees
go
create table employees (Emo_ID int, Name varchar (50),salary decimal (10,2))
--2
insert into employees (emo_id, name, salary) values
(1, 'sanjar', '1000')
,(2, 'Anvar', '1500')
insert into employees 
values (3, 'Shahlo', '2000')
 select * from employees
--3
update employees 
set salary=7000
where emo_id=1
--4
delete from employees
where emo_id=2
--5
/* delete command removes one or more records from the table
truncate command removes all the rows from the table
drop command removes the table itself*/
--6
alter table employees
alter column name varchar(100)
select * from employees
--7
alter table employees
add  Department varchar (50)
--8
alter table employees
alter column salary float

exec sp_rename 'employees.emo_id','emp_id', 'column'
--9
  


  create table departments (departmentID int, department_name varchar(50)) 

  select * from departments 
  --10
  truncate table employees
  --11
  insert into departments (departmentID, department_name) values
  (1, 'finance')
  ,(2, 'marketing')
  ,(3, 'management')
  ,(4, 'HR')
  ,(5, 'IT')

  insert into employees (department)
  select department_name 
  from Departments
  --12
select * from employees
insert into employees (emp_id, name, salary, department) values
(1, 'sanjar', '7000', 'finance')
,(2, 'Anvar', '3000', 'marketing')
,(3, 'Shahlo', '5000', 'management')
,(4, 'Malika', '6000', 'HR')
,(5, 'Jahongir', '5500', 'IT')
update employees
set department='management'
where salary>5000

--13
update employees
set name=null
--14
alter table employees
drop column department
--15
exec sp_rename 'employees', 'staffmembers'
--16
drop table departments
