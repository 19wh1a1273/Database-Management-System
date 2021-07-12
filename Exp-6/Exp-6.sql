DROP DATABASE IF EXISTS 19WH1A1273;
CREATE SCHEMA 19WH1A1273;
USE 19WH1A1273;
CREATE TABLE Bus(bus_no VARCHAR(20), Sourc VARCHAR(20), destination VARCHAR(20), bcolour VARCHAR(20));
INSERT INTO Bus VALUES('TS121','Chennai','Banglore','yellow');
INSERT INTO Bus VALUES('TS122','Hyderabad','Khammam','red');
INSERT INTO Bus VALUES('TS123','Amaravati','Rajahmandry','blue');
INSERT INTO Bus VALUES('TS124','Kadapa','Guntur','blue');
INSERT INTO Bus VALUES('TS125','Vijayawada','Kurnool','green');
SELECT * FROM Bus;

DELETE FROM Bus B WHERE B.Sourc = 'Hyderabad';
SELECT * FROM Bus;

CREATE TABLE Passenger(P_name VARCHAR(20), P_id INT, Gender VARCHAR(20), age INT, P_destination VARCHAR(20));
INSERT INTO Passenger VALUES('Riyansh', 1276, 'Male', 38, 'Hyderabad');
INSERT INTO Passenger VALUES('Rishabh', 1291, 'Male', 40, 'Guntur');
INSERT INTO Passenger VALUES('Keerthi', 1290, 'Female', 56, 'Hyderabad');
INSERT INTO Passenger VALUES('Tejaswini', 1243, 'Female', 67, 'Hyderabad');
INSERT INTO Passenger VALUES('Revathi', 1364, 'Female', 42, 'Tirupati');
INSERT INTO Passenger VALUES('Aadharsh', 1274, 'Male', 22, 'Amaravati');
INSERT INTO Passenger VALUES('Praneetha', 1323, 'Female', 20, 'Kurnool');
INSERT INTO Passenger VALUES('Anushri', 1234, 'Female', 43, 'Amaravati');
INSERT INTO Passenger VALUES('Raghu', 1284, 'Male', 47, 'Banglore');
INSERT INTO Passenger VALUES("Vaishnavi", 1265, 'Female', 18, 'Banglore');
SELECT * FROM Passenger;

DELETE FROM Passenger P WHERE P.age=50;
SELECT * FROM Passenger;

CREATE TABLE Ticket(T_id INT, T_cost INT, destination VARCHAR(20), seatno VARCHAR(20), P_id INT);
INSERT INTO Ticket VALUES(1211, 240, 'Vizag', 'L12', 1234);
INSERT INTO Ticket VALUES(1211, 290, 'Hyderabad', 'L67', 1276);
INSERT INTO Ticket VALUES(1211, 200, 'Vizag', 'L42', 1291);
INSERT INTO Ticket VALUES(1211, 700, 'Hyderabad', 'L52', 1290);
INSERT INTO Ticket VALUES(1242, 240, 'Hyderabad', 'L53', 1243);
INSERT INTO Ticket VALUES(1242, 570, 'Hyderabad', 'R19', 1235);
INSERT INTO Ticket VALUES(1242, 830, 'Banglore', 'L21', 1238);
INSERT INTO Ticket VALUES(1242, 700, 'Karnataka', 'L17', 1267);
INSERT INTO Ticket VALUES(1215, 100, 'Banglore', 'R23', 1265);
INSERT INTO Ticket VALUES(1215, 100, 'Siddipet', 'R45', 1265);
SELECT * FROM Ticket;

DELETE FROM Ticket T WHERE T_id = 1212;
SELECT * FROM Ticket;

ALTER TABLE Ticket ADD COLUMN seats INT;
SELECT * FROM Ticket;

UPDATE Ticket T SET T.T_cost = T_cost + 10;
SELECT * FROM Ticket;

SELECT DISTINCT P.P_id FROM Passenger P;
SELECT P.P_name FROM Passenger P WHERE P.gender = "male";
SELECT T.T_id, P.P_name FROM Passenger P, Ticket T WHERE T.P_id = P.P_id;
SELECT T.T_id FROM Passenger P, Ticket T WHERE T.T_id = P.P_id and P.P_name LIKE "r%h";
SELECT P.P_name FROM Passenger P WHERE P.age >= 30 AND P.age <= 45;
SELECT P.P_name FROM Passenger P, Ticket T WHERE P.P_name LIKE "A%";
SELECT P.P_name FROM Passenger P ORDER BY P.P_name ASC;
SELECT P.P_id FROM Passenger P  WHERE P.P_id <>ALL(SELECT T.P_id FROM Ticket T);                       -- <> not equal

SELECT P.P_id FROM Passenger P  WHERE P.P_id = ANY(SELECT T.P_id FROM Ticket T);

SELECT P.P_id FROM Passenger P  WHERE P.P_id  IN (SELECT T.P_id FROM Ticket T);
