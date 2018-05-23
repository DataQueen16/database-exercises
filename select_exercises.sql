USE codeup_test_db;

SELECT 'Pink Floyd Albums' AS ' ';
SELECT * FROM albums WHERE artist LIKE '%PINK%';

SELECT 'Sgt. Pepper''s Lonely Hearts Club Band' AS ' ';
SELECT release_date FROM albums WHERE name LIKE 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT 'Nevermind' AS ' ';
SELECT genre FROM albums WHERE name LIKE 'Nevermind';

SELECT '90''s album releases' AS ' ';
SELECT name FROM albums WHERE release_date LIKE '199%';

SELECT 'Albums less than 20 mil sold' AS ' ';
SELECT name FROM albums WHERE genre LIKE '%Rock%';