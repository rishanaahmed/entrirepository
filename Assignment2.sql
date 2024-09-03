create database sales;

use sales;

create table orders(
order_id int primary key,
customer_name varchar(20) not null,
product_category varchar(20),
ordered_item varchar(20),
contact_no varchar(20) unique
);
alter table orders add column order_quantity int;

rename table orders to sales_orders;

desc sales_orders;

select * from sales_orders;

insert into sales_orders values(001,"fathima","furniture","chair",9087979790,6);
desc sales_orders;

insert into sales_orders(order_id,customer_name,product_category,ordered_item,contact_no,order_quantity) values(002,"sana","furniture","chair",9087979780,6);
desc sales_orders;
insert into sales_orders values
(003,"mohan","electronics","phone",8049385746,1),
(004,"nandana","cosmetics","cream",8038457483,3),
(005,"sreerag","electronics","charger",8745638406,1),
(006,"nandan","furniture","table",9435261423,1),
(007,"ahmmed","electronics","tv",9324152434,1),
(008,"renu","cosmetics","powder",9111223456,3),
(009,"sahil","food","biscuits",8635262617,5),
(10,"riya","food","noodles",8978373763,10);

select customer_name,ordered_item from sales_orders;
update sales_orders set ordered_item="bed" where order_id=002;
select * from sales_orders;
drop table sales_orders;

