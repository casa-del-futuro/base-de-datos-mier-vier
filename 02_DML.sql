/********** DDL ***********/
# crear base de datos
DROP DATABASE IF EXISTS casa_del_futuro;

CREATE DATABASE casa_del_futuro;
USE casa_del_futuro;

# crear tabla usuario
CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    dni INT NOT NULL,
    fecha_de_nacimiento DATE NOT NULL,
	email VARCHAR(50) NOT NULL,
    contrasenia VARCHAR(50) NOT NULL
);

CREATE TABLE rol(
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
	rol VARCHAR(50) NOT NULL    
);

CREATE TABLE domicilio (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
  provincia VARCHAR(20) NOT NULL,
  localidad VARCHAR(20) NOT NULL,
  calle VARCHAR(40) NOT NULL,
  altura VARCHAR(10) NOT NULL,
  piso VARCHAR(3) NULL
);

ALTER TABLE domicilio
MODIFY altura INT;

/********** DML ***********/
# Añado registro tabla rol
INSERT INTO rol(id, rol)
VALUES (1, "admin");
INSERT INTO rol( rol)
VALUES ("editor");
INSERT INTO rol( rol)
VALUES ("usuario");
# Añado registro tabla domicilio
INSERT INTO domicilio 
VALUES (1,"Mendoza","Godoy Cruz","Rafael Cubillos", 2291, NULL);
# Añado registro tabla usuario
INSERT INTO usuario 
VALUES (DEFAULT, "Leandro", "Videla", 274578123, "1980-07-11","lean@gmail.com","contraseña",6,1);
