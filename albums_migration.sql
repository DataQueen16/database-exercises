USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE IF NOT EXISTS albums(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  artist VARCHAR(128),
  name VARCHAR(128),
  release_date INT UNSIGNED,
  sales DECIMAL(6, 2),
  genre VARCHAR(128),
  PRIMARY KEY (id)
);

#   Test