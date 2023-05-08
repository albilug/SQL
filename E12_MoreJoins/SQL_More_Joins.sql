-- CREO TABELLE BELLE
CREATE TABLE unions.rider(
id integer primary key auto_increment,
name varchar(255) not null,
surname varchar(255) not null,
username varchar(255) not null,
premium_drive boolean
);

CREATE TABLE unions.trips (
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  car VARCHAR(255),
  id_rider INTEGER,
  passenger_name VARCHAR(255) NOT NULL,
  FOREIGN KEY (id_rider) REFERENCES rider(id)
);

-- INSERISCO VALORI ORI
INSERT INTO unions.rider(name, surname, username, premium_drive)
VALUES
('Gigi', 'Dalessi', 'GiDalex', true),
('Mirko', 'Motosecchia', 'Mik2004', false),
('barbone', 'volante', 'BarboSlang', false);

INSERT INTO unions.rider(name, surname, username)
VALUES
('chicco', 'Spillo', 'ChiccoESpillo')

INSERT INTO unions.trips(car, id_rider, passenger_name) VALUES
('corolla', 1, 'Bob'),
('giulia', 2, 'Tom'),
('clio', 3, 'Babbo Natale');

INSERT INTO unions.trips(car, id_rider, passenger_name) VALUES
('audiona', 1, 'Tom'),
('corollina', 1, 'Carla'),
('Jipponepazzo', 2, 'Mickey Mouse');

INSERT INTO unions.trips(car, passenger_name) VALUES
('fiat panda extinction survivor', 'xi Jin Pin');

-- GUARDO TUTTO DI BRUTTO
SELECT * FROM unions.trips;
SELECT * FROM unions.rider;

-- LEFT & RIGHT JOIN
SELECT * FROM unions.rider
LEFT JOIN unions.trips
ON rider.id = trips.id_rider;

SELECT * FROM unions.rider
RIGHT JOIN unions.trips
ON rider.id = trips.id_rider;

-- INNER JOIN
SELECT * FROM unions.rider
JOIN unions.trips
ON rider.id = trips.id_rider;

-- LEFT & RIGHT WHERE ... IS NULL
SELECT * FROM unions.rider
LEFT JOIN unions.trips
ON rider.id = trips.id_rider
WHERE trips.id_rider IS NULL; 

SELECT * FROM unions.rider
RIGHT JOIN unions.trips
ON rider.id = trips.id_rider
WHERE trips.id_rider IS NULL;

-- FULL OUTER JOIN
SELECT * FROM unions.rider
LEFT JOIN unions.trips
ON rider.id = trips.id_rider
UNION
SELECT * FROM unions.rider
RIGHT JOIN unions.trips ON rider.id = trips.id_rider;

-- FULL OUTER JOIN WHERE ... IS NULL
SELECT * FROM unions.rider
LEFT JOIN unions.trips
ON rider.id = trips.id_rider
WHERE trips.id_rider IS NULL
UNION
SELECT * FROM unions.rider
RIGHT JOIN unions.trips
ON rider.id = trips.id_rider
WHERE rider.id IS NULL;