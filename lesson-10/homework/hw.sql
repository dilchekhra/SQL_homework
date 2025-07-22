create database lesson10
use lesson10

--1.Using the Employees and Departments tables, write a query to return the names and salaries 
--of employees whose salary is greater than 50000, along with their department names.
select emp.Name, Emp.Salary, dep.DepartmentName
from employees as emp
inner join departments as dep on dep.DepartmentID=emp.DepartmentID
where Emp.Salary>50000

--2.Using the Customers and Orders tables, write a query to display customer names and order dates for orders placed in the year 2023
select cust.FirstName, cust.LastName, ord.OrderDate
from customers as cust
inner join orders as ord on ord.CustomerID=cust.CustomerID
where YEAR(ord.OrderDate)=2023

--3.Using the Employees and Departments tables, write a query to show all employees along with their department names. 
--Include employees who do not belong to any department.
select emp.Name, dep.DepartmentName
from employees as emp
left join departments as dep on dep.DepartmentID=emp.DepartmentID

--4.Using the Products and Suppliers tables, write a query to list all suppliers and the products they supply.
--Show suppliers even if they don’t supply any product.
select sp.SupplierName, pr.ProductName
from products as pr
right join suppliers as sp on sp.SupplierID=pr.SupplierID

--5.Using the Orders and Payments tables, write a query to return all orders and their corresponding payments. 
--Include orders without payments and payments not linked to any order.
select o.OrderID, o.OrderDate, pay.PaymentDate, pay.Amount
from orders as o 
left join Payments as pay on pay.OrderID=o.OrderID
--6.Using the Employees table, write a query to show each employee's name along with the name of their manager.
select emp.name as emp_name, m.name as m_name
from employees as emp
left join Employees as m on Emp.ManagerID=m.EmployeeID
--7.Using the Students, Courses, and Enrollments tables, write a query to list the names of students 
--who are enrolled in the course named 'Math 101'.
select st.Name, c.courseName
from students as st
inner join enrollments as en on en.StudentID=st.StudentID
inner join courses as c on en.CourseID=c.CourseID
where c.CourseName='Math 101'
--8.Using the Customers and Orders tables, write a query to find customers who have placed an order with more than 3 items. 
--Return their name and the quantity they ordered.
select c.FirstName, c.LastName, o.Quantity
from customers as c
inner join orders as o on o.CustomerID=c.CustomerID
where o.Quantity>3

--9Using the Employees and Departments tables, write a query to list employees working in the 'Human Resources' department.
select emp.Name, dep.DepartmentName
from Employees as emp
inner join Departments as dep on emp.DepartmentID=dep.DepartmentID
where dep.DepartmentName='Human Resources'

--10.Using the Employees and Departments tables, write a query to return department names that have more than 5 employees.
select dep.DepartmentName, COUNT(emp.Name) as EmployeeCount
from Departments as dep
inner join Employees as emp on dep.DepartmentID=emp.DepartmentID
group by dep.DepartmentID, dep.DepartmentName
having COUNT(emp.Name)>5
--11.Using the Products and Sales tables, write a query to find products that have never been sold.
select p.ProductID, p.ProductName
from products as p
left join sales as s on s.ProductID=p.ProductID
where p.ProductID<>s.ProductID

--12.Using the Customers and Orders tables, write a query to return customer names who have placed at least one order.
select cust.firstName, cust.LastName 
from customers as cust
inner join orders as o on cust.CustomerID=o.CustomerID

--13.Using the Employees and Departments tables, write a query to show only those records where both employee 
--and department exist (no NULLs).
select emp.Name, dep.departmentName
from employees as emp
inner join Departments as dep on emp.DepartmentID=dep.DepartmentID

--14.Using the Employees table, write a query to find pairs of employees who report to the same manager.
SELECT 
  e1.Name AS Employee1,
  e2.Name AS Employee2,
  e1.ManagerID
FROM Employees e1
JOIN Employees e2 
  ON e1.ManagerID = e2.ManagerID 
  AND e1.EmployeeID < e2.EmployeeID
WHERE e1.ManagerID IS NOT NULL;

--15.Using the Orders and Customers tables, write a query to list all orders placed in 2022 along with the customer name.
select o.orderID, o.OrderDate, cust.FirstName, cust.LastName
from customers as cust
inner join orders as o on o.CustomerID=cust.CustomerID
where YEAR(o.OrderDate)=2022
--16Using the Employees and Departments tables, write a query to return employees from the 'Sales' department whose salary is above 60000.
select emp.Name, emp.Salary, dep.DepartmentName
from employees as emp
inner join Departments as dep on dep.DepartmentID=emp.DepartmentID
where dep.DepartmentName='Sales' and emp.Salary>60000
--17.Using the Orders and Payments tables, write a query to return only those orders that have a corresponding payment.
select o.orderID, o.orderDate, p.paymentdate, p.amount
from orders as o
inner join payments as p on o.OrderID=p.OrderID

--18.Using the Products and Orders tables, write a query to find products that were never ordered.
select p.ProductID, p.ProductName
from products as p 
left join orders as o on o.productID=p.ProductID
where o.OrderDate is null

--19.Using the Employees table, write a query to find employees whose salary is greater than the average salary in their own departments.
SELECT DISTINCT e1.Name, e1.Salary
FROM Employees e1
JOIN Employees e2 
  ON e1.DepartmentID = e2.DepartmentID
GROUP BY e1.Name, e1.Salary
HAVING e1.Salary > AVG(e2.Salary);

--20.Using the Orders and Payments tables, write a query to list all orders placed before 2020 that have no corresponding payment.
select o.OrderID, o.OrderDate
from orders as o 
left join payments as p on o.OrderID=p.OrderID
where YEAR(o.OrderDate)<2020 and p.PaymentDate is null

--21.Using the Products and Categories tables, write a query to return products that do not have a matching category.
select p.ProductID, p.ProductName
from products as p 
left join categories as ctg on p.Category=ctg.CategoryName
where ctg.CategoryName is null
--22.Using the Employees table, write a query to find employees who report to the same manager and earn more than 60000.
SELECT 
  e1.Name AS Employee1,
  e2.Name AS Employee2,
  e1.ManagerID,
  e1.Salary
FROM Employees e1
JOIN Employees e2 
  ON e1.ManagerID = e2.ManagerID 
WHERE e1.Salary>60000

--23.Using the Employees and Departments tables, write a query to return employees who work in 
--departments which name starts with the letter 'M'.
select emp.Name, dep.DepartmentName
from employees as emp
inner join Departments as dep on emp.DepartmentID=dep.DepartmentID
where dep.DepartmentName like 'M%'
--24.Using the Products and Sales tables, write a query to list sales where the amount is greater than 500, including product names.
select s.SaleID, p.ProductName, s.SaleAmount
from Products as p 
inner join sales as s on s.ProductID=p.ProductID
where s.SaleAmount>500

--25.Using the Students, Courses, and Enrollments tables, write a query to find students who have not enrolled in the course 'Math 101'.
select s.StudentID, s.Name, c.CourseName
 from students as s 
 left join enrollments as en on en.StudentID=s.StudentID
 left join Courses as c on c.CourseID=en.CourseID and  c.CourseName = 'Math 101'
 where c.courseID is null

 --26.Using the Orders and Payments tables, write a query to return orders that are missing payment details.
 select o.OrderID, o.OrderDate, p.PaymentID 
from orders as o
left join payments as p on o.OrderID=p.OrderID
where p.PaymentID is null

--27.Using the Products and Categories tables, write a query to list products that belong to 
--either the 'Electronics' or 'Furniture' category.
select p.ProductID, p.ProductName, c.CategoryName
from products as p 
inner join categories as c on c.CategoryName=p.Category
where p.Category='Furniture' or p.Category='Electronics'
