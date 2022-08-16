/*use pubs;
select 
ap.au_id,
ap.au_lname,
ap.au_fname,
T.title,
P.pub_name
from authors ap
inner join titleauthor ta
on ta.au_id=ap.au_id
inner join titles T
on T.title_id=ta.title_id
inner join publishers P
on P.pub_id=T.pub_id;*/


/*use pubs;
select 
ap.au_id,
ap.au_lname,
ap.au_fname,
count(T.title) as titlecount,
P.pub_name
from authors ap
inner join titleauthor ta
on ta.au_id=ap.au_id
inner join titles T
on T.title_id=ta.title_id
inner join publishers P
on P.pub_id=T.pub_id
group by T.title_id
order by count(T.title)desc;*/


/*use pubs;
select
ap.au_id,
ap.au_lname,
ap.au_fname,
T.title,
T.ytd_sales
from authors ap
inner join titleauthor ta
on ta.au_id=ap.au_id
inner join titles T
on T.title_id=ta.title_id
inner join publishers P
on P.pub_id=T.pub_id
order by T.ytd_sales desc
limit 3*/


use pubs;
select
ap.au_id,
ap.au_lname,
ap.au_fname,
T.title,
T.ytd_sales
from authors ap
inner join titleauthor ta
on ta.au_id=ap.au_id
inner join titles T
on T.title_id=ta.title_id
inner join publishers P
on P.pub_id=T.pub_id
order by T.ytd_sales desc