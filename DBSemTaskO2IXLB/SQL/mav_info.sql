CREATE DATABASE mav_info;
USE mav_info;
CREATE TABLE jogositvanyok (
  jogsi_kod INT NOT NULL,
  dizel CHAR(4) NOT NULL,
  villany CHAR(4) NOT NULL,
  PRIMARY KEY (jogsi_kod)
);
CREATE TABLE kalauz (
  kalauz_id INT NOT NULL,
  vezeteknev VARCHAR(20) NOT NULL,
  keresztnev VARCHAR(20) NOT NULL,
  PRIMARY KEY (kalauz_id)
);
CREATE TABLE megallo (
  cim VARCHAR(30) NOT NULL,
  megallonev VARCHAR(20) NOT NULL,
  PRIMARY KEY (megallonev)
);
CREATE TABLE mozdonyvezeto (
  mikor_vezet DATE NOT NULL,
  szuletesi_ido DATE NOT NULL,
  vezeteknev CHAR(30) NOT NULL,
  keresztnev CHAR(30) NOT NULL,
  jogsi_kod INT NOT NULL,
  PRIMARY KEY (mikor_vezet),
  FOREIGN KEY (jogsi_kod) REFERENCES jogositvanyok(jogsi_kod)
);
CREATE TABLE vonat (
  vonat_id CHAR(7) NOT NULL,
  vagon_szam INT NOT NULL,
  gyarto VARCHAR(20) NOT NULL,
  tipus VARCHAR(20) NOT NULL,
  mikor_vezet DATE NOT NULL,
  kalauz_id INT NOT NULL,
  PRIMARY KEY (vonat_id),
  FOREIGN KEY (mikor_vezet) REFERENCES mozdonyvezeto(mikor_vezet),
  FOREIGN KEY (kalauz_id) REFERENCES kalauz(kalauz_id)
);
CREATE TABLE menetrend (
  menetrend_id INT PRIMARY KEY NOT NULL,
  erkezesi_ido VARCHAR(5) NOT NULL,
  indulasi_ido VARCHAR(5) NOT NULL
);
CREATE TABLE utvonal (
  Tavolsag INT NOT NULL,
  KilometerAr INT NOT NULL,
  Vonalszam VARCHAR(30) NOT NULL,
  Menetrend_id INT NOT NULL,
  PRIMARY KEY (Vonalszam),
  FOREIGN KEY (Menetrend_id) REFERENCES menetrend(menetrend_id)
);
CREATE TABLE tartalmazza (
  vonalszam VARCHAR(3) NOT NULL,
  megallonev VARCHAR(20) NOT NULL,
  FOREIGN KEY (vonalszam) REFERENCES utvonal(Vonalszam),
  FOREIGN KEY (megallonev) REFERENCES megallo(megallonev)
);
