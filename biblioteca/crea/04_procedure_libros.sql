CREATE PROCEDURE InsertarLibros
    @TITULO VARCHAR(30),
    @AUTOR VARCHAR(30),
    @FECHA_EDICION SMALLINT
AS
BEGIN
    IF @FECHA_EDICION BETWEEN 1900 AND 1940
    BEGIN
        INSERT INTO Libros (TITULO, AUTOR, FECHA_EDICION)
        VALUES (@TITULO, @AUTOR, @FECHA_EDICION);

        PRINT 'Libro insertado: ' + @TITULO;
    END
    ELSE
    BEGIN
        PRINT 'Libro rechazado: ' + @TITULO + ' (' + CAST(@FECHA_EDICION AS VARCHAR) + ') - Fecha fuera de rango.';
    END
END;
