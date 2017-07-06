#Premiere Products - pg 167 / Chapter 5 (10 problems)
#Question 1 
-- select order_num, order_date, c.customer_num, customer_name 
-- from customer c, orders o 
-- where (o.customer_num = c.customer_num); 

#Question 2
-- select order_num, order_date, c.customer_num, customer_name
-- from customer c, orders o 
-- where ((o.customer_num = c.customer_num) and
-- (order_date = '2010-10-23'));

#Question 3
-- select o.order_num, order_date, quoted_price, num_ordered, part_num 
-- from order_line o, orders r 
-- where (o.order_num = r.order_num);

#Question 4
-- select c.customer_num, customer_name, order_date
-- from customer c, orders o 
-- where (c.customer_num = o.customer_num) and (order_date IN ('2010-10-23'));

#Question 5 ***To be continued - EXISTS operator***

#Question 6
-- select c.customer_num, customer_name, order_date
-- from customer c, orders o 
-- where (c.customer_num = o.customer_num) and (order_date <> ('2010-10-23'));

#Question 7
-- select o.order_num, order_date, p.part_num, description, class
-- from part p, orders o, order_line l 
-- where ((p.part_num = l.part_num) and (o.order_num = l.order_num)); 

#Question 8
-- select o.order_num, order_date, p.part_num, description, class
-- from part p, orders o, order_line l 
-- where ((p.part_num = l.part_num) and (o.order_num = l.order_num))
-- order by class, order_num;

#Question 9 *To be continued*
#Question 10 *To be continued*

#Question 11
-- select c.customer_num, customer_name, description
-- from customer c, orders o, part
-- where ((c.customer_num = o.customer_num) and (description = 'Gas Range'));





