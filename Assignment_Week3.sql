#page 168
-- select B.book_code, A.author_num, title, author_first, author_last
-- from book B, author A, wrote W
-- where (B.book_code = W.book_code) and (W.author_num = A.author_num);

#Question 1 
-- select B.book_code, b.title, P.publisher_code, p.publisher_name
-- from book B, publisher P where (p.publisher_code = b.publisher_code)
-- order by publisher_name;

#Question 2
-- select B.book_code, b.title, b.price, p.publisher_name
-- from book B, publisher P where (p.publisher_code = b.publisher_code)
-- and (p.publisher_name = 'Scribner');

#Question 3
-- select B.book_code, b.title, b.price, p.publisher_name
-- from book B, publisher P where (p.publisher_code = b.publisher_code)
-- and (p.publisher_name = 'Scribner') and (b.price >= 14);

#Question 4
-- select B.book_code, b.title, I.on_hand, branch_num
-- from book B, inventory I where (b.book_code = I.book_code)
-- and (branch_num = 3);

#Question 5
-- select b.title, type, p.publisher_name from book B, publisher P where (type = 'PSY') 
-- and (p.publisher_name = 'Berkley Publishing'); 

#Question 6
-- select title, a.author_num
-- from book b, author a, wrote w 
-- where ( b.book_code = w.book_code ) and ( a.author_num = w.author_num ) and (a.author_num IN (18));

-- select title from book where book_code IN (select book_code from wrote where (author_num = 18));

#Question 7 ******** to be continued******
-- select title from book where EXISTS (select * book_code where ( b.book_code = w.book_code ) and ( a.author_num = w.author_num ) and (author_num = 18));
#*************


#Question 8
select b.book_code, title
from wrote w, book b, inventory i 
where (b.book_code = w.book_code) and 
(w.book_code = i.book_code) and 
(b.book_code = i.book_code) and 
(i.branch_num = 2) and 
(w.author_num = 20);

#Question 9

