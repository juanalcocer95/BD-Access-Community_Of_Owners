--
-- ACCESS BD
--
--
-- Base de datos: `communitydb`
--

CREATE TABLE IF NOT EXISTS Propietario (
DNI TEXT(9) PRIMARY KEY,
Nombre TEXT(50) NOT NULL,
Tel TEXT(9) ,
Correo TEXT(50)
);

CREATE TABLE IF NOT EXISTS Piso (
Nº_puerta TEXT(9) PRIMARY KEY,
Planta TEXT(15),
Tamaño INTEGER
);

CREATE TABLE IF NOT EXISTS Derrama (
Cod_de AUTOINCREMENT PRIMARY KEY,
Importe CURRENCY NOT NULL,
Comcepto TEXT(255),
Fecha DATE
);

CREATE TABLE IF NOT EXISTS Cuota (
Cod_cu AUTOINCREMENT PRIMARY KEY,
Importe CURRENCY NOT NULL,
Año INTEGER,
Periodo TEXT(20),
Fe_ini DATE,
Fe_fin DATE
);

CREATE TABLE IF NOT EXISTS Proveedor (
CIF TEXT(9) PRIMARY KEY,
Tel TEXT(9),
Nom_emp TEXT(100)
);

CREATE TABLE IF NOT EXISTS Pago (
Cod_pa AUTOINCREMENT PRIMARY KEY,
Importe CURRENCY NOT NULL,
Fecha DATE,
Comcepto TEXT(255),
CIF TEXT(9) NOT NULL,
CONSTRAINT ClaveAjena_pago FOREIGN KEY (CIF) REFERENCES
Proveedor
);

CREATE TABLE IF NOT EXISTS Posee (
Nº_puerta TEXT(9) NOT NULL,
DNI TEXT(9) NOT NULL,
Fe_ini DATE,
Fe_fin DATE,
CONSTRAINT ClaveAjena_dni_posee FOREIGN KEY (DNI) REFERENCES
Propietario,
CONSTRAINT ClaveAjena_puerta_posee FOREIGN KEY (Nº_puerta) REFERENCES
Puerta,
CONSTRAINT clave_primaria_posee PRIMARY KEY (Nº_puerta,DNI,Fe_ini)
);

CREATE TABLE IF NOT EXISTS Paga (
Nº_puerta TEXT(9),
Cod_de INTEGER,
Fecha DATE,
CONSTRAINT ClaveAjena_puerta_paga  FOREIGN KEY (Nº_puerta) REFERENCES
Puerta,
CONSTRAINT ClaveAjena_derrama FOREIGN KEY (Cod_de) REFERENCES
Derrama,
CONSTRAINT clave_primaria_paga PRIMARY KEY (Cod_de,Nº_puerta)
);

CREATE TABLE IF NOT EXISTS Satisface (
Nº_puerta TEXT(9),
Cod_cu INTEGER,
Fecha DATE,
CONSTRAINT ClaveAjena_puerta_satisface FOREIGN KEY (Nº_puerta) REFERENCES
Puerta,
CONSTRAINT ClaveAjena_cuota FOREIGN KEY (Cod_cu) REFERENCES
Cuota,
CONSTRAINT clave_primaria_satisface PRIMARY KEY (Cod_cu,Nº_puerta)
);