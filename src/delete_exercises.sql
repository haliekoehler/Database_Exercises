USE codeup_test_db;

SELECT 'Albums released after 1991' AS 'Info';
SELECT * FROM albums WHERE release_date >= 1991;


SELECT 'Albums under disco genre' AS 'Info';
SELECT * FROM albums WHERE genre = 'disco';


SELECT 'Albums by Michael Jackson' AS 'Info';
SELECT * FROM albums WHERE artist = 'Michael Jackson';


DELETE * FROM albums WHERE release_date >= 1991;
DELETE * FROM albums WHERE genre = 'dicso';
DELETE * FROM albums WHERE artist = 'Michael Jackson';

SELECT * FROM albums;