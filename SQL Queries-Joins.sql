Use shailja;
Create table employee
( ID int,
NAME VARCHAR(50),
CITY VARCHAR(40),
SALARY INT);
insert INTO EMPLOYEE VALUES (1,'SHAILJA', 'DELHI', 30000);
INSERT INTO EMPLOYEE VALUES (2,'ANMOL', 'DELHI', 340000);
INSERT INTO EMPLOYEE VALUES (3,'ANEESHA', 'MUMBAI', 20000);
INSERT INTO EMPLOYEE VALUES (4,'SWATI', NULL, 100000);

DESC TABLE EMPLOYEE;
SELECT * FROM EMPLOYEE;
SELECT * FROM EMPLOYEE WHERE SALARY>30000;
sELECT * FROM EMPLOYEE WHERE SALARY>20000 OR SALARY<30000;
SELECT * FROM EMPLOYEE
LIMIT 2;
SELECT * FROM EMPLOYEE WHERE SALARY between 20000 AND 30000
LIMIT 1;
SELECT * FROM EMPLOYEE ORDER BY SALARY;
SELECT * FROM EMPLOYEE WHERE SALARY BETWEEN 20000 AND 100000 ORDER BY NAME ASC;
select count(*)  as no_of_records from employee;
select count(name) as count_of_employee from employee;
select sum(salary) as sum_of_Salary from employee;
select * from employee;
select sum(salary) as total_Sal from employee where city='Delhi';

-- sum of sal for each dept
select city,	sum(salary) as total_Sal from employee group by city;
select city,	sum(salary) as total_Sal from employee where city='delhi' group by city;
select city,	sum(salary) as total_Sal from employee where salary>2000  group by city;
select city,	sum(salary) as total_Sal from employee where salary>2000  group by city having total_sal>200000;
select city, avg(salary) as avg_Sal from employee group by city having avg_sal>30000;

create table customer(
id int,
name varchar(40)
);

Insert into customer values (1, 'Akshay');
Insert into customer values (2, 'Anurag');
Insert into customer values (3, 'Patel');
Insert into customer values (4, 'Manisha');
Insert into customer values (5, 'Abhay');
Insert into customer values (6, 'Amrutha');
Insert into customer values (7, 'Avnish');	
Insert into customer values (8, 'Anand');

create table orders(
orderid int,
amount int,
customer_id int,
city_id int );

Insert into orders values (1, 200, 1, 1);
Insert into orders values (2, 700, 3, 2);
Insert into orders values (3, 800, 6, 4);
Insert into orders values (4, 600, 1, 3);
Insert into orders values (5, 500, 4, 2);
Insert into orders values (6, 600, 4, 1);
Insert into orders values (7, 300, 8, NULL);
Insert into orders values (8, 500, 9, 2);
Insert into orders values (9, 900, 10, 4);
Insert into orders values (10, 300, 9, NULL);

create table city(
city_id int,
city_name varchar(50)
 );

Insert into city values (1, 'Banagalore');
Insert into city values (2, 'Mumbai');
Insert into city values (3, 'Delhi');
Insert into city values (4, 'Lucknow');
Insert into city values (5, 'Hyderabad');
Insert into city values (6, 'Kochi');
Insert into city values (7, 'Ahemdabad');
Insert into city values (8, 'Ranchi');
select * from customer;
select * from orders;
select * from city;
alter table customer rename column Customerid to customer_id;
select * from customer inner join orders on customer.customer_id=orders.customer_id;
select customer_id from customer inner join orders on customer.customer_id=orders.customer_id;
select * from customer as c inner join orders as o on c.customer_id=o.customer_id 
inner join city as ci on o.city_id=ci.city_id;
select * from customer as c left join orders as o on c.customer_id=o.customer_id; 
select * from customer as c right join orders as o on c.customer_id=o.customer_id; 