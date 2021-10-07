DROP DATABASE `mydb`;
CREATE DATABASE IF NOT EXISTS `mydb`;
USE `mydb`;
CREATE TABLE IF NOT EXISTS `mydb`.`Distributor` (
	`idDistributor` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `Nama_distributor` VARCHAR(45) NULL
)
ENGINE = InnoDB;
CREATE TABLE IF NOT EXISTS `mydb`.`Master_Barang`(
	`id_barang` INT(3) NOT NULL AUTO_INCREMENT,
	`Nama_barang` VARCHAR(25) null ,
    `Harga_satuan` INT(3) null, 
    `Pajak` INT(3) null , 
    `Diskon` INT(3) null, 
    `Distributor_id` INT(11) ,
    PRIMARY KEY(`id_barang` ,`Distributor_id`),
    FOREIGN KEY (`Distributor_id`) REFERENCES `mydb`.`Distributor`(`idDistributor`)
    ) 
ENGINE = InnoDB;
CREATE TABLE IF NOT EXISTS `mydb`.`trans_pembelian`(
	`Pembeli_idPembeli` INT NOT NULL  , 
    `Master_barang_id_barang` INT(3) NOT NULL ,
    `tgl_pembelian` DATE NULL,
    `jumlah_beli` INT(3) NULL
)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `mydb`.`Pembeli`(
	`idPem` INT NOT NULL AUTO_INCREMENT PRIMARY KEY , 
    `Nama` VARCHAR(45) NULL,
    `Alamat` VARCHAR(45) NULL,
    `No_telp` VARCHAR(45) NULL,
    `Tgl_lahir` DATE NULL
)
ENGINE = InnoDB;
