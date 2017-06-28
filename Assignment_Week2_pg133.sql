-- -- #Question 1
select book_code, type, title from book;

-- -- #Question 2
select * from branch;

-- -- #Question 3
select publisher_name from publisher where (city = 'Boston');

-- -- #Question 4
select publisher_name, city from publisher where (city <>'New York');

-- -- #Question 5
select branch_name, num_employees from branch where (num_employees >= 9);

-- -- #Question 6
select book_code, title, type from book where (type = 'HOR');

-- #Question 7
select book_code, title, type, paperback from book where (type = 'HOR') and (paperback = 'Y');

-- #Question 8
select book_code, title, type, publisher_code from book where (type = 'HOR') or (publisher_code = 'SC');

-- #Question 9
select book_code, title, price from book where (price = 15) and (price <= 25);

-- #Question 10 
select book_code, title, type, price from book where (type = 'MYS') and (price < 20);

-- #Question 11 
alter table BOOK add column DISCOUNTED_PRICE decimal (4,2);
 
select book_code, title, (price * 0.9) as DISCOUNTED_PRICE from book; 

-- #Question 12
select publisher_name from publisher where (publisher_name like '% and %');

-- #Question 13
select book_code, title, type from book where type IN ('HOR', 'SFI', 'MYS');

-- #Question 14
select book_code, title, type from book where type IN ('HOR', 'SFI', 'MYS') order by title;

-- #Question 15
select book_code, title, type, price from book where type IN ('HOR', 'SFI', 'MYS') order by price desc, title;

-- #Question 16
select type from book group by type;

-- #Question 17 
select count(*) from book where type = 'SFI';

#Question 18
select type, TRUNCATE(avg(price), 2) as Average_Price from book group by type;

#Question 19 
select type, TRUNCATE(avg(price), 2) as Average_Price from book where (paperback = 'Y') group by type;

#Question 20
select type, avg(price) as Average_Price from book where (paperback = 'Y') group by type having (avg(price) > 10);

#Question 21
select price, title from book where price = (select min( price ) from book);

#Question 22
select price, title from book where price = (select max( price ) from book);

#Question 23
select sum(num_employees) as Sum_Of_All_Employees from branch;



