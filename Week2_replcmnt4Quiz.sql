#Premiere Products - pg 132 / Chapter 4
#Question 1
select part_num, description, price from part; 

#Question 2
select * from orders;

#Question 3
select customer_name, credit_limit from customer where (credit_limit >= 10000);

#Question 4 **order date is not formatted - removed order date from exerise. 
select order_num, customer_num, order_date from orders where (customer_num = 608);

#Question 5
select customer_num, customer_name, rep_num from customer where (rep_num = 35) or (rep_num = 65);

#Question 6
select part_num, description, class from part where (class <> 'AP');

#Question 7
select part_num, description, on_hand from part where (on_hand >= 10) and (on_hand <= 25);
-- select part_num, description, on_hand from part where on_hand between 10 and 25; 

#Question 8
alter table part add column ON_HAND_VALUE decimal (8,2);
select part_num, description, class, (on_hand * price) as ON_HAND_VALUE from part where (class = 'SG');

#Question 9
select part_num, description, (on_hand * price) as ON_HAND_VALUE from part where ((on_hand * price) >= 7500);

#Question 10
select part_num, description, class from part where class IN ('AP', 'SG'); 





