use zomato;
create database zomato;
use zomato;
CREATE TABLE users(userid integer,signup_date date); 

INSERT INTO users(userid,signup_date) 
 VALUES (1,'2014-05-05'),
(2,'2015-01-15'),
(3,'2014-11-04');

select * from users;

CREATE TABLE sales(userid integer,created_date date,product_id integer); 

INSERT INTO sales(userid,created_date,product_id) 
 VALUES (1,'2017-04-19',2),
(3,'2019-12-18',1),
(2,'2020-07-20',3),
(1,'2019-10-23',2),
(1,'2018-03-19',3),
(3,'2016-12-12',2),
(1,'2016-11-09',1),
(1,'2016-05-20',3),
(2,'2017-09-24',1),
(1,'2017-03-11',2),
(1,'2016-03-11',1),
(3,'2016-11-10',1),
(3,'2017-12-07',2),
(3,'2016-12-15',2),
(2,'2017-11-08',2),
(2,'2018-09-10',3);

select * from sales;
CREATE TABLE product(product_id integer,product_name varchar(50),price integer); 

INSERT INTO product(product_id,product_name,price) 
 VALUES
(1,'p1',980),
(2,'p2',870),
(3,'p3',330);

select * from product;


--- What is the total amount spent by each customer in zomato

select s.userid, sum(p.price) as total from sales as s inner join product as p on s.product_id=p.product_id group by s.userid;

--- --How many days has zomato customer visted zomato

select userid, count(distinct created_date) from sales group by userid;

---- Which is the fisrt product purchased by every customer who is signing update

select * from ( select *, rank() over(partition by userid order by created_date) rnk  from sales) a where rnk=1; 

---- what is the most purchased item and how many times it has been purchased
---- ZOMATO SALES ANALYSIS-----
Select userid, count(product_id) as count 
from sales where product_id=
(select  product_id from sales group by product_id order by count(product_id) desc limit 1) 
group by userid;

select  product_id, count(product_id) from sales group by product_id order by count(product_id) desc limit 1;

--- Which item was most popular for each customer?

select * from (select *, rank() over(partition by userid order by count_ desc ) as rank_ from  (select userid, product_id, count(product_id) as count_ from sales  group by userid, product_id)as A) as b where rank_=1;

call user_details;

call fetch_id(2);