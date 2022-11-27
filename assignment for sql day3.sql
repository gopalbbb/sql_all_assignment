SELECT * FROM emp.product;

-- 2 List all product name that contains momo
SELECT *
FROM emp.product WHERE category='momo';

SELECT *
FROM emp.product WHERE Name like '%momo%';

-- 3 List all products whose category is international liquors or domestic liquors using in operator.
SELECT*
FROM emp.product WHERE category emp_tableIN ('International Liquors','Domestic Liquors');

-- 4 update all not defined category to null.
UPDATE 
emp.product SET category = null WHERE category='not defined';


-- 5 Delete all products whose price is less than 10

DELETE FROM 
emp.product WHERE list_price <10;

-- select * from emp.product;

-- 6. List all products whose price is greater than 500 and whose category is domestic 
SELECT*
FROM emp.product WHERE list_price >500 AND category ='Domestic Liquors';

-- 7 List ID, name and price of the product whose price is between 200 and 500 or whose category is wine

SELECT id,name,list_price,category FROM emp.product
WHERE list_price BETWEEN 200 and 500
or category ='Wine';
select* from product;