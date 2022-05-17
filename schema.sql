USE td;
CREATE TABLE user
(
id TEXT,
name TEXT
);
INSERT INTO user values('hola@hola.com','Carolina Moraga');
INSERT INTO user values('luis@uca.es','Luis Acuna');
INSERT INTO user values('thamy@uca.es','Thamyres Choji');


CREATE TABLE questions
(
id INTEGER AUTO_INCREMENT,
intent TEXT,
question TEXT,
PRIMARY KEY (id)
);

INSERT INTO questions values(1,'question1', '¿En qué podemos ayudarte?');
INSERT INTO questions values(2,'question2', 'Que dia del mes es hoy?');
INSERT INTO questions values(3,'question3', 'Que edad tienes?');
INSERT INTO questions values(4,'game1', 'Cuanto es la suma entre 11 y 15?');
INSERT INTO questions values(5,'game2', 'Si la vocal "a" esta en la posicion 1 y la "u" esta en la 5, que posicion esta la "i"?');

CREATE TABLE expected_results
(
user_id TEXT,
intent TEXT,
answer TEXT
);


INSERT INTO expected_results values("111122", "question3", "38");
INSERT INTO expected_results values("123", "question3", "36");

CREATE TABLE results
(
date DATE,
identity_id TEXT,
session TEXT,
answer TEXT,
score float
);

