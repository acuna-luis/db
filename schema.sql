GRANT ALL PRIVILEGES ON mydb.* TO 'user'@'%' IDENTIFIED BY 'seniority';
GRANT ALL PRIVILEGES ON mydb.* TO 'user'@'localhost' IDENTIFIED BY 'seniority';
USE seniority;
CREATE TABLE user
(
id INTEGER AUTO_INCREMENT,
name TEXT,
PRIMARY KEY (id)
);
INSERT INTO user values(111122,'Luis Acuña');
