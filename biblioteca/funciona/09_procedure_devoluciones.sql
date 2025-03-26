CREATE PROCEDURE DevolverLibro
	@NUMSOCIO SMALLINT,
	@NUMLIBRO SMALLINT
AS
BEGIN
	IF EXISTS (SELECT 1 FROM Prestamos WHERE socio_FK = @NUMSOCIO AND libro_FK = @NUMLIBRO AND fecha_devuelto IS NULL)
	BEGIN
		UPDATE Prestamos
		SET fecha_devuelto = (GETDATE())
		WHERE socio_FK = @NUMSOCIO AND libro_FK = @NUMLIBRO
	END
	ELSE
	BEGIN
		PRINT 'Error al devolver el libro'
	END
END