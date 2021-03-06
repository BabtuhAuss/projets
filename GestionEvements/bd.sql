DROP TABLE EVENEMENT;
DROP TABLE MENU;
DROP TABLE ARGUCOMMERCIAL;
DROP TABLE EVENEMENT_ARCHIVE;

CREATE TABLE MENU(
	id INT(10) PRIMARY KEY AUTO_INCREMENT,
	entrees	TEXT,
	plats TEXT,
	dessert TEXT,
	canape TEXT);

CREATE TABLE ARGUCOMMERCIAL(
	id INT(10) PRIMARY KEY AUTO_INCREMENT,
	entrees TEXT,
	plats TEXT,
	dessert TEXT,
	vinBlanc TEXT,
	vinRouge TEXT,
	champagne TEXT);

CREATE TABLE EVENEMENT(
	id	INT(10)	PRIMARY KEY AUTO_INCREMENT,
	nom VARCHAR(255) NOT NULL,
	nbpersonnes INT(5) NOT NULL,
	horaireDebut TEXT,
	salon TEXT,
	typeReception TEXT,
	idMenu INT(10),
	idArguComm INT(10),
	vaisselle TEXT,
	dressageCouvert TEXT,
	FOREIGN KEY (idMenu) REFERENCES MENU(id),
	FOREIGN KEY (idArguComm) REFERENCES ARGUCOMMERCIAL(id));

CREATE TABLE EVENEMENT_ARCHIVE(
	id	INT(10)	PRIMARY KEY AUTO_INCREMENT,
	nom VARCHAR(255) NOT NULL,
	nbpersonnes INT(5) NOT NULL,
	horaireDebut TEXT,
	salon TEXT,
	typeReception TEXT,
	idMenu INT(10),
	idArguComm INT(10),
	vaiselle TEXT,
	dressageCouvert TEXT,
	FOREIGN KEY (idMenu) REFERENCES MENU(id),
	FOREIGN KEY (idArguComm) REFERENCES ARGUCOMMERCIAL(id));