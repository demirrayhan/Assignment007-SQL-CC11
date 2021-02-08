Please answer the following questions:

1.	Write a query that displays InvoiceId, CustomerId and total dollar amount for each invoice, sorted first by CustomerId (in ascending order), and then by total dollar amount (in descending order).

SELECT InvoiceId, CustomerId, Total FROM invoices ORDER BY CustomerId ASC, total DESC;

2.	Write a query that displays InvoiceId, CustomerId and total dollar amount for each invoice, but this time sorted first by total dollar amount (in descending order), and then by CustomerId (in ascending order).

SELECT InvoiceId, CustomerId, Total FROM invoices ORDER BY Total DESC, CustomerId ASC;


4.	Write a query to pull the first 10 rows and all columns from the invoices table that have a dollar amount of total greater than or equal to 10.

SELECT * FROM invoices WHERE Total >= 10 LIMIT 10;

5.	Write a query to pull the first 5 rows and all columns from the invoices table that have a dollar amount of total less than 10.

SELECT * FROM invoices WHERE total < 10 limit 5;

6.	Find all track names that start with 'B' and end with 's'.

SELECT name FROM tracks WHERE name like "B%s"

7.	Use the invoices table to find all information regarding invoices whose billing address is USA or Germany or Norway or Canada and invoice date is at any point in 2010, sorted from newest to oldest.

 SELECT * FROM invoices WHERE BillingCountry IN ("USA", "Germany", "Norway", "Canada") AND InvoiceDate like "2010%" ORDER BY InvoiceDate DESC;
8.	How many tracks does each album have? Your solution should include Album id and its number of tracks sorted from highest to lowest.

SELECT name, AlbumId, count(AlbumId) FROM tracks GROUP by AlbumId ORDER by count(AlbumId) DESC

9.	Find the album title of the tracks. Your solution should include track name and its album title.

SELECT tracks.Name, albums.Title FROM tracks INNER JOIN albums on tracks.AlbumId=albums.AlbumId

10.	Find the minimum duration of the track in an album. Your solution should include track name, album id, album title and duration of the track sorted from highest to lowest.

SELECT tracks.Name,tracks.AlbumId, albums.Title, min(tracks.Milliseconds) FROM tracks INNER JOIN albums on tracks.AlbumId=albums.AlbumId GROUP BY tracks.AlbumId order by Milliseconds DESC


11.	Find the total duration of each album. Your solution should include track name, album id, album title and its total duration sorted from highest to lowest.

 SELECT tracks.Name,tracks.AlbumId, albums.Title, sum(Milliseconds) FROM tracks JOIN albums on tracks.AlbumId=albums.AlbumId GROUP BY tracks.AlbumId ORDER BY sum(Milliseconds) DESC

12.	Based on the previous question, find the albums whose total duration is higher than 70 minutes. Your solution should include album title and total duration.

SELECT  albums.Title, SUM(Milliseconds) AS Duration FROM tracks JOIN albums on tracks.AlbumId=albums.AlbumId   GROUP BY tracks.AlbumId HAVING Duration > 4200000 ORDER BY sum(Milliseconds) DESC
