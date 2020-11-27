USE mav_info;

SELECT avg(KilometerAr) FROM utvonal;

SELECT megallonev FROM megallo WHERE cim like 'fo ut 3';

SELECT vezeteknev, keresztnev FROM mozdonyvezeto INNER JOIN jogositvanyok
ON mozdonyvezeto.jogsi_kod = jogositvanyok.jogsi_kod WHERE villany = 'igen';

SELECT vezeteknev, keresztnev FROM mozdonyvezeto INNER JOIN jogositvanyok 
ON mozdonyvezeto.jogsi_kod = jogositvanyok.jogsi_kod WHERE szuletesi_ido < '1980/04/27' ;

SELECT DISTINCT vezeteknev, keresztnev,gyarto FROM mozdonyvezeto,
vonat WHERE mozdonyvezeto.mikor_vezet=vonat.mikor_vezet;
 
SELECT vonalszam, erkezesi_ido, indulasi_ido FROM menetrend 
JOIN utvonal USING (menetrend_id);

SELECT vonalszam, count(*) FROM tartalmazza GROUP BY vonalszam;

SELECT tipus, count(*) FROM vonat GROUP BY tipus;

SELECT vonat_id, vagon_szam FROM vonat WHERE vagon_szam > (SELECT avg
(vagon_szam)FROM vonat);

SELECT vonalszam FROM utvonal WHERE KilometerAr * Tavolsag < (SELECT avg 
(KilometerAr*Tavolsag) FROM utvonal);


