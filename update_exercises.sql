USE codeup_test_db;

SELECT 'All Albums' AS ' ';
SELECT * FROM albums;
UPDATE albums
SET sales = sales * 10;
SELECT * FROM albums;

SELECT 'Albums released before 1980' AS ' ';
SELECT * FROM albums WHERE release_date < 1980;
UPDATE albums
SET release_date = release_date - 100
WHERE release_date < 1980;
SELECT release_date FROM albums WHERE release_date < 1980;


SELECT 'Michael Jackson Albums' AS ' ';
SELECT * FROM albums WHERE artist LIKE 'Michael Jackson';
UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';
SELECT * FROM albums;