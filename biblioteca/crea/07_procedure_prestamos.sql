CREATE PROCEDURE InsertarPrestamo
	@NUMSOCIO SMALLINT,
	@NUMLIBRO SMALLINT
AS
BEGIN
	IF NOT EXISTS (SELECT 1 FROM Prestamos WHERE libro_FK = @NUMLIBRO AND fecha_devuelto IS NULL)
	BEGIN
		INSERT INTO Prestamos(socio_FK, libro_FK)
		VALUES (@NUMSOCIO, @NUMLIBRO)
	END
	ELSE
	BEGIN
		PRINT 'Este libro ya está prestado'
	END
END;