#Ma base de données : 
CREATE DATABASE bibliotheque CHARACTER SET 'utf8';
USE bibliotheque;
	
DROP TABLE IF EXISTS livres;
CREATE TABLE livres(
        id_livre     int (50) not null,
        titre     Varchar (50) not null,
        auteur     Varchar (50) not null,
        année_public     Date not null,
        nbr_exemplaire     Int (25) not null,
        id_genre_genres     Int (25) not null,
        PRIMARY KEY (id_livre)
)ENGINE=InnoDB;



DROP TABLE IF EXISTS genres;
CREATE TABLE genres(
        id_genre     int (50) not null,
        nom_genre     Varchar (50) not null,
        PRIMARY KEY (id_genre)
)ENGINE=InnoDB;



DROP TABLE IF EXISTS étudiants;
CREATE TABLE étudiants(
        id_etudiant     int (50) not null,
        nom     Varchar (25) not null,
        prénom     Varchar (25) not null,
        date_naiss     Date not null,
        email     Varchar (50) not null,
        tel     Varchar (50) not null,
        date_inscription     Date not null,
        PRIMARY KEY (id_etudiant)
)ENGINE=InnoDB;



DROP TABLE IF EXISTS emprunts;
CREATE TABLE emprunts(
        date_empt     Date not null,
        date_retour     Date not null,
        retour     Bool not null,
        id_livre_livres     int (50) not null,
        id_etudiant_étudiants     int (50) not null,
        PRIMARY KEY (id_livre_livres,id_etudiant_étudiants)
)ENGINE=InnoDB;


alter table livres
	modify id_livre int (50) not null AUTO_INCREMENT;
    
alter table étudiants
	modify id_etudiant int (50) not null AUTO_INCREMENT;
    
alter table genres
	modify id_genre int (50) not null AUTO_INCREMENT;
    
alter table emprunts
	modify id_livre_livres int (50) not null AUTO_INCREMENT;



ALTER TABLE livres ADD CONSTRAINT FK_livres_id_genre_genres FOREIGN KEY (id_genre_genres) REFERENCES genres(id_genre);
ALTER TABLE emprunts ADD CONSTRAINT FK_emprunts_id_livre_livres FOREIGN KEY (id_livre_livres) REFERENCES livres(id_livre);
ALTER TABLE emprunts ADD CONSTRAINT FK_emprunts_id_etudiant_étudiants FOREIGN KEY (id_etudiant_étudiants) REFERENCES étudiants(id_etudiant);
