-- Find the record of all customer whose order is cancelled.
SELECT * FROM classicmodels.customers WHERE customerNumber in(
SELECT customerNumber FROM classicmodels.orders WHERE status = 'Cancelled');


-- 2. Find the first customer details who paid for order.
SELECT* FROM classicmodels.customers WHERE customerNumber =
(SELECT customerNumber FROM classicmodels.payments ORDER BY paymentDate LIMIT 1);

-- 3. Find the last customer details who paid for order.
SELECT* FROM classicmodels.customers WHERE customerNumber =
(SELECT customerNumber FROM classicmodels.payments ORDER BY paymentDate DESC LIMIT 1);

-- 4. List all the product which  has been sold more than 1000 pieces.
select productName from classicmodels.products where productCode in
(select productCode from classicmodels.orderdetails group by productCode having sum(quantityOrdered)>1000);

-- 5. find all employees who woeks in UK.
SELECT* FROM classicmodels.employees WHERE officeCode =(
select officeCode from offices where country = 'UK');

-- 6 in which country does George Vanauf works in. 

select country  from classicmodels.offices Where George Vanauf in
(select officeCode from employees where officeCode=3);

-- 7.	Find Email address of all employee who works in USA.
select email from employees where officeCode in (select officeCode from offices where country = 'USA');

-- 8. Find customer name, phone and address of all the customer who never ordered .
select customerName,phone,addressLine1 from classicmodels.customers where customerNumber in  (
select customerNumber from orders where status='in process');
 
 -- 9. Find total No of orders which is product of Ducati.
SELECT count(*) from classicmodels.orderdetails where productCode in(
SELECT productCode FROM classicmodels.products where productname like '%Ducati%');

-- 10 list all order of ford parts.
SELECT* from classicmodels.orderdetails where productCode in(
SELECT productCode FROM classicmodels.products where productname like '%ford%');

-- 11.Find first customer who placed order.
select * from classicmodels.customers where customerNumber = (select customerNumber from orders order by orderDate limit 1);

-- 12.Find last customer who placed order.
select * from classicmodels.customers where customerNumber = (select customerNumber from orders order by orderDate  desc limit 1);
-- 13.	Find top three sold product.
#SELECT productName , sum() from classicmodels.products where productCode = (
#SELECT productCode from orderdetails order by priceEach desc limit 3);

-- 14.	Find top three customers who spend most.
SELECT * from classicmodels.customers  where customerNumber in (
SELECT customerNumber FROM classicmodels.payments order by amount desc )limit 3;

-- 15.	Find least sold Products.()
select productName from classicmodels.products where productCode in (
select productCode from classicmodels.orderdetails group by productCode order by sum(quantityOrdered)desc)limit 1;

-- 16.	Find least spending customers.
SELECT * from classicmodels.customers  where customerNumber = (
SELECT customerNumber FROM classicmodels.payments order by amount asc limit 1);


