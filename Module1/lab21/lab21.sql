use publication;
select authors.au_lname,authors.au_fname,authors.au_id, titleauthor.title_id, titles.pub_id,titles.title,publishers.pub_name
from authors 

left join titleauthor 
on authors.au_id=titleauthor.au_id

Left join titles
on titleauthor.title_id=titles.title_id

left join publishers
on titles.pub_id=publishers.pub_id;

/*QUESTION 2*/

select authors.au_lname,authors.au_fname,authors.au_id, /*ajouter count*/count(titleauthor.title_id), titles.pub_id,titles.title,publishers.pub_name
from authors 
left join titleauthor 
on authors.au_id=titleauthor.au_id
left join titles
on titleauthor.title_id=titles.title_id
left join publishers
on titles.pub_id=publishers.pub_id /* fin de la premier réponse */
group by authors.au_id,titles.pub_id
order by count(titleauthor.title_id) desc;

/*QUESTION 3*/
/*AUTHOR ID` - the ID of the author
 *LAST NAME` - author last name
 *FIRST NAME` - author first name
 *TOTAL` - total number of titles sold from this author*/ 
select authors.au_id, authors.au_lname, count(title) as Total
from authors
left join titleauthor
on authors.au_id = titleauthor.au_id
left join titles
on titles.title_id = titleauthor.title_id
left join publishers
on publishers.pub_id = titles.pub_id
group by authors.au_lname,authors.au_id
order by count(title) desc
limit 3;
/*question 4*/
select authors.au_id, authors.au_lname, count(title) as Total
from authors
left join titleauthor
on authors.au_id = titleauthor.au_id
left join titles
on titles.title_id = titleauthor.title_id
left join publishers
on publishers.pub_id = titles.pub_id
group by authors.au_lname,authors.au_id
order by count(title) desc
limit 23;
