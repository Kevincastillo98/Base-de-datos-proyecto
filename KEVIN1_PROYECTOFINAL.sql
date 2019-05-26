DROP DATABASE IF EXISTS  KEVINCASTILLO_PROYECTOFINAL;

CREATE DATABASE KEVINCASTILLO_PROYECTOFINAL;

USE KEVINCASTILLO_PROYECTOFINAL;


CREATE TABLE empleado (
    id_empleado INT(3)          NOT NULL,
    nombre      VARCHAR(10),  
    apellido    VARCHAR(15),
    telefono    VARCHAR(10),
    correo      VARCHAR(20),
    PRIMARY KEY (id_empleado)                 
);


CREATE TABLE cliente (
    id_cliente    CHAR(4)         NOT NULL,
    nombre        VARCHAR(10),
    apellido      VARCHAR(15),
    calle         VARCHAR(15),
    colonia       VARCHAR(15),
    numero_int    VARCHAR(5),
    numero_ext    VARCHAR(5),
    codigoPostal  INT(5),
    telefono      VARCHAR(10),
    correo        VARCHAR(20),
    PRIMARY KEY  (id_cliente)
);


CREATE TABLE servicio (
   id_orden      INT(5)         NOT NULL,
   id_cliente    CHAR(4)        NOT NULL,
   id_empleado   INT(3)         NOT NULL,
   descripcion   TEXT,
   dia_agendado  DATE,
   hora_agendada TIME, 
   KEY         (id_empleado),
   KEY         (id_cliente),
   FOREIGN KEY (id_empleado)  REFERENCES empleado (id_empleado) ON DELETE CASCADE,
   FOREIGN KEY (id_cliente)   REFERENCES cliente  (id_cliente)  ON DELETE CASCADE,
   PRIMARY KEY (id_empleado, id_cliente)  
);


INSERT INTO empleado VALUES(3,'José','Ramirez','5543120312','joser@gmail.com');
