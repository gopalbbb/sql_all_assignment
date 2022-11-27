 ALTER TABLE 
 emp_table
 DROP COLUMN address;
 
 -- 1 add column address with data type VARCHAR(20; 
 ALTER TABLE emp_table
 ADD address
 VARCHAR(20)
 AFTER emp_name;
 
 UPDATE emp_table 
 SET address = address VARCHAR(15)
 WHERE address;
 
 
   -- 6. All the record from emp_table.
   SELECT*
   FROM emp_table;
 
  -- 7. All the record from dept table.
 SELECT 
 deptno
 FROM emp_table;
 
 -- 8. The record of employee  they are working in dept 20.
 SELECT *
 FROM emp_table
 WHERE	deptno = 20;
 
  -- 9. The record of employee  they are  manager (job, salary ).
 SELECT *
 FROM emp_table
 WHERE	job = 'MANAGER';
   -- 10. The name of employee SALARY BETWEEN 1000 TO 2000.
 SELECT *
 FROM emp_table 
 WHERE sal BETWEEN 1000 AND 2000;
 
 -- 11. The record of employee details they are not manager (job, salary ).
 SELECT job,sal
 FROM emp_table
 WHERE	job <>'MANAGER';
 
 
  -- 12. The name of employee who are hired between 1 mar 1981 and 1 jun 1983.
 SELECT *
 FROM emp_table 
 WHERE hiredate BETWEEN '1981-03-01' AND '1983-06-01';
 
 -- 13. The name of employee who are hired in 1981.
 SELECT emp_name
 FROM emp_table 
 WHERE year (hiredate) = 1981; 
 
 -- 14. The name of employee who are working in dept 40.
 SELECT emp_name
 FROM emp_table 
 WHERE deptno = 40; 
 
 -- 15. The name and dept no who are  clerk.
 SELECT emp_name,deptno
 FROM emp_table
 WHERE	job ='CLERK';
 
  -- 16 The record of employee they are getting saraly more then 2000
  SELECT *
 FROM emp_table
 WHERE	sal > 2000;
 
 -- 17 The record of employee they are working dep no 30
  SELECT *
 FROM emp_table
 WHERE	deptno = 30;
 


-- 18. The record of employee they are not clerk.
 SELECT *
 FROM emp_table
 WHERE	job <>'CLERK';
 
   -- 19 The record of employee they are getting saraly greater then or equal 1300
  SELECT *
 FROM emp_table
 WHERE	sal >= 1300;
 
    -- 20 The record of employee they are getting saraly less then or equal to 1500
  SELECT *
 FROM emp_table
 WHERE	sal <= 1500;
 -- using like 
 SELECT*
 FROM emp_table WHERE hiredate LIKE '198%';
 
 -- using IN
 SELECT* 
 FROM emp_table 
 WHERE deptno in(20,30); 
-- using and or not select * from empdpt.emp where deptno = 20 and ename = 'smith';
SELECT*
 FROM emp_table WHERE
 deptno = 20 and job ='MANAGER';
 
 SELECT* FROM
 emp_table WHERE emp_name = 'SMITH' or emp_name='JOHN';
 select*from emp_table;
 
 UPDATE emp_table SET emp_name ='Deepak' where emp_id =7369;
 DELETE FROM emp_table where emp_id = 499;
