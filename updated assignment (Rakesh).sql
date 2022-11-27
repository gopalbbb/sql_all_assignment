-- Write an SQL query to print customerNumber, customerName, orderNumber, status from customers and orders table including all data of customers table. (Use Left or Right Join)
 SELECT customerNumber, customerName, orderNumber, status FROM classicmodels.customers INNER JOIN classicmodels.orders USING (customerNumber);

-- Write an SQL query to print customerNumber, customerName, orderNumber, status from customers and orders table who never ordered.
-- (Question is not structured correctly: if no orders made then no orderNumber and status to pull. Hence:)
SELECT customerNumber, customerName FROM classicmodels.customers WHERE customerNumber NOT IN (
SELECT customerNumber FROM classicmodels.orders);
   -- OR we can structure question to pull Details of Shipped and In Process orders.
SELECT customerNumber, customerName, orderNumber, status FROM classicmodels.customers left JOIN classicmodels.orders USING (customerNumber) WHERE orderNumber is null;

-- Write an SQL query to print lastName, firstName, customerName, checkNumber, amount from employees, customers and payments where amount id greater than 80,000.
--  (Since employee has no relation to customerNumber, safe to assume employee do not order. Hence:)
 SELECT contactLastName, contactFirstName, customerName, checkNumber, amount FROM classicmodels.customers 
 INNER JOIN classicmodels.orders USING (customerNumber) 
INNER JOIN classicmodels.payments USING (customerNumber) WHERE amount > 80000;
 
 -- OR as a ViewTable middlestep 
 CREATE VIEW customers_orderdetails AS 
SELECT customerNumber, contactLastName, contactFirstName, customerName FROM classicmodels.customers
INNER JOIN classicmodels.orders USING (customerNumber);
 SELECT contactLastName, contactFirstName, customerName, checkNumber, amount FROM classicmodels.customers_orderdetails
INNER JOIN classicmodels.payments USING (customerNumber) WHERE amount > 80000;

-- Create Tables Rental, Movie_Rental and Movie and insert data. print all rentalID, movie_name, Rental_cost from tables.
 CREATE TABLE classicmodels.rental (rentalID INT AUTO_INCREMENT PRIMARY KEY, memberID INT, rental_Date DATE, rental_Expiry DATE, total_Cost INT);
 INSERT INTO classicmodels.rental (rentalID, memberID, rental_Date, rental_Expiry, total_Cost) VALUES (1, 11, '2022-01-01', '2022-02-01', 10);
 CREATE TABLE classicmodels.movie_Rental (rentalID INT, movieID INT, foreign key fk_movie(movieID) references movie(movieID) on delete set null on update set null, foreign key fk_rental(rentalID) references rental(rentalID));
 
 INSERT INTO classicmodels.movie_Rental (rentalID, movieID) VALUES (1, 1);
 CREATE TABLE classicmodels.movie (movieID INT AUTO_INCREMENT PRIMARY KEY, movie_Name VARCHAR(40), distributor VARCHAR(40), director VARCHAR(40), genre VARCHAR(40), rating FLOAT, year_Of_Release DATE, rental_Cost INT, rental_Duration INT);
INSERT INTO classicmodels.movie (movieID, movie_Name, distributor, director, genre, rating, year_Of_Release, rental_Cost, rental_Duration) VALUES (1,'THANKSGIVING SQL', 'Apple_LTD', 'Mel Gibson', 'Comedy', 4.1, '2022-11-01', 14, 7); 
SELECT * FROM classicmodels.rental
INNER JOIN classicmodels.movie_Rental USING (rentalID) 
INNER JOIN classicmodels.movie USING (movieID);

drop table movie_rental;