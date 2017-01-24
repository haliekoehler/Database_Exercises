CREATE DATABASE IF NOT EXISTS codeup_test_db;
USE codeup_test_db;

# Use the UPDATE command to update records in our albums table
# Write SELECT statements to output each of the following with a caption:
# Add SELECT statements after each UPDATE so you can see the results of your handiwork

# All albums in your table.
SELECT 'These are all the albums in the table!';
# Make all the albums 10 times more popular (sales * 10)
UPDATE albums
set sales = sales*10;
SELECT * FROM albums;

# All albums released before 1980
SELECT 'All Albums before 1980';
# Move all the albums before 1980 back to the 1800s.
UPDATE albums
set release_date = "1800"
WHERE release_date < "1980";
SELECT * FROM albums;

# All albums by Michael Jackson
SELECT 'All albums by Michael Jackson';
# Change "Michael Jackson" to "Peter Jackson"
Update artist
set artist = "Peter Jackson"
WHERE artist = "Michael Jackson";
SELECT * FROM albums;