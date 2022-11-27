-- Write an SQL query to fetch “firstName” from employees table using the alias name as <WORKER_NAME>.
select firstname AS worker_name from employees;
-- Find Total Number of Employees.
SELECT count(*) from classicmodels.employees where employeeNumber;
-- Write an SQL query to fetch “FIRST_NAME” from employees table in upper case. Use UPPER() function
SELECT UPPER(firstName)FROM employees ORDER BY UPPER(firstName);
select * from employees;
-- Write an SQL query to fetch the employeeNumber and FullName of all the employees working under the Manager with id – ‘1102’.
select employeeNumber,lastName,firstName,reportsTo from employees where reportsTo=1102;
-- 6 Write an SQL query to print all payments details from the payments table order by customerNumber Ascending and amount Descending.
select * from payments order by (customerNumber)desc, (amount)asc;
-- Write an SQL query to fetch unique values of productVendor from product table;
Select distinct productVendor from products;
-- Write an SQL query to print details for employees with the last name as “Hernandez” and “king” from employees table.
select* from employees where lastName = 'Hernandez' or lastName='King';
-- select*from employees where lastName in('Hernandez''king');
-- Write an SQL query to print details of the employees whose FIRST NAME ends with ‘e’.
select*from employees where lastname like '%e';
-- Write an SQL query to print details of the employees whose FIRST NAME ends with ‘h’ and contains five alphabets.
select* from customers where contactFirstName like '____h';
-- Write an SQL query to print details of the employees who doesn't report to anyone.
select * from employees where reportsTo is null;
-- Write an SQL query to add column dob to employees table where default date is '1900-01-01'.
ALTER TABLE employees
ADD COLUMN dob date DEFAULT '1991-01-01';
-- Write an SQL query to update dob of employee to 1990-01-13 whose id is 1056
UPDATE employees SET dob = '1991-01-13' WHERE employeeNumber = 1056;
-- Write an SQL query to calculate age of employee with id 1056. use current_date() and year() function
Select firstName, dob, getdate() as CurDate, year(getdate())-year(dob) as age from employees where employeeNumber=1056;
-- Write an SQL query to fetch all the Name of people which are present in either of the tables – ‘Employee’ and ‘customers’;
SELECT employees.firstName FROM employees
union select contactFirstName from customers;
select*from employees;
-- Write an SQL query to fetch all the cheque no with amount greater than 1000 and smaller than 2000.
select checkNumber from payments where amount ;
select checkNumber,amount from payments where amount between 1000 and 2000;
-- Write an SQL query to print productCode, productName, textDescription from productlines and products table.
SELECT DISTINCT productCode, productName, textDescription FROM classicmodels.productlines INNER JOIN classicmodels.products USING (productLine);

-- Write an SQL query to print customerNumber, customerName, orderNumber, status from customers and orders table including all data of customers table. (Use Left or Right Join)

SELECT customerNumber, customerName, orderNumber,status
FROM customers
LEFT JOIN orders;
-- an SQL query to print lastName, firstName, customerName, checkNumber, amount from employees, customers and payments where amount id greater than 80,000.
CREATE VIEW emplist AS
SELECT lastName,firstName,customerName,checkNumber,amount
FROM employee
WHERE Price > (SELECT AVG(Price) FROM Products);
 
-- Create Tables Rental, Movie_Rental and Movie and insert data. print all rentalID, movie_name, Rental_cost from tables.







