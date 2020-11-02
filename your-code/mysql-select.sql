use publications;

#Challenge 2
SELECT au.au_id AS "Author ID", au.au_lname as "Last Name", au.au_fname as "First Name",
ti.title as 'Title', pu.pub_name as 'Publisher', count(pu.pub_name) as "Title Count"
FROM authors AS au
INNER JOIN titleauthor AS ta ON au.au_id = ta.au_id
RIGHT JOIN titles AS ti ON ta.title_id = ti.title_id
LEFT JOIN publishers AS pu ON ti.pub_id = pu.pub_id
GROUP BY pu.pub_name, au.au_id
ORDER BY au.au_lname DESC;

#Challenge 1
SELECT au.au_id AS "Author ID", au.au_lname as "Last Name", au.au_fname as "First Name",
ti.title as 'Title', pu.pub_name as 'Publisher'
FROM authors AS au
INNER JOIN titleauthor AS ta ON au.au_id = ta.au_id
RIGHT JOIN titles AS ti ON ta.title_id = ti.title_id
LEFT JOIN publishers AS pu ON ti.pub_id = pu.pub_id;

# Challenge 3

SELECT au.au_id AS "Author ID", au.au_lname as "Last Name", au.au_fname as "First Name",
ti.title as 'Title', sa.qty as "total sold"
FROM authors AS au
INNER JOIN titleauthor AS ta ON au.au_id = ta.au_id
LEFT JOIN titles AS ti ON ta.title_id = ti.title_id
LEFT JOIN sales as sa ON ti.title_id = sa.title_id
ORDER BY sa.qty desc
limit 3;

# Challenge 4

SELECT au.au_id AS "Author ID", au.au_lname as "Last Name", au.au_fname as "First Name",
ti.title as 'Title', sa.qty as "total sold"
FROM authors AS au
INNER JOIN titleauthor AS ta ON au.au_id = ta.au_id
LEFT JOIN titles AS ti ON ta.title_id = ti.title_id
LEFT JOIN sales as sa ON ti.title_id = sa.title_id
ORDER BY sa.qty desc;





