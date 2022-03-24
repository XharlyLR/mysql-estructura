CREATE DATABASE IF NOT EXISTS n1exercici2;

USE n1exercici2;
  
CREATE TABLE Provincia (
  idprovincia INT NOT NULL AUTO_INCREMENT,
  nom VARCHAR(45) NOT NULL,
  PRIMARY KEY(idprovincia));
  
CREATE TABLE Localitat (
  idlocalitat INT NOT NULL AUTO_INCREMENT,
  nom VARCHAR(45) NOT NULL,
  idprovincia INT NOT NULL,
  PRIMARY KEY(idlocalitat),
  FOREIGN KEY (idprovincia) REFERENCES Provincia(idprovincia));

CREATE TABLE Clients (
  idclients INT NOT NULL AUTO_INCREMENT,
  nom VARCHAR(45) NOT NULL,
  cognoms VARCHAR(45) NOT NULL,
  adreça VARCHAR(45) NOT NULL,
  codi_postal VARCHAR(5) NOT NULL,
  telefon VARCHAR(10) NOT NULL,
  idlocalitat INT NOT NULL,
  PRIMARY KEY(idclients),
  FOREIGN KEY (idlocalitat) REFERENCES Localitat(idlocalitat));
  
CREATE TABLE Botiga (
  idbotiga INT NOT NULL AUTO_INCREMENT,
  nom VARCHAR(45) NOT NULL,
  adreça VARCHAR(45) NOT NULL,
  codi_postal VARCHAR(5) NOT NULL,
  telefon VARCHAR(10),
  idlocalitat INT NOT NULL,
  PRIMARY KEY(idbotiga),
  FOREIGN KEY (idlocalitat) REFERENCES Localitat(idlocalitat));
  
CREATE TABLE Empleat (
  idempleat INT NOT NULL AUTO_INCREMENT,
  nom VARCHAR(45) NOT NULL,
  cognoms VARCHAR(45) NOT NULL,
  nif VARCHAR(10) NOT NULL,
  telefon VARCHAR(10),
  cuiner_repartidor VARCHAR(10),
  idbotiga INT,
  PRIMARY KEY(idempleat),
  FOREIGN KEY (idbotiga) REFERENCES Botiga(idbotiga));
  
CREATE TABLE Comanda (
  idcomanda INT NOT NULL AUTO_INCREMENT,
  idclients INT NOT NULL,
  data_comanda DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  domicili BOOLEAN NOT NULL,
  quantitar_productes INT NOT NULL,
  preu_total FLOAT NOT NULL,
  data_lliurament DATETIME,
  idbotiga INT NOT NULL,
  idrepartidor INT,
  PRIMARY KEY(idcomanda),
  FOREIGN KEY (idclients) REFERENCES Clients(idclients),
  FOREIGN KEY (idbotiga) REFERENCES Botiga(idbotiga),
  FOREIGN KEY (idrepartidor) REFERENCES Empleat(idempleat));
  
CREATE TABLE Categoria (
  idcategoria INT NOT NULL AUTO_INCREMENT,
  nom VARCHAR(45) NOT NULL,
  PRIMARY KEY(idcategoria));
  
CREATE TABLE Producte (
  idproducte INT NOT NULL AUTO_INCREMENT,
  nom VARCHAR(45) NOT NULL,
  descripcio VARCHAR(255),
  imatge BLOB,
  preu FLOAT(11),
  idcategoria INT NOT NULL,
  PRIMARY KEY(idproducte),
  FOREIGN KEY (idcategoria) REFERENCES Categoria(idcategoria)); 

CREATE TABLE Comanda_has_Producte (
  idordre INT NOT NULL AUTO_INCREMENT,
  idproducte INT NOT NULL,
  idcomanda INT NOT NULL,
  PRIMARY KEY(idordre),
  FOREIGN KEY (idproducte) REFERENCES Producte(idproducte),
  FOREIGN KEY (idcomanda) REFERENCES Comanda(idcomanda));  
  