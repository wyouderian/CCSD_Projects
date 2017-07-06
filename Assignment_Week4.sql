#Henry Books Chapter 7 pg 229
#Question 1a
create view PLUME as 
select book_code, title, type, price, publisher_code
from book where publisher_code = 'PL';

#Question 1b
select book_code, title, type, price, publisher_code
from PLUME where price < 13; 

#Question 1c
select book_code, title, type, price, publisher_code 
from book 
where (publisher_code = 'PL') and (price < 13); 

#Question 1d
-- Updating the database through PLUME could create problems because only publisher
-- code PL is accepted by PLUME, all others will be rejected.  If enter a book with a different 
-- publisher code, the system may not know where to place that code.  

#Question 2a
create view NONPAPERBACK as
select book_code, title, price, paperback, publisher_name 
from book b, publisher p where (b.publisher_code = p.publisher_code) and
(paperback = 'N'); 

#Question 2b
select title, price, publisher_name 
from NONPAPERBACK where price < 20;

#Question 2c
select book_code, title, price, paperback, publisher_name 
from book b, publisher p where (b.publisher_code = p.publisher_code) and
(paperback = 'N') and (price < 20); 

#Question 2d 
-- Yes, updating the database through view NONPAPERBACK could create problems because if a 
-- book is a paperback it may be rejected.  The primary key in book is book_code, the primary key in 
-- publisher is publisher_code.  These differences could create problems when updating.  

#Question 3a
select branch_num, on_hand from inventory 
create view BOOK_INVENTORY (branch_num, UNITS) as
group by branch_num order by branch_num; 

#Question 3b
select branch_num, units from BOOK_INVENTORY where units > 25; 

#Question 3c
select branch_num, on_hand from inventory where on_hand > 25; 

#Question 3d
-- Updating the database through the BOOK_INVENTORY view would most likely not create problems 
-- because the primary key of inventory is not being joined to any other table.  

#Question 4a
grant select on book to Rodriquez; 
#Question 4b
grant insert on book, publisher to Gomez, Liston; 
#Question 4c
grant update price on book to Andrews, Zimmer; 
#Question 4d
grant select (title, book_code, price) on book to PUBLIC; 
#Question 4e
grant insert on publisher to Golden;
grant delete on publisher to Golden; 
#Question 4f
grant index on book to Andrews;
#Question 4g
grant alter on author to Andrews, Golden; 
#Question 4h
grant all on branch, book, inventory to Golden; 

#Question 5
revoke select on henry from Andrews;

#Question 6a
create index BOOK_INDEX1 on book(title);
#Question 6b
create index BOOK_INDEX2 on book(type);
#Question 6c
create index BOOK_INDEX3 on publisher(city, publisher_name);

#Question 7
drop index BOOK_INDEX3; 

#Question 8a
select column_name, data_type
from dba_tab_columns
where table_name = 'publisher'; 

#Question 8b
select table_name
from dba_tab_columns 
where column_name = 'PUBLISHER_CODE'; 

#Question 8c 
select table_name, column_name, data_type
from dba_tab_columns 
where column_name = 'BOOK_CODE', 'TITLE', 'PRICE';

#Question 9
alter table book 
add foreign key (publisher_code) references publisher; 

#Question 10
alter table book 
add check ( paperback IN ('Y', 'N') ); 






