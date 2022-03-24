CREATE DATABASE IF NOT EXISTS n1exercici1;

USE n1exercici1;

CREATE TABLE Adreça (
  idadreça INT NOT NULL AUTO_INCREMENT,
  carrer VARCHAR(45),
  numero VARCHAR(5),
  pis VARCHAR(10),
  porta VARCHAR(10),
  ciutat VARCHAR(45),
  codi_postal VARCHAR(5),
  PRIMARY KEY(idadreça));
  
CREATE TABLE Proveidor (
  idproveidor INT NOT NULL AUTO_INCREMENT,
  nom VARCHAR(45) NOT NULL,
  telefon VARCHAR(15),
  fax VARCHAR(15),
  nif VARCHAR(15) NOT NULL,
  idadreça INT NOT NULL,
  PRIMARY KEY(idproveidor),
  FOREIGN KEY (idadreça) REFERENCES Adreça(idadreça));
  
CREATE TABLE Empleat (
  idempleat INT NOT NULL AUTO_INCREMENT,
  nom VARCHAR(45) NOT NULL,
  cognom VARCHAR(45) NOT NULL,
  PRIMARY KEY(idempleat));
  
CREATE TABLE Clients (
  idclients INT NOT NULL AUTO_INCREMENT,
  nom VARCHAR(45) NOT NULL,
  cognom VARCHAR(45) NOT NULL,
  telefon VARCHAR(15),
  email VARCHAR(255),
  data_registre DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  idclients_recomanat INT,
  idadreça INT NOT NULL,
  PRIMARY KEY(idclients),
  FOREIGN KEY (idclients_recomanat) REFERENCES Clients(idclients),
  FOREIGN KEY (idadreça) REFERENCES Adreça(idadreça));
  
CREATE TABLE Venda (
  idvenda INT NOT NULL AUTO_INCREMENT,
  idempleat INT NOT NULL,
  idclients INT NOT NULL,
  data_venda DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  factura FLOAT NOT NULL,
  PRIMARY KEY(idvenda),
  FOREIGN KEY (idempleat) REFERENCES Empleat(idempleat),
  FOREIGN KEY (idclients) REFERENCES Clients(idclients));

CREATE TABLE Ulleres (
  idulleres INT NOT NULL AUTO_INCREMENT,
  marca VARCHAR(45) NOT NULL,
  graduacio_vidre_esquerre VARCHAR(5),
  graduacio_vidre_dret VARCHAR(5),
  montura VARCHAR(10) NOT NULL COMMENT 'flotant, pasta o metàl·lica',
  color VARCHAR(45) NOT NULL,
  color_vidre_esquerre VARCHAR(45),
  color_vidre_dret VARCHAR(45),
  preu FLOAT(11),
  idproveidor INT NOT NULL,
  idvenda INT,
  PRIMARY KEY(idulleres),
  FOREIGN KEY (idproveidor) REFERENCES Proveidor(idproveidor),
  FOREIGN KEY (idvenda) REFERENCES Venda(idvenda));
