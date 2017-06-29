#Premiere Products - pg 167 / Chapter 5
#Question 1 **order_date is not formatted correctly**
select order_num, order_date, c.customer_num, customer_name from customer c, orders o where (o.customer_num = c.customer_num); 
