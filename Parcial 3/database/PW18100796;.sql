CREATE DATABASE PW18100796;

USE PW18100796;

CREATE TABLE Inicio(
MUsuario varchar(25),
Passsword varchar(25),
PRIMARY KEY(MUsuario)
);

INSERT INTO Inicio(MUsuario,Passsword) VALUES
('Kevin Mendoza', 'kevin1203');

CREATE TABLE Form(
Name varchar(30),
Usuario varchar(30),
Email varchar(30),
Passsword varchar(30),
FOREIGN KEY(Usuario) REFERENCES Inicio(MUsuario)
);

INSERT INTO Form(Name,Usuario,Email,Passsword) 
VALUES('Kevin Mendoza Gonzalez','Kevin Mendoza','kiscmg12@gmail.com','kevin1203');