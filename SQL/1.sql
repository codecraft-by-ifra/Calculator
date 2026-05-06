DROP TABLE Employe;
create table Employe(
	Emp_Id SERIAL PRIMARY KEY,
	Roll_No INT,
	Name VARCHAR(50),
	Class VARCHAR(20),
	Marks NUMERIC(10,2),
	Status VARCHAR
);
INSERT INTO Employe (Roll_No, Name, Class, Marks, Status)
	VALUES
	(22, 'ira', 'bscs', 526, 'selected'),
	(33, 'fra', 'bs-eng', 476, 'selected'),
	(44, 'zara', 'bs-math', 536, 'selected'),
	(55, 'nimra', 'bscs', 222, 'not selected');

SELECT * FROM Employe;