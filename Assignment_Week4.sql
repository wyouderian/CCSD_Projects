#Henry Books Chapter 7 pg 229
#Question 1
-- create view PLUME as 
-- select book_code, title, type, price publisher_code
-- from book where publisher_code = 'PL';

#Question 2
-- create view NONPAPERBACK as
-- select book_code, title, price, paperback, publisher_name 
-- from book b, publisher p where (b.publisher_code = p.publisher_code) and
-- (paperback = 'N'); 

#Question 3
-- create view BOOK_INVENTORY (branch_num, UNITS) as
-- select branch_num, on_hand from inventory 
-- group by branch_num order by branch_num; 

#Question 4a
-- grant select on book to Rodriquez; 
#Question 4b
-- grant insert on book, publisher to Gomez, Liston; 
#Question 4c
-- grant update price on book to Andrews, Zimmer; 
#Question 4d
-- grant select (title, book_code, price) on book to PUBLIC; 
#Question 4e
-- grant insert on publisher to Golden;
-- grant delete on publisher to Golden; 
#Question 4f
-- grant index on book to Andrews;
#Question 4g
-- grant alter on author to Andrews, Golden; 
#Question 4h
-- grant all on branch, book, inventory to Golden; 

#Question 5
-- revoke select on henry from Andrews;

#Question 6a
-- create index BOOK_INDEX1 on book(title);
#Question 6b
-- create index BOOK_INDEX2 on book(type);
#Question 6c
-- create index BOOK_INDEX3 on publisher(city, publisher_name);

#Question 7
-- drop index BOOK_INDEX3; 

#Question 8a
-- select column_name, data_type
-- from dba_tab_columns
-- where table_name = 'publisher'; 
#Question 8b
-- select table_name
-- from dba_tab_columns 
-- where column_name = 'PUBLISHER_CODE'; 
#Question 8c 

#Question 9
-- alter table book 
-- add foreign key (publisher_code) references publisher; 

#Question 10
-- alter table book 
-- add check ( paperback IN ('Y', 'N') ); 






