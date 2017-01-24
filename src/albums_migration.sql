USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
  id int not null AUTO_INCREMENT,
  artist VARCHAR(300) not null,
  name VARCHAR(300) not null,
  release_date YEAR(4) not null,
  sales FLOAT,
  genre VARCHAR(300) not null,
  PRIMARY KEY (id)
);