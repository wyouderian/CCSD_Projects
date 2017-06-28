#Question 1 page 168
select B.book_code, A.author_num, title, author_first, author_last
from book B, author A, wrote W
where (B.book_code = W.book_code) and (W.author_num = A.author_num);
