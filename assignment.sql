SHOW DATABASES;
USE assignment;
show tables;
SELECT COUNT(Sname) FROM salespeople WHERE Sname = 'A'; 
SELECT * FROM orders where Amt > 2000;
select count(Sname) from salespeople where City = 'Newyork';
select Snum from salespeople where City = 'london' or City = 'Pars';
SELECT Odate,Onum FROM orders order by Odate,Snum;
SELECT Odate,Onum FROM orders group by Odate,Snum;










