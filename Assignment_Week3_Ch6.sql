#Chapter 6 pg 192 - Henry Books
#Question 1
create table fiction 
	(book_code char(4) primary key,
	 title char (40),
	 publisher_code char (3),
	 price decimal (4,2));

#Question 2
insert into fiction
	(select book_code, title, publisher_code, price from book where type = 'FIC');

#Question 3
update fiction 
set price = (price * 0.96)
where publisher_code = 'LB';

#Question 4
insert into fiction values ('9946', 'Cannery Row', 'PE', 11.95);

#Question 5
delete from fiction where book_code = '9883';

#Question 6
update fiction 
set price = null 
where title = 'To Kill A Mockingbird';

#Question 7
alter table fiction add BEST_SELLER char (1);
update fiction set BEST_SELLER = 'N'; 

#Question 8
update fiction 
set BEST_SELLER = 'Y'
where title = 'Song of Solomon';

#Question 9
alter table fiction 
modify title char (50);

#Question 10
alter table fiction
modify BEST_SELLER char (1) not null;

#Question 11
drop table fiction;

