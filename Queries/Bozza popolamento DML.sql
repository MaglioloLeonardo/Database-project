
INSERT INTO Persona (ID, nome, cognome, luogo_nascita, data_nascita, biografia, foto)
VALUES

	(1, 'Aidan', 'Gallagher', null, null, 'Biografia default', null),
	(2, 'Antonio', 'Banderas', 'Torino', null, null, null),
	(3, 'Anthony', 'Hopkins', 'Milano', '1955-03-12', null, null),
	(4, 'Brad', 'Pitt', 'Bologna', '1990-05-27', 'Biografia default', null),
	(5, 'Bruce', 'Willis', 'Padova', null, null, null),
	(6, 'Mario', 'Rossi', null, '1960-07-10', null, null),
	(7, 'Greta', 'Salvatori', 'Roma', null, 'Biografia default', null);


INSERT INTO Cinema (nome, regione, provincia, indirizzo) VALUES
	('45esimo', 'Piemonte', 'Torino', 'Via verdi 45');

INSERT INTO Contatto (contatto, nome_cinema, regione_cinema, provincia_cinema, indirizzo_cinema) VALUES
	('3396517462', '45esimo', 'Piemonte', 'Torino', 'Via verdi 45'),
	('45esimo@gmail.com', '45esimo', 'Piemonte', 'Torino', 'Via verdi 45');

INSERT INTO Sala (ID_sala, nome_cinema, regione_cinema, provincia_cinema, indirizzo_cinema) VALUES
	(1, '45esimo', 'Piemonte', 'Torino', 'Via verdi 45'),
	(2, '45esimo', 'Piemonte', 'Torino', 'Via verdi 45'),
	(3, '45esimo', 'Piemonte', 'Torino', 'Via verdi 45'),
	(4, '45esimo', 'Piemonte', 'Torino', 'Via verdi 45'),
	(5, '45esimo', 'Piemonte', 'Torino', 'Via verdi 45'),
	(6, '45esimo', 'Piemonte', 'Torino', 'Via verdi 45');

INSERT INTO Redattore (username, email, password, data_inizio_collaborazione) VALUES
	('admin', 'admindb@sito.it', 'root', '2010-03-01'),
	('curator', 'curatordb@sito.it', 'toor', '2010-04-15');

INSERT INTO Utente_visitatore (username, email, password) VALUES
	('00', '00@gmail.com', 'orto'),
	('01', '01@gmail.com', 'otro'),
	('10', '10@gmail.com', 'oort'),
	('11', '11@gmail.com', 'troo');

INSERT INTO Piattaforma_tv (nome) VALUES
	('Netflix'),
	('Prime');


INSERT INTO Film (ID, genere, valutazione_media, numero_voti, nome, anno_produzione, paese, durata, ID_regista) VALUES
	(1, 'Fantascienza', 0, 0,  'Terminator', 2014, 'USA', null, 7),
	(2, 'Horror', 0, 0, 'Oz', 1990, 'USA', 90, 7);


INSERT INTO Serie_tv (ID, genere, valutazione_media, numero_voti, nome) VALUES
	(1, 'Fantascienza', 0, 0, 'Stranger things'),
	(2, 'Horror', 0, 0, 'Dark');

INSERT INTO Programma_tv (ID, genere, valutazione_media, numero_voti, nome, anno_onda, paese, durata, descrizione) VALUES
	(1, 'Comico', 0, 0, 'Late Show', 1995, 'USA', 120, null);


INSERT INTO Episodio (ordinamento_episodio, ID_serie, titolo, durata, ordinamento_stagione, nome_stagione, anno_onda, ID_regista) VALUES
	(1, 1, '1', 45, 1, 'prima stagione', 2017, 7),
	(2, 1, '2', 45, 1, 'prima stagione', 2017, 7),
	(3, 1, '3', 45, 1, 'prima stagione', 2017, 7),
	(4, 1, '4', 45, 2, 'seconda stagione', 2018, 7),
	(5, 1, '5', 45, 2, 'seconda stagione', 2018, 7),
	(1, 2, '1', 45, 1, 'prima stagione', 2015, 7),
	(2, 2, '2', 45, 1, 'prima stagione', 2015, 7),
	(3, 2, '3', 45, 1, 'prima stagione', 2015, 7),
	(4, 2, '4', 45, 2, 'seconda stagione', 2016, 7),
	(5, 2, '5', 45, 2, 'seconda stagione', 2016, 7),
	(6, 2, '6', 45, 2, 'seconda stagione', 2016, 7);


INSERT INTO Film_preferiti (username, ID_film) VALUES
	('00', 1),
	('00', 2),
	('10', 2),
	('11', 1);


INSERT INTO Serie_preferite (username, ID_serie) VALUES
	('00', 1),
	('00', 2),
	('10', 2),
	('11', 1);

INSERT INTO Programmi_preferiti (username, ID_programma) VALUES
	('00', 1),
	('01', 1),
	('11', 1);

INSERT INTO Recitazione_serie (ID_attore, ID_serie, personaggio) VALUES
	(1, 1, 'Protagonista'),
	(2, 1, 'Comparsa'),
	(6, 1, null),
	(2, 2, 'Protagonista'),
	(3, 2, 'Comparsa');

INSERT INTO Recitazione_film (ID_attore, ID_film, personaggio) VALUES
	(1, 1, 'Protagonista'),
	(2, 1, 'Comparsa'),
	(6, 1, null),
	(2, 2, 'Protagonista'),
	(3, 2, 'Comparsa');

INSERT INTO Sceneggiatura_film (ID_sceneggiatore, ID_Film) VALUES
	(6, 1),
	(6, 2);

INSERT INTO Sceneggiatura_episodio (ID_sceneggiatore, ordinamento_episodio, ID_serie) VALUES
	(6, 1, 1),
	(6, 2, 1),
	(6, 3, 1),
	(6, 4, 1),
	(6, 5, 1),
	(6, 1, 2),
	(6, 2, 2),
	(6, 3, 2),
	(6, 4, 2),
	(6, 5, 2),
	(6, 6, 2);

INSERT INTO Proiezione (ID_sala, nome_cinema, regione_cinema, provincia_cinema, indirizzo_cinema, ID_film, data_orario, prezzo) VALUES
	(1, '45esimo', 'Piemonte', 'Torino', 'Via verdi 45', 1, '2020-02-02 21:00:00', 10),
	(2, '45esimo', 'Piemonte', 'Torino', 'Via verdi 45', 1, '2020-02-02 21:00:00', 10),
	(3, '45esimo', 'Piemonte', 'Torino', 'Via verdi 45', 1, '2020-02-02 21:00:00', 10),
	(1, '45esimo', 'Piemonte', 'Torino', 'Via verdi 45', 2, '2020-02-02 22:00:00', 10),
	(2, '45esimo', 'Piemonte', 'Torino', 'Via verdi 45', 2, '2020-02-02 22:00:00', 10),
	(3, '45esimo', 'Piemonte', 'Torino', 'Via verdi 45', 2, '2020-02-02 22:00:00', 10);












INSERT INTO Film_valutati(username, ID_film, valutazione) VALUES
	('00', 1, 4);

UPDATE Film
set valutazione_media = (valutazione_media*(numero_voti)+4)/(numero_voti+1), numero_voti = numero_voti+1
where ID = 1;




INSERT INTO Film_valutati(username, ID_film, valutazione) VALUES
	('01', 1, 2);

UPDATE Film
set valutazione_media = (valutazione_media*(numero_voti)+2)/(numero_voti+1), numero_voti = numero_voti+1
where ID = 1;



INSERT INTO Film_valutati(username, ID_film, valutazione) VALUES
	('11', 1, 1);

UPDATE Film
set valutazione_media = (valutazione_media*(numero_voti)+1)/(numero_voti+1), numero_voti = numero_voti+1
where ID = 1;













INSERT INTO Film_valutati(username, ID_film, valutazione) VALUES
	('00', 2, 5);

UPDATE Film
set valutazione_media = (valutazione_media*(numero_voti)+5)/(numero_voti+1), numero_voti = numero_voti+1
where ID = 2;



INSERT INTO Film_valutati(username, ID_film, valutazione) VALUES
	('01', 2, 3);

UPDATE Film
set valutazione_media = (valutazione_media*(numero_voti)+3)/(numero_voti+1), numero_voti = numero_voti+1
where ID = 2;




INSERT INTO Film_valutati(username, ID_film, valutazione) VALUES
	('10', 2, 5);

UPDATE Film
set valutazione_media = (valutazione_media*(numero_voti)+5)/(numero_voti+1), numero_voti = numero_voti+1
where ID = 2;



















