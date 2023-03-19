-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`usuarios` (
  `id` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

CREATE UNIQUE INDEX `email_UNIQUE` ON `mydb`.`usuarios` (`email` ASC);


-- -----------------------------------------------------
-- Table `mydb`.`categorias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`categorias` (
  `id` INT NOT NULL,
  `categoria` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Notas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Notas` (
  `id` INT NOT NULL,
  `id_usuario` INT NOT NULL,
  `titulo` VARCHAR(100) NOT NULL,
  `fecha_de_creacion` DATETIME NULL,
  `fecha_de_modificacion` DATETIME NULL,
  `descripcion` TEXT NOT NULL,
  `id_categoria` INT NOT NULL,
  `eliminar` TINYINT(1) NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `id_usuario de nota x`
    FOREIGN KEY (`id_usuario`)
    REFERENCES `mydb`.`usuarios` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `categoria`
    FOREIGN KEY (`id_categoria`)
    REFERENCES `mydb`.`categorias` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE UNIQUE INDEX `id_usuario_UNIQUE` ON `mydb`.`Notas` (`id` ASC, `id_usuario` ASC);

CREATE INDEX `id_usuario de nota x_idx` ON `mydb`.`Notas` (`id_usuario` ASC);

CREATE INDEX `categoria_idx` ON `mydb`.`Notas` (`id_categoria` ASC);


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `mydb`.`usuarios`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`usuarios` (`id`, `nombre`, `email`) VALUES (1, 'Ana García', 'ana.garcia@email.com');
INSERT INTO `mydb`.`usuarios` (`id`, `nombre`, `email`) VALUES (2, 'Juan Pérez', 'juan.perez@email.com');
INSERT INTO `mydb`.`usuarios` (`id`, `nombre`, `email`) VALUES (3, 'Maria Sanchez', 'maria.sanchez@email.com');
INSERT INTO `mydb`.`usuarios` (`id`, `nombre`, `email`) VALUES (4, 'Carlos Lopez', 'carlos.lopez@email.com');
INSERT INTO `mydb`.`usuarios` (`id`, `nombre`, `email`) VALUES (5, 'Laura Hernandez', ' laura.hernandez@email.com');
INSERT INTO `mydb`.`usuarios` (`id`, `nombre`, `email`) VALUES (6, 'Jose Ramirez', 'jose.ramirez@email.com');
INSERT INTO `mydb`.`usuarios` (`id`, `nombre`, `email`) VALUES (7, 'Sofia Martinez', 'sofia.martinez@email.com');
INSERT INTO `mydb`.`usuarios` (`id`, `nombre`, `email`) VALUES (8, 'Eduardo Castro', 'eduardo.castro@email.com');
INSERT INTO `mydb`.`usuarios` (`id`, `nombre`, `email`) VALUES (9, 'Patricia Gonzalez', 'patricia.gonzalez@email.com');
INSERT INTO `mydb`.`usuarios` (`id`, `nombre`, `email`) VALUES (10, 'Roberto Flores', 'roberto.flores@email.com');

COMMIT;


-- -----------------------------------------------------
-- Data for table `mydb`.`Notas`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`Notas` (`id`, `id_usuario`, `titulo`, `fecha_de_creacion`, `fecha_de_modificacion`, `descripcion`, `id_categoria`, `eliminar`) VALUES (1, 4, 'nota1', '', NULL, DEFAULT, DEFAULT, NULL);
INSERT INTO `mydb`.`Notas` (`id`, `id_usuario`, `titulo`, `fecha_de_creacion`, `fecha_de_modificacion`, `descripcion`, `id_categoria`, `eliminar`) VALUES (2, 5, 'nota2', NULL, NULL, DEFAULT, DEFAULT, NULL);
INSERT INTO `mydb`.`Notas` (`id`, `id_usuario`, `titulo`, `fecha_de_creacion`, `fecha_de_modificacion`, `descripcion`, `id_categoria`, `eliminar`) VALUES (3, 6, 'nota3', NULL, NULL, DEFAULT, DEFAULT, NULL);
INSERT INTO `mydb`.`Notas` (`id`, `id_usuario`, `titulo`, `fecha_de_creacion`, `fecha_de_modificacion`, `descripcion`, `id_categoria`, `eliminar`) VALUES (4, 1, 'nota4', NULL, NULL, DEFAULT, DEFAULT, NULL);
INSERT INTO `mydb`.`Notas` (`id`, `id_usuario`, `titulo`, `fecha_de_creacion`, `fecha_de_modificacion`, `descripcion`, `id_categoria`, `eliminar`) VALUES (5, 2, 'nota5', NULL, NULL, DEFAULT, DEFAULT, NULL);
INSERT INTO `mydb`.`Notas` (`id`, `id_usuario`, `titulo`, `fecha_de_creacion`, `fecha_de_modificacion`, `descripcion`, `id_categoria`, `eliminar`) VALUES (6, 3, 'nota6', NULL, NULL, DEFAULT, DEFAULT, NULL);
INSERT INTO `mydb`.`Notas` (`id`, `id_usuario`, `titulo`, `fecha_de_creacion`, `fecha_de_modificacion`, `descripcion`, `id_categoria`, `eliminar`) VALUES (, , DEFAULT, NULL, NULL, DEFAULT, DEFAULT, NULL);
INSERT INTO `mydb`.`Notas` (`id`, `id_usuario`, `titulo`, `fecha_de_creacion`, `fecha_de_modificacion`, `descripcion`, `id_categoria`, `eliminar`) VALUES (, , DEFAULT, NULL, NULL, DEFAULT, DEFAULT, NULL);
INSERT INTO `mydb`.`Notas` (`id`, `id_usuario`, `titulo`, `fecha_de_creacion`, `fecha_de_modificacion`, `descripcion`, `id_categoria`, `eliminar`) VALUES (, , DEFAULT, NULL, NULL, DEFAULT, DEFAULT, NULL);
INSERT INTO `mydb`.`Notas` (`id`, `id_usuario`, `titulo`, `fecha_de_creacion`, `fecha_de_modificacion`, `descripcion`, `id_categoria`, `eliminar`) VALUES (, , DEFAULT, NULL, NULL, DEFAULT, DEFAULT, NULL);

COMMIT;

