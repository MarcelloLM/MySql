CREATE DATABASE IF NOT EXISTS CONDOMINIO;
USE CONDOMINIO;
CREATE TABLE Edificio (
CodEdificios int NOT NULL,
endereco varchar (50) NOT NULL,
primary key (CodEdificios)
);
CREATE TABLE Apartamento (
CodEdificio Int NOT NULL,
NumeroApartamento Int NOT NULL,
AreaApartamento double NOT NULL,
primary key (NumeroApartamento),
constraint FKApart foreign key (CodEdificio) references Edificio(CodEdificios)
);
INSERT INTO Edificio(Endereco) values("Rua 3");
INSERT INTO Apartamento(CodEdificio, NumeroApartamento, AreaApartamento) values(1, 69, 545);
SELECT * FROM edificio; 
