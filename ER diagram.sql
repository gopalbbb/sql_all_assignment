DROP TABLE IF EXISTS `employeedb`.`customer`;
CREATE TABLE customer (  
      ID INT NOT NULL AUTO_INCREMENT,  
      Name varchar(50) NOT NULL,  
      City varchar(50) NOT NULL,  
      PRIMARY KEY (ID)  
    );  
DROP TABLE IF EXISTS `employeedb`.`contact`;
CREATE TABLE contact (  
  ID INT,  
  Customer_Id INT,  
  Customer_Info varchar(50) NOT NULL,  
  Type varchar(50) NOT NULL,  
  INDEX par_ind (Customer_Id),  
  CONSTRAINT fk_customer FOREIGN KEY (Customer_Id)  
  REFERENCES customer(ID)  
  ON DELETE CASCADE  
  ON UPDATE CASCADE  
);  
SHOW TABLES;  
DESCRIBE customer;  
DESCRIBE contact;  

INSERT INTO customer(Name, City) VALUES  
    ('Joseph', 'California'),  
    ('Mary', 'NewYork'),  
    ('John', 'Alaska');  
INSERT INTO contact (Customer_Id, Customer_Info, Type) VALUES  
    (1, 'Joseph@javatpoint.com', 'email'),  
    (1, '121-121-121', 'work' ),  
    (1, '123-123-123', 'home'),  
    (2, 'Mary@javatpoint.com', 'email'),  
    (2, 'Mary@javatpoint.com', 'email'),  
    (2, '212-212-212', 'work'),  
    (3, 'John@javatpoint.com', 'email'),  
    (3, '313-313-313', 'home');  

select * from customer;

select * from contact;

DELETE FROM customer WHERE Name='John';  

UPDATE customer SET id=3 WHERE Name='Mary';  

ALTER TABLE contact
ADD CONSTRAINT fk_customer FOREIGN KEY (Customer_Id)  
  REFERENCES customer(ID)  
  ON DELETE CASCADE  
  ON UPDATE CASCADE;
  
  
-- syntax: ALTER TABLE {childTable} 
--         DROP FOREIGN KEY {foreign key constraint name};

ALTER TABLE contact DROP FOREIGN KEY fk_customer;