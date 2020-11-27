USE mav_info;

INSERT INTO jogositvanyok (jogsi_kod, dizel, villany) VALUES (1,'IGEN','IGEN');
INSERT INTO jogositvanyok VALUES (2, 'IGEN', 'NEM');
INSERT INTO jogositvanyok VALUES (3, 'NEM','IGEN');
INSERT INTO jogositvanyok VALUES (4, 'IGEN','IGEN');

INSERT INTO `mav_info`.`mozdonyvezeto` (`mikor_vezet`, `szuletesi_ido`, `vezeteknev`, `keresztnev`, `jogsi_kod`) 
VALUES ('2020/11/18', '1990/05/03', 'Al Hag', 'Amin', '1');
INSERT INTO `mav_info`.`mozdonyvezeto` (`mikor_vezet`, `szuletesi_ido`, `vezeteknev`, `keresztnev`, `jogsi_kod`) 
VALUES ('2020/11/19', '1987/11/09', 'Schuldenfrei', 'Gustav', '2');
INSERT INTO `mav_info`.`mozdonyvezeto` (`mikor_vezet`, `szuletesi_ido`, `vezeteknev`, `keresztnev`, `jogsi_kod`) 
VALUES ('2020/11/20', '1972/03/02', 'Smirnov', 'Vladimir', '3');
INSERT INTO `mav_info`.`mozdonyvezeto` (`mikor_vezet`, `szuletesi_ido`, `vezeteknev`, `keresztnev`, `jogsi_kod`) 
VALUES ('2020/11/21', '1979/06/17', 'Kovalainen', 'Erik', '4');

INSERT INTO `mav_info`.`megallo` (`cim`, `megallonev`) 
VALUES ('Kossuth ut 30', 'Hidasnemeti');
INSERT INTO `mav_info`.`megallo` (`cim`, `megallonev`) 
VALUES ('Stanicnei Namestie 1', 'Kosice');
INSERT INTO `mav_info`.`megallo` (`cim`, `megallonev`) 
VALUES ('Kando Kalman ut 4', 'Miskolc Tiszai');
INSERT INTO `mav_info`.`megallo` (`cim`, `megallonev`) 
VALUES ('Vasarter utca 30', 'Szikszo');
INSERT INTO `mav_info`.`megallo` (`cim`, `megallonev`) 
VALUES ('fo ut 3', 'Forro Encs');
INSERT INTO `mav_info`.`megallo` (`cim`, `megallonev`) 
VALUES ('Moszkvai ut 15', 'Budapest Kelelti');
INSERT INTO `mav_info`.`megallo` (`cim`, `megallonev`) 
VALUES ('Pesti ut 84', 'Hatvan');
INSERT INTO `mav_info`.`megallo` (`cim`, `megallonev`) 
VALUES ('Egri ut 54', 'Fuzesabony');
INSERT INTO `mav_info`.`megallo` (`cim`, `megallonev`) 
VALUES ('Allomas ut 4', 'Malyi');
INSERT INTO `mav_info`.`megallo` (`cim`, `megallonev`) 
VALUES ('Fonoda utca 32', 'Miskolc Gomori');
INSERT INTO `mav_info`.`megallo` (`cim`, `megallonev`) 
VALUES ('Peteri ut 3', 'Kazincbarcika');
INSERT INTO `mav_info`.`megallo` (`cim`, `megallonev`) 
VALUES ('Petofi ut 12', 'Ozd');

INSERT INTO kalauz (kalauz_id, vezeteknev, keresztnev) VALUES (101,'Hatake','Kakashi');
INSERT INTO kalauz VALUES (102,'Marchand','Jean Pierre');
INSERT INTO kalauz VALUES (103,'Da Costa','Joao');
INSERT INTO kalauz VALUES (104,'Nguen','Bayoden');

INSERT INTO `mav_info`.`menetrend` (`menetrend_id`, `erkezesi_ido`, `indulasi_ido`) VALUES ('1', '7:30', '11:15');
INSERT INTO `mav_info`.`menetrend` (`menetrend_id`, `erkezesi_ido`, `indulasi_ido`) VALUES ('2', '10:25', '12:45');
INSERT INTO `mav_info`.`menetrend` (`menetrend_id`, `erkezesi_ido`, `indulasi_ido`) VALUES ('3', '9:30', '10:15');
INSERT INTO `mav_info`.`menetrend` (`menetrend_id`, `erkezesi_ido`, `indulasi_ido`) VALUES ('4', '12:44', '14:02');

INSERT INTO `mav_info`.`vonat` (`vonat_id`, `vagon_szam`, `gyarto`, `tipus`, `mikor_vezet`, `kalauz_id`)
 VALUES ('HU101OZ', '12', 'FLIRT', 'dizel', '2020/11/18', '101');
INSERT INTO `mav_info`.`vonat` (`vonat_id`, `vagon_szam`, `gyarto`, `tipus`, `mikor_vezet`, `kalauz_id`) 
VALUES ('HU202KB', '6', 'Bzmot', 'dizel', '2020/11/19', '102');
INSERT INTO `mav_info`.`vonat` (`vonat_id`, `vagon_szam`, `gyarto`, `tipus`, `mikor_vezet`, `kalauz_id`) 
VALUES ('HU303BP', '8', 'TAURUS', 'villany', '2020/11/20', '103');
INSERT INTO `mav_info`.`vonat` (`vonat_id`, `vagon_szam`, `gyarto`, `tipus`, `mikor_vezet`, `kalauz_id`) 
VALUES ('SK404KS', '10', 'BDVmoz', 'villany', '2020/11/21', '104');

INSERT INTO `mav_info`.`utvonal` (`Tavolsag`, `KilometerAr`, `Vonalszam`, `Menetrend_id`)
 VALUES ('80', '1300', 'ECR', '1');
INSERT INTO `mav_info`.`utvonal` (`Tavolsag`, `KilometerAr`, `Vonalszam`, `Menetrend_id`) 
VALUES ('215', '2500', 'GYF', '2');
INSERT INTO `mav_info`.`utvonal` (`Tavolsag`, `KilometerAr`, `Vonalszam`, `Menetrend_id`) 
VALUES ('70', '30000', 'TEO', '3');
INSERT INTO `mav_info`.`utvonal` (`Tavolsag`, `KilometerAr`, `Vonalszam`, `Menetrend_id`) 
VALUES ('80', '800', 'SZE', '4');

INSERT INTO tartalmazza (vonalszam,megallonev)VALUES('ECR','Kosice');
INSERT INTO tartalmazza VALUES ('ECR','Forro Encs');
INSERT INTO tartalmazza VALUES ('ECR','Miskolc Tiszai');
INSERT INTO tartalmazza VALUES ('ECR','Budapest kelelti');
INSERT INTO tartalmazza VALUES ('GYF','Budapest kelelti');
INSERT INTO tartalmazza VALUES ('GYF','Hatvan');
INSERT INTO tartalmazza VALUES ('GYF','Fuzesabony');
INSERT INTO tartalmazza VALUES ('GYF','Malyi');
INSERT INTO tartalmazza VALUES ('GYF','Miskolc Tiszai');
INSERT INTO tartalmazza VALUES ('TEO','Miskolc Tiszai');
INSERT INTO tartalmazza VALUES ('TEO','Miskolc Gomori');
INSERT INTO tartalmazza VALUES ('TEO','Kazincbarcika');
INSERT INTO tartalmazza VALUES ('TEO','Ozd');
INSERT INTO tartalmazza VALUES ('SZE','Kosice');
INSERT INTO tartalmazza VALUES ('SZE','Hidasnemeti');
INSERT INTO tartalmazza VALUES ('SZE','Forro Encs');
INSERT INTO tartalmazza VALUES ('SZE','Szikszo');
INSERT INTO tartalmazza VALUES ('SZE','Miskolc tiszai');


