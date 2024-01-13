use music;
select * from invoice;

-- Q1 Who is senior most employee on job title? --
select * from employee
order by levels desc
limit 1;

-- Which countries having most Invoice? --
select count(*) as c, billing_country
from invoice
group by billing_country
order by c desc;

-- Q3 Who are top 3 values of invoice? --
select total from invoice
order by total desc
limit 3;

-- Q4. Which city has the best cutomer? we would like to throw a promotional Music Festival in the city --
 -- we made the most money. Write a query that returns one city that has  the highest sum of invoice totals --
 -- Write both the city name and sum of all invoice totals --
 select SUM(total) as invoice_total, billing_city
 from invoice
 group by billing_city
 order by invoice_total desc;
 
 -- Q5, write query who has spent the most money? --
 
 select customer.customer_id, SUM(invoice.total) as total
 from customer
 JOIN invoice ON customer.customer_id = invoice.customer_id
 group by customer.customer_id
 order by total desc
 limit 1;  -- Best Customer --
 
 -- Q6. Write query to return the email, first name, last name  & Genre of all Rock Music Listners. Return list ordered alpha by email starting from A?

Select distinct email, first_name, last_name
from customer
join invoice ON customer.customer_id = invoice.customer_id
join invoice_line on invoice.invoice_id = invoice_line.invoice_id
where track_id IN(
     select track_id from track
     join genre on track.genre_id = genre.genre_id
     where genre.name like 'Rock'
)
order by email

-- Write a query that returns the Artist name and total track count of the top 10 rock bands ---

select artist.artist_id, artist.name, count(artist.artist_id) AS number_of_songs
from track
Join album on album.album_id = track.album_id
join artist on artist.artist_id = album.artist_id
join genre on genre.genre_id = track.genre.id
where genre like 'Rock'
group by artist.artist_id
order by number_of_songs desc
limit 10;

select * from genre;
-- Order by song length with longesht songs listed --
select * from track;
select name, milliseconds from track
where milliseconds > (select avg (milliseconds) as avg_track_length from track)
order by milliseconds desc;

-- Q Find how much amt spent by each customer on artists? write a query to return customer --
--- name , artist name , and total spent ? ---

 
 
 

