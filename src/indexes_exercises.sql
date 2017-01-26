# USE employees;
#
# DESCRIBE employees;

USE codeup_test_db;

DESCRIBE albums;

# Add an index to make sure all album names combined with the artist are unique.
# Try to add duplicates to test the constraint.


# Makes unique
ALTER TABLE albums
ADD UNIQUE (name, artist);

# Getting duplicate for "Thriller"

SELECT * FROM albums;

DELETE FROM albums WHERE id = 1;
