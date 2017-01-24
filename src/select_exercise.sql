USE codeup_test_db;

SELECT 'All Pink Floyd Albums' AS 'Info';
SELECT * FROM albums WHERE artist = 'Pink Floyd';

SELECT 'Year Sgt. Pepper''s Lonely Hearts Club Band was released' AS 'Info';
SELECT release_date FROM albums WHERE name = 'Sgt. Peppers Lonely Hearts Club Band';

SELECT 'Genre of Nirvanas album Nevermind' AS 'Info';
SELECT genre FROM albums WHERE name = 'Nevermind';

SELECT 'All albums released in the 90s' AS 'Info';
SELECT name FROM albums WHERE release_date BETWEEN 1990 AND 1999;

SELECT 'Albums less than 20 million certified sales' AS 'Info';
SELECT name FROM albums WHERE sales < 20000000;

SELECT 'All (only) rock albums' AS 'Info';
SELECT name content FROM albums WHERE genre = 'rock';
