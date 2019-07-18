--1
SELECT * FROM invoice
JOIN invoice_line ON invoice_line.invoice_id = invoice.invoice_id
WHERE invoice_line.unit_price > 0.99;

--2
SELECT i.invoice_date, c.first_name, c.last_name, i.total
FROM invoice i
JOIN customer c ON i.customer_id = c.customer_id;

--3
SELECT customer.first_name, customer.last_name, employee.first_name, employee.last_name 
FROM customer
JOIN employee ON customer.support_rep_id = employee.employee_id;

--4
SELECT album.title , artist.name as artist
FROM album
JOIN artist ON album.artist_id = artist.artist_id;

--5
SELECT pt.track_id
FROM playlist_track pt
JOIN playlist p ON p.playlist_id = pt.playlist_id
WHERE p.name = 'Music';

--6
SELECT track.name
FROM track
JOIN playlist_track pt ON track.playlist_id = pt.playlist_id
WHERE pt.playlist_id = 5;

--7
SELECT track.name, pt.name as playlist_name
FROM track
JOIN playlist_track pt ON track.track_id = pt.track_id
JOIN playlist p ON pt.playlist_id = p.playlist_id;

--8
SELECT t.name, a.title
FROM track t
JOIN album a ON t.album_id = a.album_id
JOIN genre g ON g.genre_id = t.genre_id
WHERE g.name = 'Alternative & Punk';