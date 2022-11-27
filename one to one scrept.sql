create database oneTOone;

create table capital(id int auto_increment not null,name varchar(50), PRIMARY KEY(id));

create table country(id int primary key auto_increment not null,name varchar(50),
capital_id int unique,constraint FK_capital FOREIGN KEY (capital_id)REFERENCES capital(id));

select*from onetoone.capital;



insert into oneToone.capital(name)values('Kathmandu'),('DC'),('seoul'),('Karachi');

delete from onetoone.capital where name = 'Kathmandu';
delete from onetoone.capial where name = 'DC';


update onetoone.capital set id = 1 where id=6;

select* from capital;

delete from onetoone.capital where name = 'india';

insert into onetoone.country(name,capital_id)values('Nepal',8),('India',1),('USA',9),('South Korea',10),('Pakisthan',11);
 select* from onetoone.country;
