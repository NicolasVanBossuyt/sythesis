-- SQL data types : https://www.w3schools.com/sql/sql_datatypes.asp

DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS good;

CREATE TABLE user
(
  uid INT,
  uname TINYTEXT NOT NULL,
  upass TINYTEXT NOT NULL,

  PRIMARY KEY (uid),
);

CREATE TABLE good
(
  gid INT AUTO_INCREMENT,
  gname TINYTEXT NOT NULL,
  gprice INT NOT NULL,
  gowner INT,

  FOREIGN KEY (gowner) REFERENCES user(uid)
);

INSERT INTO user VALUES
(0, 'jean', '1234'),
(1, 'paul', '0000'),
(2, 'jack', 'azer'),
(3, 'alex', 'alex'),
(4, 'karl', 'marx');

INSERT INTO good (gname, gprice, gowner) VALUES
('voiture', 54, 1),
('pomme', 54, 1),
('poire', 54, 1),
('maison', 54, 1),
('télévison', 54, 1),

('ordinateur', 54, 3),
('serveur sql', 54, 3),
('compte minecraft', 54, 3),
('maison', 54, 3),
('télévison', 54, 3),

('voiture', 54, 2),
('pomme', 54, 2),
('poire', 54, 2),
('maison', 54, 2),
('télévison', 54, 2),

('L\'amour du peuple', 99999999, 4);


-- Savoir tour les objets de Paul.
SELECT gname FROM good, user
WHERE good.gowner = user.uid AND uname = 'paul';

-- Calculer le patrimoine de paul
SELECT SUM(gprice) FROM good, user
WHERE good.gowner = user.uid AND uname = 'paul';

-- Tout les utilisateur ayant un nome commencent par 'J'
SELECT * FROM user
WHERE uname LIKE 'j%'


SELECT * FROM user;
SELECT * FROM good;
