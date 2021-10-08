DROP DATABASE IF EXISTS `mydb`;
CREATE DATABASE IF NOT EXISTS `mydb`;
USE `mydb`;
CREATE TABLE IF NOT EXISTS `Distributor`(
`idDistributor` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
`Nama_distributor` VARCHAR(45) NULL
) 
ENGINE= InnoDB;
CREATE TABLE IF NOT EXISTS `Master_barang`(
`id_barang` INT(3) NOT NULL AUTO_INCREMENT PRIMARY KEY,
`Nama_barang` VARCHAR(25) NULL , `Harga_satuan` INT(8) NULL,
`Pajak` INT(3) NULL ,`Diskon` INT(3) NULL , `Distributor_idDistributor` INT UNIQUE NOT NULL ,
CONSTRAINT `fk_Distirbutor`FOREIGN KEY (`Distributor_idDistributor`) REFERENCES `mydb`.`Distributor`(`idDistributor`)
)
ENGINE = InnoDB;
CREATE TABLE IF NOT EXISTS `Pembeli`(
`idPembeli` INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
`Nama` VARCHAR(45) NULL ,
 `Alamat` VARCHAR(45) NULL , 
 `No_telp` VARCHAR(45) NULL ,
 `Tgl_lahir` DATE 
 )
 
 ENGINE = InnoDB;
 CREATE TABLE IF NOT EXISTS `trans_pembelian`(
 `Pembeli_idPembeli` INT PRIMARY KEY NOT NULL AUTO_INCREMENT , 
 `Master_barang_id_barang` INT(3) UNIQUE NOT NULL  ,
 `tgl_pembelian` DATE NULL , 
 `jumlah_beli` INT(3) NULL,
  CONSTRAINT `fk_IdPembeli`
 FOREIGN KEY (`Pembeli_idPembeli`) REFERENCES `mydb`.`Pembeli` (`idPembeli`),
CONSTRAINT `fk_MasterBarang`
 FOREIGN KEY(`Master_barang_id_barang`) REFERENCES `mydb`.`Master_barang` (`id_barang`)
 )
 ENGINE = InnoDB;
 

 
