#Premiere Products - Chapter 7 pg 228
#Question 1a
-- create view MAJOR_CUSTOMER as
-- select customer_num, customer_name, balance, credit_limit, rep_num
-- from customer 
-- where (credit_limit <= 10000); 

#Question 1b
-- select customer_num, customer_name from MAJOR_CUSTOMER 
-- where balance > credit_limit; 

#Question 1c
-- select customer_num, customer_name, balance, credit_limit, rep_num
-- from customer where balance > credit_limit; 

#Question 1d
-- updating the database through MAJOR_CUSTOMER should not create many problems
-- because the primary key in customer is not joined with other tables. 

#Question 2a
-- create view PART_ORDER as 
-- select p.part_num, p.description, price, o.order_num, order_date, num_ordered, quoted_price
-- from orders o, order_line l, part p 
-- where o.order_num = l.order_num; 

#Question 2b
-- select part_num, description, order_num, quoted_price
-- from PART_ORDER where quoted_price > 100;  

#Question 2c
-- select p.part_num, p.description, price, o.order_num, order_date, num_ordered, quoted_price
-- from orders o, order_line l, part p 
-- where (o.order_num = l.order_num) and (quoted_price > 100); 

#Question 2d 
-- Updating the database through this view should not cause any problems because of the 
-- few numbers of primary keys and no real limiting attributes.  

#Question 3a
-- create view ORDER_TOTAL as 
-- select order_num, (num_ordered * quoted_price) as total_amount from order_line
-- order by order_num; 

#Question 3b 
-- select order_num, total_amount from ORDER_TOTAL where total_amount > 1000; 

#Question 3c 
-- select order_num, (num_ordered * quoted_price) as total_amount from order_line
-- where ((num_ordered * quoted_price) > 1000) order by order_num; 

#Question 3d
-- Updating the database through this view should not cause problems because the 
-- primary keys will not interfere with eachother, and the attributes affected
-- can accept null values.  

#Question 4a 
grant select on part to Ashton; 
#Question 4b
grant insert on orders, order_line to Kelly, Morgan;
#Question 4c
grant update on price to James; 
#Question 4d
grant delete on customer to Danielson;
#Question 4e
grant select (customer_num, customer_name, street, city, state, zip) from customer to PUBLIC;
#Question 4f 
grant index on orders to Perez; 
#Question 4g
grant alter on part to Washington; 
#Question 4h
grant all on orders to Grinstead; 
	






