/*renombrar tabla*/
ALTER TABLE USUARIOS rename TO users;

ALTER TABLE usuarios DROP edad;

/*cambiar el nombre nombre de una columna*/
ALTER TABLE usuarios CHANGE direccion dir VARCHAR(50);
ALTER TABLE `blog`.`usuarios` CHANGE COLUMN `direccion` `direccion` VARCHAR(100) NULL DEFAULT NULL ;

/*Agregar columnas*/
ALTER TABLE usuarios ADD edad INT NOT NULL;

/*Borrar columna*/
ALTER TABLE usuarios DROP edad;
