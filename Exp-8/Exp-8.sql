USE 19wh1a1273;
CREATE TABLE Passengers(pid INT, name VARCHAR(50) ,age INT,gender CHAR,phn BIGINT, address VARCHAR(20), price INT, bid INT);

CREATE TRIGGER Amount
BEFORE INSERT
ON Passengers
FOR EACH ROW 
SET new.price = 500;

INSERT INTO Passengers  VALUES(1234, 'Revanth', 33, 'M', 9094445667, 'Hyderabad', 456, 10);
INSERT INTO Passengers VALUES(2345, 'Sowmya', 28, 'F',9933336667, 'Hyderabad', 252, 20);
INSERT INTO Passengers VALUES(3456, 'Aadi', 21, 'M', 9988337726,'Khammam',478, 30);
INSERT INTO Passengers VALUES(4567, 'Rakesh', 36, 'M',9966667759, 'Vijayawada',348, 40);
SELECT * FROM Passengers;