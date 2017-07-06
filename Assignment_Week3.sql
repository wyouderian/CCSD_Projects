#page 168
-- select B.book_code, A.author_num, title, author_first, author_last
-- from book B, author A, wrote W
-- where (B.book_code = W.book_code) and (W.author_num = A.author_num);

#Question 1 
select B.book_code, b.title, P.publisher_code, p.publisher_name
from book B, publisher P where (p.publisher_code = b.publisher_code)
order by publisher_name;

#Question 2
select B.book_code, b.title, b.price, p.publisher_name
from book B, publisher P where (p.publisher_code = b.publisher_code)
and (p.publisher_name = 'Scribner');

#Question 3
select B.book_code, b.title, b.price, p.publisher_name
from book B, publisher P where (p.publisher_code = b.publisher_code)
and (p.publisher_name = 'Scribner') and (b.price >= 14);

#Question 4
select B.book_code, b.title, I.on_hand, branch_num
from book B, inventory I where (b.book_code = I.book_code)
and (branch_num = 3);

#Question 5
select b.title, type, p.publisher_name from book B, publisher P where (type = 'PSY') 
and (p.publisher_name = 'Berkley Publishing'); 

#Question 6
-- select title, a.author_num
-- from book b, author a, wrote w 
-- where ( b.book_code = w.book_code ) and 
-- ( a.author_num = w.author_num ) and 
-- (a.author_num IN (18));

#Using the IN operator
select title from book where book_code IN (select book_code from wrote where (author_num = 18));

#Question 7 
select title from book where exists (select * from wrote where
(author_num = 18) and (book.book_code = wrote.book_code));

#Question 8
select b.book_code, title
from wrote w, book b, inventory i 
where (b.book_code = w.book_code) and 
(w.book_code = i.book_code) and 
(b.book_code = i.book_code) and 
(i.branch_num = 2) and 
(w.author_num = 20);

#Question 9
select f.book_code, s.book_code, f.title, s.title, f.price from book f, book s where (f.price = s.price) and (f.book_code > s.book_code) 
order by f.book_code asc; 

#Question 10
select title, author_last, on_hand from book b, author a, inventory i, wrote w 
where 
(b.book_code = w.book_code) and
(a.author_num = w.author_num) and 
(i.book_code = b.book_code) and 
(i.book_code = w.book_code) and 
(i.branch_num = 4);

#Question 11
select title, author_last, on_hand, paperback from book b, author a, inventory i, wrote w 
where 
(b.book_code = w.book_code) and
(a.author_num = w.author_num) and 
(i.book_code = b.book_code) and 
(i.book_code = w.book_code) and 
(i.branch_num = 4) and
(b.paperback = 'Y');

#Question 12
select book_code, title, price, city 
from book b, publisher p 
where (b.publisher_code = p.publisher_code) and
((city = 'Boston') or (price > 10));

#Question 13
select book_code, title, price, city 
from book b, publisher p 
where (b.publisher_code = p.publisher_code) and
((city = 'Boston') and (price > 10));

#Question 14
select book_code, title, price, city 
from book b, publisher p 
where (b.publisher_code = p.publisher_code) and
((city <> 'Boston') and (price > 10));

#Question 15
select book_code, title, price from book where (price > ( select max( price ) from book where type = 'MYS' ) );

#Question 16
select book_code, title, price from book where (price > (select min(price) from book where type = 'MYS'));

#Question 17
select book.book_code, book.title, inventory.on_hand, inventory.branch_num 
from book left join inventory on 
((inventory.branch_num = 2) and (book.book_code = inventory.book_code))
order by book.book_code; 


