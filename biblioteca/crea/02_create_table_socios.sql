CREATE TABLE Socios (
	ID	SMALLINT IDENTITY(1,1) PRIMARY KEY,
	NOMBRE	VARCHAR(30) NOT NULL,
	DIRECCION VARCHAR(30) NOT NULL,
	CORREO VARCHAR(100) UNIQUE NOT NULL,
	FECHA_SOCIO	DATE NOT NULL DEFAULT GETDATE()
)