EXEC InsertarPrestamo 1,7
EXEC InsertarPrestamo 2,9
EXEC InsertarPrestamo 3,22
EXEC InsertarPrestamo 4,63

/*Inserts especiales para el aviso de cortesía*/
INSERT INTO Prestamos(socio_FK, libro_FK, fecha_retiro) VALUES
(10, 10, DATEADD(DAY, -29, GETDATE())),
(11, 11, DATEADD(DAY, -29, GETDATE())),
(12, 12, DATEADD(DAY, -29, GETDATE()))