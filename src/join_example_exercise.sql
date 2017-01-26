USE join_test_db;

CREATE TABLE roles (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  role_id INT UNSIGNED DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

# Insert 4 new users into the database. One should have a NULL role.
# The other three should be authors.

INSERT INTO users (name, email, role_id) VALUES
  ('bob', 'bob@example.com', 1),
  ('joe', 'joe@example.com', 2),
  ('sally', 'sally@example.com', 3),
  ('adam', 'adam@example.com', 3),
  ('jane', 'jane@example.com', null),
  ('mike', 'mike@example.com', null),
  ('eric', 'ecartman@example.com', null), # new 1
  ('stan', 'smarsh@example.com', 2),      # new 2
  ('kyle', 'kbrovlosky@example.com', 2),  # new 3
  ('kenny', 'kmccormick@example.com', 2); # new 4


# Use join, left join, and right join to combine results from the users and roles tables as we did in the lesson.
# Before you run each query, guess the expected number of results

# ------ Join / Inner Join
SELECT users.name AS user_name, roles.name as role_name
FROM users
JOIN roles ON users.role_id = roles.id;

# ------ Left Join
SELECT users.name AS user_name, roles.name AS role_name
FROM users
LEFT JOIN roles ON users.role_id = roles.id;

# ------ Right Join
SELECT users.name AS user_name, roles.name AS role_name
FROM users
RIGHT JOIN roles ON users.role_id = roles.id;

# Although not explicitly covered in the lesson, aggregate functions like count can be used with join queries.
# Use count and the appropriate join type to get a list of roles along with the number of users that has the role.
# Hint: You will also need to use group by in the query.