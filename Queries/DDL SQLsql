CREATE TABLE Cinema
(
  nome VARCHAR(45) NOT NULL,
  regione VARCHAR(45) NOT NULL,
  provincia VARCHAR(45) NOT NULL,
  indirizzo VARCHAR(45) NOT NULL,
  PRIMARY KEY (nome, regione, provincia, indirizzo)
);

CREATE TABLE Contatto
(
  contatto VARCHAR(45) NOT NULL,
  nome_cinema VARCHAR(45) NOT NULL,
  regione_cinema VARCHAR(45) NOT NULL,
  provincia_cinema VARCHAR(45) NOT NULL,
  indirizzo_cinema VARCHAR(45) NOT NULL,
  PRIMARY KEY (contatto, nome_cinema, regione_cinema, provincia_cinema, indirizzo_cinema),
  FOREIGN KEY (nome_cinema, regione_cinema, provincia_cinema, indirizzo_cinema) REFERENCES Cinema(nome, regione, provincia, indirizzo)
);

CREATE TABLE Sala
(
  ID_sala INT NOT NULL,
  nome_cinema VARCHAR(45) NOT NULL,
  regione_cinema VARCHAR(45) NOT NULL,
  provincia_cinema VARCHAR(45) NOT NULL,
  indirizzo_cinema VARCHAR(45) NOT NULL,
  PRIMARY KEY (ID_sala, nome_cinema, regione_cinema, provincia_cinema, indirizzo_cinema),
  FOREIGN KEY (nome_cinema, regione_cinema, provincia_cinema, indirizzo_cinema) REFERENCES Cinema(nome, regione, provincia, indirizzo)
);

CREATE TABLE Redattore
(
  username VARCHAR(45) NOT NULL,
  email VARCHAR(320) NOT NULL,
  password VARCHAR(45) NOT NULL,
  data_inizio_collaborazione DATE NOT NULL,
  PRIMARY KEY (username)
);

CREATE TABLE Utente_visitatore
(
  username VARCHAR(45) NOT NULL,
  email VARCHAR(320) NOT NULL,
  password VARCHAR(45) NOT NULL,
  PRIMARY KEY (username)
);

CREATE TABLE Persona
(
  ID INT NOT NULL,
  nome VARCHAR(45) NOT NULL,
  cognome VARCHAR(45) NOT NULL,
  luogo_nascita VARCHAR(100),
  data_nascita DATE,
  biografia TEXT,
  foto BYTEA,
  PRIMARY KEY (ID)
);

CREATE TABLE Piattaforma_tv
(
  Nome VARCHAR(45) NOT NULL,
  PRIMARY KEY (Nome)
);

CREATE TABLE Contenuto
(
  ID INT NOT NULL,
  nome VARCHAR(45) NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE Modifica
(
  username_redattore VARCHAR(45) NOT NULL,
  ID_contenuto INT NOT NULL,
  PRIMARY KEY (username_redattore, ID_contenuto),
  FOREIGN KEY (username_redattore) REFERENCES Redattore(username),
  FOREIGN KEY (ID_contenuto) REFERENCES Contenuto(ID)
);

CREATE TABLE Preferiti
(
  username VARCHAR(45) NOT NULL,
  ID_contenuto INT NOT NULL,
  PRIMARY KEY (username, ID_contenuto),
  FOREIGN KEY (username) REFERENCES Utente_visitatore(username),
  FOREIGN KEY (ID_contenuto) REFERENCES Contenuto(ID)
);

CREATE TABLE Film
(
  genere TEXT,
  valutazione_media DECIMAL(3,2) NOT NULL,
  nome VARCHAR(45) NOT NULL,
  anno_produzione SMALLINT,
  paese VARCHAR(45),
  durata SMALLINT,
  numero_voti INT NOT NULL,
  ID_regista INT,
  ID_film INT NOT NULL,
  PRIMARY KEY (ID_film),
  FOREIGN KEY (ID_regista) REFERENCES Persona(ID),
  FOREIGN KEY (ID_film) REFERENCES Contenuto(ID)
);

CREATE TABLE Serie_tv
(
  genere TEXT,
  valutazione_media DECIMAL(3,2) NOT NULL,
  nome VARCHAR(45) NOT NULL,
  numero_voti INT NOT NULL,
  ID_serie INT NOT NULL,
  PRIMARY KEY (ID_serie),
  FOREIGN KEY (ID_serie) REFERENCES Contenuto(ID)
);

CREATE TABLE Programma_tv
(
  genere TEXT,
  valutazione_media DECIMAL(3,2) NOT NULL,
  nome VARCHAR(45) NOT NULL,
  anno_onda SMALLINT,
  paese VARCHAR(45),
  durata SMALLINT,
  descrizione TEXT,
  numero_voti INT NOT NULL,
  ID_programma INT NOT NULL,
  PRIMARY KEY (ID_programma),
  FOREIGN KEY (ID_programma) REFERENCES Contenuto(ID)
);

CREATE TABLE Film_valutati
(
  valutazione INT NOT NULL,
  username VARCHAR(45) NOT NULL,
  ID_film INT NOT NULL,
  PRIMARY KEY (username, ID_film),
  FOREIGN KEY (username) REFERENCES Utente_visitatore(username),
  FOREIGN KEY (ID_film) REFERENCES Film(ID_film)
);

CREATE TABLE Serie_valutate
(
  valutazione INT NOT NULL,
  username VARCHAR(45) NOT NULL,
  ID_serie INT NOT NULL,
  PRIMARY KEY (username, ID_serie),
  FOREIGN KEY (username) REFERENCES Utente_visitatore(username),
  FOREIGN KEY (ID_serie) REFERENCES Serie_tv(ID_serie)
);

CREATE TABLE Programmi_valutati
(
  valutazione INT NOT NULL,
  username VARCHAR(45) NOT NULL,
  ID_programma INT NOT NULL,
  PRIMARY KEY (username, ID_programma),
  FOREIGN KEY (username) REFERENCES Utente_visitatore(username),
  FOREIGN KEY (ID_programma) REFERENCES Programma_tv(ID_programma)
);

CREATE TABLE Trasmissione_serie
(
  Nome_piattaforma VARCHAR(45) NOT NULL,
  ID_serie INT NOT NULL,
  PRIMARY KEY (Nome_piattaforma, ID_serie),
  FOREIGN KEY (Nome_piattaforma) REFERENCES Piattaforma_tv(Nome),
  FOREIGN KEY (ID_serie) REFERENCES Serie_tv(ID_serie)
);

CREATE TABLE Trasmissione_programma
(
  Nome_piattaforma VARCHAR(45) NOT NULL,
  ID_programma INT NOT NULL,
  PRIMARY KEY (Nome_piattaforma, ID_programma),
  FOREIGN KEY (Nome_piattaforma) REFERENCES Piattaforma_tv(Nome),
  FOREIGN KEY (ID_programma) REFERENCES Programma_tv(ID_programma)
);

CREATE TABLE Recitazione_film
(
  personaggio VARCHAR(45),
  ID_attore INT NOT NULL,
  ID_film INT NOT NULL,
  PRIMARY KEY (ID_attore, ID_film),
  FOREIGN KEY (ID_attore) REFERENCES Persona(ID),
  FOREIGN KEY (ID_film) REFERENCES Film(ID_film)
);

CREATE TABLE Recitazione_serie
(
  personaggio VARCHAR(45),
  ID_attore INT NOT NULL,
  ID_serie INT NOT NULL,
  PRIMARY KEY (ID_attore, ID_serie),
  FOREIGN KEY (ID_attore) REFERENCES Persona(ID),
  FOREIGN KEY (ID_serie) REFERENCES Serie_tv(ID_serie)
);

CREATE TABLE Sceneggiatura_film
(
  ID_sceneggiatore INT NOT NULL,
  ID_film INT NOT NULL,
  PRIMARY KEY (ID_sceneggiatore, ID_film),
  FOREIGN KEY (ID_sceneggiatore) REFERENCES Persona(ID),
  FOREIGN KEY (ID_film) REFERENCES Film(ID_film)
);

CREATE TABLE Proiezione
(
  data_orario TIMESTAMP NOT NULL,
  prezzo DECIMAL(5,2),
  ID_sala INT NOT NULL,
  nome_cinema VARCHAR(45) NOT NULL,
  regione_cinema VARCHAR(45) NOT NULL,
  provincia_cinema VARCHAR(45) NOT NULL,
  indirizzo_cinema VARCHAR(45) NOT NULL,
  ID_film INT NOT NULL,
  PRIMARY KEY (data_orario, ID_sala, nome_cinema, regione_cinema, provincia_cinema, indirizzo_cinema),
  FOREIGN KEY (ID_sala, nome_cinema, regione_cinema, provincia_cinema, indirizzo_cinema) REFERENCES Sala(ID_sala, nome_cinema, regione_cinema, provincia_cinema, indirizzo_cinema),
  FOREIGN KEY (ID_film) REFERENCES Film(ID_film)
);

CREATE TABLE Stagione
(
  ordinamento INT NOT NULL,
  titolo VARCHAR(45) NOT NULL,
  anno_onda INT,
  ID_serie INT NOT NULL,
  PRIMARY KEY (ordinamento, ID_serie),
  FOREIGN KEY (ID_serie) REFERENCES Serie_tv(ID_serie)
);

CREATE TABLE Episodio
(
  ordinamento_episodio INT NOT NULL,
  titolo VARCHAR(45) NOT NULL,
  durata SMALLINT,
  nome_stagione VARCHAR(45) NOT NULL,
  anno_onda SMALLINT,
  ID_regista INT,
  ID_serie INT NOT NULL,
  ordinamento_stagione INT NOT NULL,
  PRIMARY KEY (ordinamento_episodio, ID_serie, ordinamento_stagione),
  FOREIGN KEY (ID_regista) REFERENCES Persona(ID),
  FOREIGN KEY (ID_serie, ordinamento_stagione) REFERENCES Stagione(ID_serie, ordinamento)
);

CREATE TABLE Sceneggiatura_episodio
(
  ID_sceneggiatore INT NOT NULL,
  ordinamento_episodio INT NOT NULL,
  ID_serie INT NOT NULL,
  ordinamento_stagione INT NOT NULL,
  PRIMARY KEY (ID_sceneggiatore, ordinamento_episodio, ID_serie, ordinamento_stagione),
  FOREIGN KEY (ID_sceneggiatore) REFERENCES Persona(ID),
  FOREIGN KEY (ordinamento_episodio, ID_serie, ordinamento_stagione) REFERENCES Episodio(ordinamento_episodio, ID_serie, ordinamento_stagione)
);