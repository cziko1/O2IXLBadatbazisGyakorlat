USE mav_info;

UPDATE `jogositvanyok` SET `dizel` = 'igen' WHERE jogsi_kod=3;
UPDATE `jogositvanyok` SET `villany` = 'NEM' WHERE jogsi_kod=2;

UPDATE `kalauz` SET `keresztnev` = 'Janos', `vezeteknev` = 'Kereskedo' WHERE kalauz_id=102;

DELETE FROM `megallo` WHERE `megallonev`= 'Nyek';

ALTER TABLE `vonat` ADD `kibocsatas` INT(5);

UPDATE `menetrend` SET `erkezesi_ido`='10:30' WHERE `menetrend_id`= '3';

UPDATE `megallo` SET `cim`= 'Horty Miklos ut 4' WHERE `megallonev`='Malyi'; 

UPDATE `utvonal` SET `KilometerAr` = (13*1.25) WHERE `vonalszam`= 'ECR';
