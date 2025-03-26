SELECT TITULO
FROM Libros
LEFT JOIN Prestamos P
ON P.libro_FK = Libros.ID
WHERE P.fecha_devuelto IS NOT NULL