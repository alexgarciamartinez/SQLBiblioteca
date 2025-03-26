CREATE TABLE Prestamos (
	ID SMALLINT IDENTITY(1,1) PRIMARY KEY,
	socio_FK SMALLINT NOT NULL,
	libro_FK SMALLINT NOT NULL,
	fecha_retiro DATE NOT NULL DEFAULT GETDATE(),
	fecha_devuelto DATE NULL,
	FOREIGN KEY (socio_FK) REFERENCES Socios(ID),
	FOREIGN KEY (libro_FK) REFERENCES Libros(ID)
)