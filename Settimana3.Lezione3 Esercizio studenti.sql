#Creare tabella STUDENTE
CREATE TABLE STUDENTE(
    Matricola SMALLINT PRIMARY KEY,
    Nome TEXT(25),
    Citta TEXT(25)
);

#Inserire valori all'interno della tabella STUDENTE
INSERT INTO STUDENTE(Matricola,Nome,Citta)
    VALUES
    (1,"Andrea","Milano"),
    (2,"Luca","Roma"),
    (3,"Simone","Napoli"),
    (4,"Alessandro","Torino"),
    (5,"Chiara","Palermo"),
    (6,"Francesco","Genova"),
    (7,"Marta","Bologna"),
    (8,"Federico","Firenze"),
    (9,"Giorgia","Bari"),
    (10,"Matteo","Catania"),
    (11,"Giulia","Venezia"),
    (12,"Marco","Verona"),
    (13,"Elena","Messina"),
    (14,"Davide","Padova"),
    (15,"Sofia","Trieste"),
    (16,"Stefano","Brescia"),
    (17,"Sara","Taranto"),
    (18,"Giovanni","Prato"),
    (19,"Valentina","Modena"),
    (20,"Filippo","Ravenna"),
    (21,"Alessia","Ferrara"),
    (22,"Gabriele","Perugia"),
    (23,"Eleonora","Livorno"),
    (24,"Lorenzo","Ravenna"),
    (25,"Virginia","Cagliari"),
    (26,"Fabio","Foggia"),
    (27,"Caterina","Rimini"),
    (28,"Tommaso","Salerno"),
    (29,"Francesca","Ferrara"),
    (30,"Nicola","Sassari"),
    (31,"Elisa","Latina"),
    (32,"Cristiano","Udine"),
    (33,"Veronica","Monza"),
    (34,"Giacomo","Siracusa"),
    (35,"Beatrice","Pescara"),
    (36,"Raffaele","Bergamo"),
    (37,"Alessandra","Forlì"),
    (38,"Enrico","Trento"),
    (39,"Aurora","Vicenza"),
    (40,"Daniele","Terni"),
    (41,"Irene","Bolzano"),
    (42,"Emanuele","Novara"),
    (43,"Laura","Piacenza"),
    (44,"Vincenzo","Ancona"),
    (45,"Serena","Andria"),
    (46,"Mattea","Arezzo"),
    (47,"Piero","Udine"),
    (48,"Noemi","Cesena"),
    (49,"Paolo","Lecce"),
    (50,"Silvia","Pesaro");

#Creare tabella DOCENTE
CREATE TABLE DOCENTE(
    Matricola SMALLINT PRIMARY KEY,
    Nome TEXT(25)
);

#Inserire valori all'interno della tabella DOCENTE
INSERT INTO DOCENTE(Matricola,Nome)
    VALUES
    (1,"De Luca"),
    (2,"Esposito"),
    (3,"Bianchi"),
    (4,"Romano"),
    (5,"De Angelis");

#Creare la tabella CORSO
CREATE TABLE CORSO(
    Codice SMALLINT PRIMARY KEY,
    Nome TEXT(25),
    MatricolaDocente SMALLINT, FOREIGN KEY (MatricolaDocente) REFERENCES DOCENTE(Matricola)
);

#Inserire valori all'interno della tabella CORSO
INSERT INTO CORSO(Codice,Nome,MatricolaDocente)
    VALUES
    (1,"Matematica",4),
    (2,"Fisica",5),
    (3,"Biologia",1),
    (4,"Chimica",2),
    (5,"Informatica",3);

#Creare tabella ESAME
CREATE TABLE ESAME(
    Codice SMALLINT PRIMARY KEY,
    MatricolaStudente SMALLINT, FOREIGN KEY (MatricolaStudente) REFERENCES STUDENTE(Matricola),
    Data DATE,
    Voto SMALLINT,
    SettoreScientifico TEXT(30)
);

#Inserire valori all'interno della tabella ESAME
INSERT INTO ESAME(Codice,MatricolaStudente,Data,Voto,SettoreScientifico)
    VALUES
    (1,7,"2023-01-20",29,"Matematica"),
    (2,2,"2023-01-20",26,"Biologia"),
    (3,6,"2023-01-20",28,"Chimica"),
    (4,8,"2023-01-30",20,"Informatica"),
    (5,2,"2023-01-30",28,"Chimica"),
    (6,3,"2023-01-30",24,"Biologia"),
    (7,10,"2023-01-30",22,"Matematica"),
    (8,6,"2023-02-11",26,"Biologia"),
    (9,3,"2023-02-11",28,"Informatica"),
    (10,2,"2023-02-11",30,"Chimica"),
    (11,9,"2023-02-11",18,"Biologia"),
    (12,2,"2023-02-23",22,"Fisica"),
    (13,1,"2023-02-23",25,"Biologia"),
    (14,4,"2023-02-23",22,"Informatica"),
    (15,4,"2023-03-08",23,"Chimica"),
    (16,3,"2023-03-08",27,"Fisica"),
    (17,2,"2023-03-08",24,"Chimica"),
    (18,6,"2023-03-24",27,"Informatica"),
    (19,6,"2023-03-24",27,"Matematica"),
    (20,3,"2023-03-24",24,"Chimica"),
    (21,2,"2023-03-08",23,"Informatica"),
    (22,3,"2023-04-21",29,"Informatica"),
    (23,6,"2023-04-21",26,"Chimica"),
    (24,2,"2023-04-26",24,"Matematica"),
    (25,6,"2023-05-03",27,"Matematica"),
    (26,3,"2023-05-23",30,"Biologia"),
    (27,10,"2023-05-23",22,"Chimica"),
    (28,8,"2023-06-03",19,"Matematica"),
    (29,2,"2023-06-03",30,"Informatica"),
    (30,6,"2023-06-03",22,"Biologia"),
    (31,2,"2023-07-13",23,"Biologia"),
    (32,3,"2023-07-13",28,"Informatica"),
    (33,5,"2023-07-23",22,"Fisica"),
    (34,6,"2023-09-13",26,"Chimica"),
    (35,6,"2023-10-01",26,"Informatica"),
    (36,2,"2023-10-01",24,"Biologia"),
    (37,10,"2023-10-01",22,"Matematica"),
    (38,9,"2023-10-01",22,"Fisica"),
    (39,3,"2023-10-01",28,"Fisica"),
    (40,4,"2023-11-10",21,"Matematica"),
    (41,2,"2023-11-10",26,"Biologia"),
    (42,3,"2023-11-10",29,"Matematica"),
    (43,6,"2023-11-10",26,"Matematica"),
    (44,1,"2023-11-10",29,"Matematica"),
    (45,2,"2023-12-09",18,"Fisica"),
    (46,6,"2023-12-09",22,"Biologia"),
    (47,3,"2023-12-09",27,"Chimica"),
    (48,7,"2023-12-09",25,"Fisica"),
    (49,4,"2023-12-09",26,"Chimica"),
    (50,8,"2023-12-09",21,"Fisica");

#1. Per ogni studente, visualizzare gli esami sostenuti con voto maggiore di 28 assieme alla matricola dello studente e al nome del docente che ha tenuto il corso.
SELECT ESAME.Codice,ESAME.MatricolaStudente,CORSO.MatricolaDocente
FROM ESAME
JOIN CORSO ON ESAME.SettoreScientifico=CORSO.Nome
WHERE Voto>28;

#2. Per ogni docente, visualizzare il nome, il nome del corso di cui è titolare e il settore scientifico del corso.
SELECT DISTINCT DOCENTE.Nome,CORSO.Nome,ESAME.SettoreScientifico
FROM DOCENTE
LEFT JOIN CORSO ON DOCENTE.Matricola=CORSO.MatricolaDocente
LEFT JOIN ESAME ON CORSO.Nome=ESAME.SettoreScientifico;

#3.Visualizzare per ogni studente la matricola, il nome, il voto massimo, minimo e medio conseguito negli esami.
SELECT STUDENTE.Matricola,STUDENTE.Nome,MAX(ESAME.Voto) AS Voto_Max,MIN(ESAME.Voto) AS Voto_Min,AVG(ESAME.Voto) AS Voto_Avg
FROM STUDENTE
JOIN ESAME ON STUDENTE.Matricola=ESAME.MatricolaStudente
GROUP BY STUDENTE.Matricola;

#4. Visualizzare - per ogni studente con media voti maggiore di 25 e che ha sostenuto esami in almeno 10 date - la matricola, il nome, il voto massimo, minimo e medio conseguito negli esami. Ordinare per voto.
SELECT ESAME.MatricolaStudente, STUDENTE.Nome, MAX(ESAME.Voto) AS Max_Voto, MIN(ESAME.Voto) AS Min_Voto, AVG(ESAME.Voto) AS Media_Voto
FROM ESAME
JOIN STUDENTE ON STUDENTE.Matricola=ESAME.MatricolaStudente
GROUP BY ESAME.MatricolaStudente, STUDENTE.Nome
HAVING AVG(ESAME.Voto)>25
AND COUNT(Data)>10
ORDER BY Max_Voto;