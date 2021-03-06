-- MySQL Script generated by MySQL Workbench
-- 01/08/16 23:28:08
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema yii2build
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema yii2build
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `yii2build` DEFAULT CHARACTER SET latin1 COLLATE latin1_general_ci ;
USE `yii2build` ;

-- -----------------------------------------------------
-- Table `yii2build`.`migration`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `yii2build`.`migration` (
  `version` VARCHAR(180) CHARACTER SET 'latin1' COLLATE 'latin1_general_ci' NOT NULL COMMENT '',
  `apply_time` INT(11) NULL DEFAULT NULL COMMENT '',
  PRIMARY KEY (`version`)  COMMENT '')
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
COLLATE = latin1_general_ci;


-- -----------------------------------------------------
-- Table `yii2build`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `yii2build`.`user` (
  `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '',
  `username` VARCHAR(255) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL COMMENT '',
  `auth_key` VARCHAR(32) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL COMMENT '',
  `password_hash` VARCHAR(255) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL COMMENT '',
  `password_reset_token` VARCHAR(255) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NULL DEFAULT NULL COMMENT '',
  `email` VARCHAR(255) CHARACTER SET 'utf8' COLLATE 'utf8_unicode_ci' NOT NULL COMMENT '',
  `status_id` SMALLINT(6) NOT NULL DEFAULT '10' COMMENT '',
  `created_at` DATETIME NOT NULL COMMENT '',
  `updated_at` DATETIME NOT NULL COMMENT '',
  `role_id` SMALLINT(6) NOT NULL DEFAULT '10' COMMENT '',
  `user_type_id` SMALLINT(6) NOT NULL DEFAULT '10' COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '',
  UNIQUE INDEX `username` (`username` ASC)  COMMENT '',
  UNIQUE INDEX `email` (`email` ASC)  COMMENT '',
  UNIQUE INDEX `password_reset_token` (`password_reset_token` ASC)  COMMENT '')
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
