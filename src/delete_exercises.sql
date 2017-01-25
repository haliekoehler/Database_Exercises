USE codeup_test_db;

# Albums released after 1991
SELECT 'Albums released after 1991' AS 'Info';
SELECT * FROM albums WHERE release_date >= 1991;


# Albums within the disco genre
SELECT 'Albums under disco genre' AS 'Info';
SELECT * FROM albums WHERE genre = 'disco';

# Albums by Michael Jackson
SELECT 'Albums by Michael Jackson' AS 'Info';
SELECT * FROM albums WHERE artist = 'Michael Jackson';


DELETE FROM albums WHERE release_date >= 1991;
DELETE FROM albums WHERE genre LIKE '%dicso%';
DELETE FROM albums WHERE artist LIKE '%Whitney Houston%';

SELECT * FROM albums;