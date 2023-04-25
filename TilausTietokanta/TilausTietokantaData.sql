delete from TilauksenRivit;
delete from Tilaus;
delete from Tuote;
delete from Asiakas;
delete from Tuoteryhma;
delete from Osoite;

INSERT INTO Osoite (OsoiteID, Katuosoite, Postitoimipaikka, Postinumero, Maa) VALUES (1,'Kotikatu 1','Helsinki','00100','Suomi');
INSERT INTO Osoite (OsoiteID, Katuosoite, Postitoimipaikka, Postinumero, Maa) VALUES (2,'Mökkikuja 5','Kirkkonummi','02400','Suomi');
INSERT INTO Osoite (OsoiteID, Katuosoite, Postitoimipaikka, Postinumero, Maa) VALUES (3,'Valtakatu 7','Vantaa','01230','Suomi');
INSERT INTO Osoite (OsoiteID, Katuosoite, Postitoimipaikka, Postinumero, Maa) VALUES (4,'Kirkkokatu 10','Espoo','02110','Suomi');
INSERT INTO Osoite (OsoiteID, Katuosoite, Postitoimipaikka, Postinumero, Maa) VALUES (5,'Järvipolku 5','Sipoo','01180','Suomi');

INSERT INTO Asiakas (AsiakasNumero, Sukunimi, Etunimi, OsoiteID, Puhelin, Sahkoposti) VALUES (1000,'Poppanen','Maija', 2,'0449876543','maija.poppanen@wizard.com');
INSERT INTO Asiakas (AsiakasNumero, Sukunimi, Etunimi, OsoiteID, Puhelin, Sahkoposti) VALUES (1001,'Niemi','Milla', 1,'0501234567','milla.niemi@palvelin.com');
INSERT INTO Asiakas (AsiakasNumero, Sukunimi, Etunimi, OsoiteID, Puhelin, Sahkoposti) VALUES (1002,'Vaara','Valto', 3,'0418765432','valto.vaara@kmail.com');
INSERT INTO Asiakas (AsiakasNumero, Sukunimi, Etunimi, OsoiteID, Puhelin, Sahkoposti) VALUES (1003,'Salmi','Simo', 5,'0403456789','simo.salmi@kmail.com');
INSERT INTO Asiakas (AsiakasNumero, Sukunimi, Etunimi, OsoiteID, Puhelin, Sahkoposti) VALUES (1004,'Peltone','Peter', 4,'0556543212','peter.peltonen@smail.com');

INSERT INTO Tuoteryhma (TuoteryhmaID, Nimi, Kuvaus, alv) VALUES (10000,'Tietokoneet','Kannettavat ja pöytätietokoneet', 24);
INSERT INTO Tuoteryhma (TuoteryhmaID, Nimi, Kuvaus, alv) VALUES (10001,'Kellot','Älykellot ja urheilukellot',24);
INSERT INTO Tuoteryhma (TuoteryhmaID, Nimi, Kuvaus, alv) VALUES (10002,'Kodinkoneet','Astianpesukoneet, liedet ja pesukoneet', 24);

INSERT INTO Tuote (TuoteTunnus, Nimi, Hinta, Paino, TuotteenMitat, TuoteRyhmaID) VALUES ('D01','Astis Clean pesukone', 399, 36,'81,5 cm x 59 cm x 57 cm ', 10002);
INSERT INTO Tuote (TuoteTunnus, Nimi, Hinta, Paino, TuotteenMitat, TuoteRyhmaID) VALUES ('D02','Just Cook it liesi',299.00,44.00,'99 cm x 57 cm x 44', 10002);
INSERT INTO Tuote (TuoteTunnus, Nimi, Hinta, Paino, TuotteenMitat, TuoteRyhmaID) VALUES ('D03','Wash it! pesukone',199.00,57.00,'86 cm x 65 cm x 55 cm', 10002);
INSERT INTO Tuote (TuoteTunnus, Nimi, Hinta, Paino, TuotteenMitat, TuoteRyhmaID) VALUES ('K01','Smart Z älykello',210.50,0.10,'3,5 cm kellotaulu', 10001);
INSERT INTO Tuote (TuoteTunnus, Nimi, Hinta, Paino, TuotteenMitat, TuoteRyhmaID) VALUES ('K02','Just do it urh.kello',250.50,0.11,'3,7 cm kellotaulu', 10001);
INSERT INTO Tuote (TuoteTunnus, Nimi, Hinta, Paino, TuotteenMitat, TuoteRyhmaID) VALUES ('T01','Light 1  Kannettava',2100.50,1.00,'35 cm x 24 cm x 1 cm', 10000);
INSERT INTO Tuote (TuoteTunnus, Nimi, Hinta, Paino, TuotteenMitat, TuoteRyhmaID) VALUES ('T02','G1 Pöytätietokone',2400.00,4.50,'36 cm x 22 cm x 31 cm', 10000);

INSERT INTO Tilaus (TilausNumero, AsiakasNumero, TilausPVM, ToimitusPVM, TilausEhto) VALUES (10, 1003,'2022-04-07' ,'2022-04-14' ,'14 pv netto');
INSERT INTO Tilaus (TilausNumero, AsiakasNumero, TilausPVM, ToimitusPVM, TilausEhto) VALUES (11, 1000,'2022-04-08','2022-04-15','14 pv netto');
INSERT INTO Tilaus (TilausNumero, AsiakasNumero, TilausPVM, ToimitusPVM, TilausEhto) VALUES (12, 1004,'2022-04-08','2022-04-15','14 pv netto');
INSERT INTO Tilaus (TilausNumero, AsiakasNumero, TilausPVM, ToimitusPVM, TilausEhto) VALUES (13, 1001,'2022-04-09','2022-04-16','14 pv netto');
INSERT INTO Tilaus (TilausNumero, AsiakasNumero, TilausPVM, ToimitusPVM, TilausEhto) VALUES (14, 1003,'2022-04-10','2022-04-17','14 pv netto');
INSERT INTO Tilaus (TilausNumero, AsiakasNumero, TilausPVM, ToimitusPVM, TilausEhto) VALUES (15, 1000,'2022-04-10','2022-04-17','14 pv netto');
INSERT INTO Tilaus (TilausNumero, AsiakasNumero, TilausPVM, ToimitusPVM, TilausEhto) VALUES (16, 1003,'2022-04-11','2022-04-18','14 pv netto');

INSERT INTO TilauksenRivit (TRID, TilausNumero, TuoteTunnus, Lukumaara) VALUES (1, 10,'T01', 1);
INSERT INTO TilauksenRivit (TRID, TilausNumero, TuoteTunnus, Lukumaara) VALUES (2, 10,'K01', 1);
INSERT INTO TilauksenRivit (TRID, TilausNumero, TuoteTunnus, Lukumaara) VALUES (3, 11,'D01', 1);
INSERT INTO TilauksenRivit (TRID, TilausNumero, TuoteTunnus, Lukumaara) VALUES (4, 12,'D02', 1);
INSERT INTO TilauksenRivit (TRID, TilausNumero, TuoteTunnus, Lukumaara) VALUES (5, 13,'T01', 2);
INSERT INTO TilauksenRivit (TRID, TilausNumero, TuoteTunnus, Lukumaara) VALUES (6, 13,'K02', 2);
INSERT INTO TilauksenRivit (TRID, TilausNumero, TuoteTunnus, Lukumaara) VALUES (7, 14,'D01', 2);
INSERT INTO TilauksenRivit (TRID, TilausNumero, TuoteTunnus, Lukumaara) VALUES (8, 14,'D02', 2);
INSERT INTO TilauksenRivit (TRID, TilausNumero, TuoteTunnus, Lukumaara) VALUES (9, 15,'D03', 3);
INSERT INTO TilauksenRivit (TRID, TilausNumero, TuoteTunnus, Lukumaara) VALUES (10, 15,'D01', 3);
INSERT INTO TilauksenRivit (TRID, TilausNumero, TuoteTunnus, Lukumaara) VALUES (11, 15,'D02', 3);
INSERT INTO TilauksenRivit (TRID, TilausNumero, TuoteTunnus, Lukumaara) VALUES (12, 16,'K02', 1);
INSERT INTO TilauksenRivit (TRID, TilausNumero, TuoteTunnus, Lukumaara) VALUES (13, 16,'T02', 1);
INSERT INTO TilauksenRivit (TRID, TilausNumero, TuoteTunnus, Lukumaara) VALUES (14, 16,'T01', 1);

