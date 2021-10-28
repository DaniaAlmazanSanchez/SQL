CREATE DATABASE TestJoin;

USE TestJoin;

CREATE TABLE Departamentos
(
    Id int,
    Nombre varchar(20)
);

CREATE TABLE Empleados
(
    Nombre varchar(20),
    DepartamentoId int
);

INSERT INTO Departamentos VALUES(31, 'Sales');
INSERT INTO Departamentos VALUES(33, 'Engineering');
INSERT INTO Departamentos VALUES(34, 'Clerical');
INSERT INTO Departamentos VALUES(35, 'Marketing');

INSERT INTO Empleados VALUES('Rafferty', 31);
INSERT INTO Empleados VALUES('Jones', 33);
INSERT INTO Empleados VALUES('Heisenberg', 33);
INSERT INTO Empleados VALUES('Robinson', 34);
INSERT INTO Empleados VALUES('Smith', 34);
INSERT INTO Empleados VALUES('Williams', NULL);

/*inner join fuciona los campos que se parecen*/
SELECT * FROM departamentos INNER JOIN empleados ON departamentos.id=empleados.DepartamentoId;
 SELECT *FROM departamentos D INNER JOIN empleados E ON D.Id=E.departamentoId;
 
 /*INNER Esta cláusula busca coincidencias entre 2 tabla*/
 SELECT Id,E.Nombre,D.Nombre AS "Nombre departamento" FROM empleados E INNER JOIN departamentos D ON D.Id=E.departamentoId;
 
 /*LEFT muestra todas las filas de la tabla izquierda*/
  SELECT Id,E.Nombre,D.Nombre AS "Nombre departamento" FROM empleados E LEFT JOIN departamentos D ON D.Id=E.departamentoId;
 
 /*RIGHTmuestra todas las filas de la tabla derecha */
  SELECT Id,E.Nombre,D.Nombre AS "Nombre departamento" FROM empleados E RIGHT JOIN departamentos D ON D.Id=E.departamentoId;
 
 /*FULL muestra todas las filas de las tablas*/
  /*SELECT Id,E.Nombre,D.Nombre AS "Nombre departamento" FROM empleados E FULL JOIN departamentos D ON D.Id=E.departamentoId;
 */
 SELECT Id,E.Nombre,D.Nombre AS "Nombre departamento" ,count(D.Nombre) AS "NUMERO DE EPMLEADO" FROM empleados E INNER JOIN departamentos D ON D.Id=E.departamentoId GROUP by DepartamentoId  ;
 
 