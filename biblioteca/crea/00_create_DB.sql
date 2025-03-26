CREATE DATABASE Biblioteca
ON 
(
	NAME = Biblioteca_Datos,  
    FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Biblioteca.mdf', 
	SIZE = 3MB,
	MAXSIZE = UNLIMITED,
	FILEGROWTH = 1MB
)
LOG ON
(
	NAME = Biblioteca_Log,  
    FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Biblioteca.ldf',
	SIZE = 3MB,
	MAXSIZE = UNLIMITED,
	FILEGROWTH = 1MB
);