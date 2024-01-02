#Creare la tabella STUDENTE
CREATE TABLE STUDENTE(
    Matricola SMALLINT PRIMARY KEY,
    NomeStudente TEXT(25),
    AnnoLaurea INT,
    TitoloStudio TEXT(60),
    VotoLaurea SMALLINT
);

#Inserire valori all'interno della tabella STUDENTE
INSERT INTO STUDENTE (Matricola, NomeStudente, AnnoLaurea, TitoloStudio, VotoLaurea)
VALUES 
    (1, 'Mario Rossi', 2023, 'Ingegneria Meccanica', 110),
    (2, 'Giulia Bianchi', 2022, 'Economia', 103),
    (3, 'Luca Verdi', 2024, 'Informatica', 107),
    (4, 'Anna Esposito', 2023, 'Architettura', 108),
    (5, 'Francesca Russo', 2022, 'Medicina', 99),
    (6, 'Alessio Romano', 2023, 'Chimica', 96),
    (7, 'Elena Moretti', 2022, 'Scienze Politiche', 105),
    (8, 'Marco Ferrari', 2024, 'Fisica', 101),
    (9, 'Laura Conti', 2023, 'Lettere', 100),
    (10, 'Giovanni Martini', 2022, 'Psicologia', 98),
    (11, 'Silvia Galliani', 2024, 'Biologia', 95),
    (12, 'Riccardo Bianco', 2023, 'Matematica', 110),
    (13, 'Paola Rossi', 2022, 'Filosofia', 100),
    (14, 'Simone De Luca', 2024, 'Geologia', 110),
    (15, 'Martina Santoro', 2023, 'Storia dell''Arte', 104),
    (16, 'Alessandra Russo', 2022, 'Scienze della Comunicazione', 98),
    (17, 'Davide Moretti', 2024, 'Educazione Fisica', 95),
    (18, 'Elisa Ferrari', 2023, 'Architettura del Paesaggio', 98),
    (19, 'Federico Rinaldi', 2022, 'Archeologia', 94),
    (20, 'Sara Neri', 2024, 'Musicologia', 99);

#Creare la tabella DIPARTIMENTO
CREATE TABLE DIPARTIMENTO(
    CodiceDipartimento SMALLINT PRIMARY KEY,
    NomeDipartimento TEXT(40),
    SettoreScientifico TEXT(40),
    NumDocenti SMALLINT
);


#Inserire valori all'interno della tabella DIPARTIMENTO
INSERT INTO DIPARTIMENTO (CodiceDipartimento, NomeDipartimento, SettoreScientifico, NumDocenti)
VALUES 
    (1, 'Ingegneria', 'Ingegneria', 25),
    (2, 'Economia', 'Scienze Economiche', 20),
    (3, 'Informatica', 'Informatica', 30),
    (4, 'Architettura', 'Architettura', 15),
    (5, 'Medicina', 'Scienze Mediche', 40),
    (6, 'Chimica', 'Scienze Chimiche', 18),
    (7, 'Scienze Politiche', 'Scienze Sociali', 22),
    (8, 'Fisica', 'Scienze Fisiche', 28),
    (9, 'Lettere', 'Lettere e Filosofia', 32),
    (10, 'Psicologia', 'Scienze Psicologiche', 19),
    (11, 'Biologia', 'Scienze Naturali', 35),
    (12, 'Matematica', 'Scienze Matematiche', 25),
    (13, 'Filosofia', 'Scienze Umanistiche', 27),
    (14, 'Geologia', 'Scienze della Terra', 18),
    (15, 'Storia dell''Arte', 'Storia dell''Arte', 20),
    (16, 'Scienze della Comunicazione', 'Comunicazione', 23),
    (17, 'Educazione Fisica', 'Scienze Motorie', 17),
    (18, 'Architettura del Paesaggio', 'Architettura del Paesaggio', 14),
    (19, 'Archeologia', 'Scienze Archeologiche', 30),
    (20, 'Musicologia', 'Scienze Musicali', 16);


#Creare la tabella CONCORSOMASTER
CREATE TABLE CONCORSOMASTER(
    CodiceMaster VARCHAR(3) PRIMARY KEY,
    CodiceDipartimento SMALLINT, FOREIGN KEY (CodiceDipartimento) REFERENCES DIPARTIMENTO(CodiceDipartimento),
    DataPubblicazione DATE,
    DataScadenza DATE,
    NumPostiDisponibili SMALLINT
);


#Inserire valori all'interno della tabella CONCORSOMASTER
INSERT INTO CONCORSOMASTER (CodiceMaster, CodiceDipartimento, DataPubblicazione, DataScadenza, NumPostiDisponibili)
VALUES 
    ('M1',1, '2023-01-15', '2023-02-28', 7),
    ('M2',2, '2023-02-10', '2023-03-20', 8),
    ('M3',3, '2023-03-05', '2023-04-10', 5),
    ('M4',4, '2023-04-01', '2023-05-15', 13),
    ('M5',5, '2023-04-01', '2023-06-30', 20),
    ('M6',6, '2023-06-15', '2023-07-25', 12),
    ('M7',7, '2023-07-20', '2023-08-30', 18),
    ('M8',8, '2023-07-20', '2023-08-30', 25),
    ('M9',9, '2023-09-30', '2023-10-31', 6),
    ('M10',10, '2023-10-05', '2023-11-15', 3);


#Creare la tabella PARTECIPACONCORSOMASTER
CREATE TABLE PARTECIPACONCORSOMASTER(
    CodiceDipartimento SMALLINT,
    CodiceMaster VARCHAR(3),
    MatricolaStudente SMALLINT, FOREIGN KEY (MatricolaStudente) REFERENCES STUDENTE(Matricola),
    DataInvioDomanda DATE
);


#Inserire valori all'interno della tabella PARTECIPACONCORSOMASTER
INSERT INTO PARTECIPACONCORSOMASTER (CodiceDipartimento, CodiceMaster, MatricolaStudente, DataInvioDomanda)
VALUES
    (1, 'M1', 1, '2023-01-20'),
    (2, 'M2', 2, '2023-02-25'),
    (3, 'M3', 3, '2023-03-10'),
    (4, 'M4', 4, '2023-04-05'),
    (5, 'M5', 5, '2023-05-12'),
    (6, 'M6', 6, '2023-06-20'),
    (7, 'M7', 7, '2023-07-01'),
    (8, 'M8', 8, '2023-08-27'),
    (9, 'M9', 9, '2023-10-01'),
    (10, 'M10', 10, '2023-10-10'),
    (1, 'M1', 11, '2023-01-25'),
    (2, 'M2', 12, '2023-02-28'),
    (3, 'M3', 13, '2023-03-15'),
    (4, 'M4', 14, '2023-04-10'),
    (5, 'M5', 15, '2023-05-18'),
    (6, 'M6', 16, '2023-06-25'),
    (7, 'M7', 17, '2023-07-22'),
    (8, 'M8', 18, '2023-08-28'),
    (9, 'M9', 19, '2023-09-05'),
    (10, 'M10', 20, '2023-10-12'),
    (2, 'M2', 1, '2023-01-30'),
    (3, 'M3', 2, '2023-03-01'),
    (4, 'M4', 3, '2023-03-20'),
    (5, 'M5', 4, '2023-04-15'),
    (6, 'M6', 5, '2023-05-22'),
    (7, 'M7', 6, '2023-07-01'),
    (8, 'M8', 7, '2023-08-01'),
    (9, 'M9', 8, '2023-09-10'),
    (3, 'M3', 1, '2023-01-30'),
    (4, 'M4', 2, '2023-03-01'),
    (5, 'M5', 3, '2023-03-20'),
    (6, 'M6', 4, '2023-04-15');



#1. Per ogni studente che ha partecipato a 3 concorsi di master, visualizzare il nome dello studente e il settore scientifico per cui ha partecipato a tutti i concorsi. Ordinare per Nome dello studente
SELECT STUDENTE.NomeStudente, DIPARTIMENTO.SettoreScientifico
FROM STUDENTE
JOIN PARTECIPACONCORSOMASTER ON STUDENTE.Matricola=PARTECIPACONCORSOMASTER.MatricolaStudente
JOIN DIPARTIMENTO ON PARTECIPACONCORSOMASTER.CodiceDipartimento = DIPARTIMENTO.CodiceDipartimento
WHERE STUDENTE.Matricola IN (
    SELECT MatricolaStudente
    FROM PARTECIPACONCORSOMASTER
    GROUP BY MatricolaStudente
    HAVING COUNT(DISTINCT PARTECIPACONCORSOMASTER.CodiceMaster)=3)
ORDER BY STUDENTE.NomeStudente;

#2. Per i dipartimenti in cui sono stati effettuati solo concorsi di master aventi ciascuno un numero di posti disponibili superiore a 7, visualizzare il nome del dipartimento, il settore scientifico di afferenza e il numero di concorsi di master. Ordinare per nome del dipartimento e settore scientifico
SELECT DIPARTIMENTO.NomeDipartimento, DIPARTIMENTO.SettoreScientifico, COUNT(CONCORSOMASTER.CodiceMaster) AS NumCorsi
FROM DIPARTIMENTO
JOIN CONCORSOMASTER ON DIPARTIMENTO.CodiceDipartimento=CONCORSOMASTER.CodiceDipartimento
WHERE CONCORSOMASTER.NumPostiDisponibili>7
GROUP BY CONCORSOMASTER.CodiceMaster
ORDER BY NomeDipartimento,SettoreScientifico;

#3. Visualizzare la matricola e il nome degli studenti che hanno conseguito un voto di laurea superiore a 100 ed hanno partecipato ad almeno due concorsi di master con la stessa data di pubblicazione
SELECT DISTINCT PCM1.MatricolaStudente,STUDENTE.NomeStudente
FROM PARTECIPACONCORSOMASTER PCM1
JOIN STUDENTE ON PCM1.MatricolaStudente=STUDENTE.Matricola
JOIN PARTECIPACONCORSOMASTER PCM2 ON PCM1.MatricolaStudente = PCM2.MatricolaStudente AND PCM1.CodiceMaster <> PCM2.CodiceMaster
JOIN CONCORSOMASTER CM1 ON PCM1.CodiceMaster = CM1.CodiceMaster
JOIN CONCORSOMASTER CM2 ON PCM2.CodiceMaster = CM2.CodiceMaster
WHERE CM1.DataPubblicazione = CM2.DataPubblicazione
