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

CREATE TABLE questions
(
id INTEGER AUTO_INCREMENT,
intent TEXT,
question TEXT,
PRIMARY KEY (id)
);

INSERT INTO questions values(1,'question1', 'Que dia de la semana es?');
INSERT INTO questions values(2,'question2', 'Que dia del mes es hoy?');
INSERT INTO questions values(3,'question3', 'Que edad tienes?');
INSERT INTO questions values(4,'game1', 'Cuanto es la suma entre 11 y 15?');
INSERT INTO questions values(5,'game2', 'Si la vocal "a" esta en la posicion 1 y la "u" esta en la 5, que posicion esta la "i"?');

CREATE TABLE expected_results
(
user_id TEXT,
question_id TEXT,
answer TEXT
);

INSERT INTO expected_results values("111122", "question3", "37");

CREATE TABLE results
(
date DATE,
session TEXT,
intent TEXT,
answer TEXT,
score float,
identity_id TEXT
);

