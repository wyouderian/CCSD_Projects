#Premiere - pg 57
#Question 1
drop REP_NUM from customer;
alter table orders add column REP_NUM char (2);

#Question 2
-- r.REP_NUM = o.REP_NUM from book r
-- o.CUSTOMER_NUM = c.CUSTOMER_NUM from book o

#tables used are REP, ORDERS, and CUSTOMER.  Link between REP and
#ORDERS is REP_NUM.  Link between ORDERS and CUSTOMER is CUSTOMER_NUM. 

