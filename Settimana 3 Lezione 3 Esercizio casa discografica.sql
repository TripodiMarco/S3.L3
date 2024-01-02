#Creare la tabella DISCO
CREATE TABLE DISCO(
    NroSerie INT PRIMARY KEY,
    TitoloAlbum TEXT(40) NOT NULL,
    Anno INT,
    Prezzo DOUBLE
);

#Inserire valori all'interno della tabella DISCO
INSERT INTO DISCO(NroSerie, TitoloAlbum,Anno,Prezzo)
VALUES
    (1,"Album 1",1964,23.99),
    (2,"Album 2",1979,15.60),
    (3,"Album 3",1983,19.90),
    (4,"Album 4",1996,13.20),
    (5,"Album 5",2004,24.49),
    (6,"Album 6",2010,11.80);

#SELECT * FROM DISCO;

#Creare la tabella CONTIENE
CREATE TABLE CONTIENE(
    NroSerieDisco INT,
    CodiceReg VARCHAR(20),
    NroProg INT PRIMARY KEY
);

#Inserire valori all'interno della tabella CONTIENE
INSERT INTO CONTIENE(NroSerieDisco,CodiceReg,NroProg)
VALUES
    (1,"Registrazione.1.1",1),
    (1,"Registrazione.1.2",2),
    (1,"Registrazione.1.3",3),
    (1,"Registrazione.1.4",4),
    (1,"Registrazione.1.5",5),
    (2,"Registrazione.2.1",6),
    (2,"Registrazione.2.2",7),
    (2,"Registrazione.2.3",8),
    (2,"Registrazione.2.4",9),
    (2,"Registrazione.2.5",10),
    (3,"Registrazione.3.1",11),
    (3,"Registrazione.3.2",12),
    (3,"Registrazione.3.3",13),
    (3,"Registrazione.3.4",14),
    (3,"Registrazione.3.5",15),
    (4,"Registrazione.4.1",16),
    (4,"Registrazione.4.2",17),
    (4,"Registrazione.4.3",18),
    (4,"Registrazione.4.4",19),
    (4,"Registrazione.4.5",20),
    (5,"Registrazione.5.1",21),
    (5,"Registrazione.5.2",22),
    (5,"Registrazione.5.3",23),
    (5,"Registrazione.5.4",24),
    (5,"Registrazione.5.5",25),
    (6,"Registrazione.6.1",26),
    (6,"Registrazione.6.2",27),
    (6,"Registrazione.6.3",28),
    (6,"Registrazione.6.4",29),
    (6,"Registrazione.6.5",30);

#Creare la tabella ESECUZIONE
CREATE TABLE ESECUZIONE(
    CodiceReg VARCHAR(20) PRIMARY KEY,
    TitoloCanzone TEXT(40),
    Anno INT
);

#Inserire valori nella tabella ESECUZIONE
INSERT INTO ESECUZIONE(CodiceReg,TitoloCanzone,Anno)
VALUES
    ("Registrazione.1.1","Canzone.1.1",1963),
    ("Registrazione.1.2","Canzone.1.2",1963),
    ("Registrazione.1.3","Canzone.1.3",NULL),
    ("Registrazione.1.4","Canzone.1.4",1964),
    ("Registrazione.1.5","Canzone.1.5",1964),
    ("Registrazione.2.1","Canzone.2.1",1977),
    ("Registrazione.2.2","Canzone.2.2",1978),
    ("Registrazione.2.3","Canzone.2.3",1978),
    ("Registrazione.2.4","Canzone.2.4",1979),
    ("Registrazione.2.5","Canzone.2.5",1979),
    ("Registrazione.3.1","Canzone.3.1",1980),
    ("Registrazione.3.2","Canzone.3.2",NULL),
    ("Registrazione.3.3","Canzone.3.3",1980),
    ("Registrazione.3.4","Canzone.3.4",1982),
    ("Registrazione.3.5","Canzone.3.5",1983),
    ("Registrazione.4.1","Canzone.4.1",1995),
    ("Registrazione.4.2","Canzone.4.2",1996),
    ("Registrazione.4.3","Canzone.4.3",1996),
    ("Registrazione.4.4","Canzone.4.4",1996),
    ("Registrazione.4.5","Canzone.4.5",1996),
    ("Registrazione.5.1","Canzone.5.1",2003),
    ("Registrazione.5.2","Canzone.5.2",2003),
    ("Registrazione.5.3","Canzone.5.3",2003),
    ("Registrazione.5.4","Canzone.5.4",NULL),
    ("Registrazione.5.5","Canzone.5.5",2004),
    ("Registrazione.6.1","Canzone.6.1",2010),
    ("Registrazione.6.2","Canzone.6.2",2010),
    ("Registrazione.6.3","Canzone.6.3",2010),
    ("Registrazione.6.4","Canzone.6.4",2010),
    ("Registrazione.6.5","Canzone.6.5",2010);


#Creare la tabella AUTORE
CREATE TABLE AUTORE(
    Nome TEXT(30),
    TitoloCanzone VARCHAR(20) PRIMARY KEY
);

#Inserire valori nella tabella AUTORE
INSERT INTO AUTORE(Nome,TitoloCanzone)
VALUES
    ("Lisa","Canzone.1.1"),
    ("Laura","Canzone.1.2"),
    ("Luca","Canzone.1.3"),
    ("Giacomo","Canzone.1.4"),
    ("Mario","Canzone.1.5"),
    ("Giacomo","Canzone.2.1"),
    ("Giacomo","Canzone.2.2"),
    ("Andrea","Canzone.2.3"),
    ("Mario","Canzone.2.4"),
    ("Davide","Canzone.2.5"),
    ("Luca","Canzone.3.1"),
    ("Laura","Canzone.3.2"),
    ("Dennis","Canzone.3.3"),
    ("Giacomo","Canzone.3.4"),
    ("Roberto","Canzone.3.5"),
    ("John","Canzone.4.1"),
    ("Alberto","Canzone.4.2"),
    ("Alberto","Canzone.4.3"),
    ("Simone","Canzone.4.4"),
    ("Mario","Canzone.4.5"),
    ("Laura","Canzone.5.1"),
    ("Laura","Canzone.5.2"),
    ("Margherita","Canzone.5.3"),
    ("Mario","Canzone.5.4"),
    ("Francesca","Canzone.5.5"),
    ("Margherita","Canzone.6.1"),
    ("Simone","Canzone.6.2"),
    ("Roberto","Canzone.6.3"),
    ("Mario","Canzone.6.4"),
    ("Davide","Canzone.6.5");


#Creare la tabella CANTANTE
CREATE TABLE CANTANTE(
    NomeCantante TEXT(30),
    CodiceReg VARCHAR(20) PRIMARY KEY
);

#Inserire valori all'interno della tabella CANTANTE
INSERT INTO CANTANTE(NomeCantante,CodiceReg)
VALUES
    ("Giacomo","Canzone.1.1"),
    ("Davide","Canzone.1.2"),
    ("Luca","Canzone.1.3"),
    ("Dennis","Canzone.1.4"),
    ("John","Canzone.1.5"),
    ("Fred","Canzone.2.1"),
    ("Elvis","Canzone.2.2"),
    ("Francesca","Canzone.2.3"),
    ("Anna","Canzone.2.4"),
    ("Giacomo","Canzone.2.5"),
    ("Davide","Canzone.3.1"),
    ("Luca","Canzone.3.2"),
    ("Dennis","Canzone.3.3"),
    ("John","Canzone.3.4"),
    ("Fred","Canzone.3.5"),
    ("Elvis","Canzone.4.1"),
    ("Francesca","Canzone.4.2"),
    ("Anna","Canzone.4.3"),
    ("Francesca","Canzone.4.4"),
    ("Anna","Canzone.4.5"),
    ("Davide","Canzone.5.1"),
    ("Luca","Canzone.5.2"),
    ("Giacomo","Canzone.5.3"),
    ("Davide","Canzone.5.4"),
    ("Luca","Canzone.5.5"),
    ("Dennis","Canzone.6.1"),
    ("John","Canzone.6.2"),
    ("Fred","Canzone.6.3"),
    ("Giacomo","Canzone.6.4"),
    ("Davide","Canzone.6.5");

#1. I cantautori (persone che hanno cantato e scritto la stessa canzone) il cui nome inizia per 'D’
SELECT Nome,TitoloCanzone
FROM AUTORE
INNER JOIN CANTANTE ON AUTORE.Nome=CANTANTE.NomeCantante
AND AUTORE.TitoloCanzone=CANTANTE.CodiceReg
AND Nome LIKE 'D%';

#2. I titoli dei dischi che contengono canzoni di cui non si conosce l'anno di registrazione
SELECT DISCO.TitoloAlbum FROM DISCO
RIGHT JOIN CONTIENE ON DISCO.NroSerie=CONTIENE.NroSerieDisco
RIGHT JOIN ESECUZIONE ON CONTIENE.CodiceReg=ESECUZIONE.CodiceReg
WHERE ESECUZIONE.Anno IS NULL

#3. I cantanti che hanno sempre registrato canzoni come solisti.
SELECT Nome,TitoloCanzone
FROM AUTORE
INNER JOIN CANTANTE ON AUTORE.Nome=CANTANTE.NomeCantante
AND AUTORE.TitoloCanzone=CANTANTE.CodiceReg;