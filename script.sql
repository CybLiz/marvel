DROP TABLE IF EXISTS Fillms;

CREATE TABLE Fillms (
	Idfilms_Fillms SERIAL(3) AUTO_INCREMENT NOT NULL,
	Titre_Fillms VARCHAR(128),
	Durée_Fillms VARCHAR(128),
	AnnéeDeSortie_Fillms DATE,
	PRIMARY KEY (Idfilms_Fillms)
) ENGINE = InnoDB;

DROP TABLE IF EXISTS Utilisateurs;

CREATE TABLE Utilisateurs (
	IdUtilisateurs_Utilisateurs SERIAL(3) AUTO_INCREMENT NOT NULL,
	Nom_Utilisateurs VARCHAR(128),
	Prénom_Utilisateurs VARCHAR(128),
	Email_Utilisateurs VARCHAR(128),
	MotDePasse_Utilisateurs VARCHAR(128),
	Rôle_Utilisateurs VARCHAR(128),
	PRIMARY KEY (IdUtilisateurs_Utilisateurs)
) ENGINE = InnoDB;

DROP TABLE IF EXISTS Acteurs;

CREATE TABLE Acteurs (
	Idacteurs_actrices_Acteurs VARCHAR(128) AUTO_INCREMENT NOT NULL,
	Nom_Acteurs VARCHAR(128),
	Prénom_Acteurs VARCHAR(128),
	DateDeNaissance_Acteurs DATE,
	PRIMARY KEY (Idacteurs_actrices_Acteurs)
) ENGINE = InnoDB;

DROP TABLE IF EXISTS Réalisateurs;

CREATE TABLE Réalisateurs (
	IdRéalisateurs_Réalisateurs SERIAL(3) AUTO_INCREMENT NOT NULL,
	Nom_Réalisateurs VARCHAR(128),
	Prénom_Réalisateurs VARCHAR(128),
	PRIMARY KEY (IdRéalisateurs_Réalisateurs)
) ENGINE = InnoDB;

DROP TABLE IF EXISTS FilmsFavoris;

CREATE TABLE FilmsFavoris (
	IdUtilisateurs_Utilisateurs INT AUTO_INCREMENT NOT NULL,
	Idfilms_Fillms INT NOT NULL,
	PRIMARY KEY (IdUtilisateurs_Utilisateurs, Idfilms_Fillms)
) ENGINE = InnoDB;

DROP TABLE IF EXISTS Jouer;

CREATE TABLE Jouer (
	Idfilms_Fillms INT AUTO_INCREMENT NOT NULL,
	Idacteurs_actrices_Acteurs INT NOT NULL,
	Rôle_Acteurs VARCHAR(128),
	PRIMARY KEY (Idfilms_Fillms, Idacteurs_actrices_Acteurs)
) ENGINE = InnoDB;

DROP TABLE IF EXISTS Réaliser;

CREATE TABLE Réaliser (
	Idfilms_Fillms INT AUTO_INCREMENT NOT NULL,
	IdRéalisateurs_Réalisateurs INT NOT NULL,
	PRIMARY KEY (Idfilms_Fillms, IdRéalisateurs_Réalisateurs)
) ENGINE = InnoDB;

ALTER TABLE
	FilmsFavoris
ADD
	CONSTRAINT FK_FilmsFavoris_IdUtilisateurs_Utilisateurs FOREIGN KEY (IdUtilisateurs_Utilisateurs) REFERENCES Utilisateurs (IdUtilisateurs_Utilisateurs);

ALTER TABLE
	FilmsFavoris
ADD
	CONSTRAINT FK_FilmsFavoris_Idfilms_Fillms FOREIGN KEY (Idfilms_Fillms) REFERENCES Fillms (Idfilms_Fillms);

ALTER TABLE
	Jouer
ADD
	CONSTRAINT FK_Jouer_Idfilms_Fillms FOREIGN KEY (Idfilms_Fillms) REFERENCES Fillms (Idfilms_Fillms);

ALTER TABLE
	Jouer
ADD
	CONSTRAINT FK_Jouer_Idacteurs_actrices_Acteurs FOREIGN KEY (Idacteurs_actrices_Acteurs) REFERENCES Acteurs (Idacteurs_actrices_Acteurs);

ALTER TABLE
	Réaliser
ADD
	CONSTRAINT FK_Réaliser_Idfilms_Fillms FOREIGN KEY (Idfilms_Fillms) REFERENCES Fillms (Idfilms_Fillms);

ALTER TABLE
	Réaliser
ADD
	CONSTRAINT FK_Réaliser_IdRéalisateurs_Réalisateurs FOREIGN KEY (IdRéalisateurs_Réalisateurs) REFERENCES Réalisateurs (IdRéalisateurs_Réalisateurs);