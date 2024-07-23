#Ma base de données : 
#-----------------------------------------------------------------------------------------
# 1. database creation
#-----------------------------------------------------------------------------------------

drop database if exists bibliotheque;
CREATE DATABASE bibliotheque CHARACTER SET 'utf8';
USE bibliotheque;

#-----------------------------------------------------------------------------------------
# 2. tables creation
#-----------------------------------------------------------------------------------------
	
DROP TABLE IF EXISTS livres;
CREATE TABLE livres(
        id_livre     int (50) not null,
        titre     Varchar (50) not null,
        auteur     Varchar (50) not null,
        année_public     int not null,
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

#-----------------------------------------------------------------------------------------
# 3. inserting data in tables
#-----------------------------------------------------------------------------------------

INSERT INTO genres(nom_genre)
	VALUES("Fiction"),
		("Christian"),
		("Adventure"),
		("romances"),
		("mystery"),
		("Whitchcraft");

INSERT INTO étudiants(nom, prénom, date_naiss, email,tel, date_inscription )
	VALUES("Kamga","kotopi","1997-10-23", "kotopi@gmail.com", "698741234","2022-03-05"),
		("Siewe","Mignon","1999-05-23", "Mignon@gmail.com", "691547834","2022-10-15"),
		("Abesoolo","Hughes","1993-10-03", "Hughes@gmail.com", "698851234","2022-03-13"),
		("Tema","Landry","1992-11-23", "Tema@gmail.com", "69941234","2022-02-01"),
		("Atagoun","Eric","1999-02-02", "eric@gmail.com", "694722134","2022-02-21"),
		("Alioum","Alfred","1997-02-03", "alfred@gmail.com", "692747834","2022-07-10"),
		("Satching","le","1997-03-04", "sule@gmail.com", "693794134","2022-04-04"),
		("Tenor","Ellie","1997-07-14", "ellie@gmail.com", "691789634","2022-01-21"),
		("Kella","Joyce","1997-08-07", "kella@gmail.com", "694754534","2022-05-08"),
		("Tegang","karlyne","1997-10-12", "karlyne@gmail.com", "693713134","2022-07-27");


INSERT INTO livres(auteur, titre, année_public, nbr_exemplaire,id_genre_genres)
	VALUES("Jean-Jacques Rousseau","The Confessions",1981,60, 2),
		("Erich Fromm","The Art of Loving",1956,14, 3),
		("Mark Twain","The Adventures of Huckleberry Finn",1884, 28, 4),
		("James Thurber","My Life and Hard Times",1933,11, 5),
		("William Shakespeare","Romeo and Juliet",1996,14, 1),
		("John Barth","The End of the Road",1958,20, 1),
		("Aldous Huxley","Brave New World",1932,19, 2),
		("Fritz Peters","Boyhood with Gurdjieff",1964,17, 2),
		("P.D. Ouspensky","In Search of the Miraculous",1949,38, 1),
		("Johann Sebastian Bach", "an Introduction to his Life and Works",1962,16, 1),
		("Hunter Davies","The Beatles",1968,34, 2),
		("P.D. Ouspensky","The Strange Life of Ivan Osokin",1955,16, 1),
		("René Daumal","Mount Analogue",1952,10, 2),
		("Bernard Malamud","The Assistant",1957,19, 2),
		("C.G. Jung","Memories Dreams Reflections",1961,35, 1),
		("Philip Roth","Goodbye, Columbus",1959,9, 3),
		("Malcolm X and Alex Haley","Autobiography",1964,4, 3),
		("Jule Eisenbud, M.D.","The World of Ted Serios",1968,3, 1),
		("Penelope Gilliatt","A State of Change",1967,22, 3);
		
INSERT INTO emprunts(date_empt, date_retour, retour, id_livre_livres, id_etudiant_étudiants)
	VALUES("2024-06-24" ,"2024-07-28", false, 2 ,3),
		("2024-06-21", "2024-06-23", TRUE, 4 ,8),
		("2024-03-25", "2024-03-28", TRUE, 5 ,6),
		("2024-06-23", "2024-06-24", TRUE, 3 ,7),
		("2024-06-20", "2024-06-25", TRUE, 9 ,6),
		("2024-06-12", "2024-08-14", false, 1 ,7),
		("2024-06-04", "2024-010-06",false, 2,9),
		("2024-06-01", "2024-11-12", false, 1 ,3),
		("2024-06-02", "2024-8-10", false, 2 ,1),
		("2024-06-05", "2024-09-10", false, 2 ,2),
		("2024-06-12", "2024-06-15", TRUE, 3 ,5),
		("2024-06-04", "2024-06-05", TRUE, 7,7),
		("2024-06-11", "2024-08-18", false, 3,9),
		("2024-06-22", "2024-06-28", TRUE, 2,10),
		("2024-06-21", "2024-07-28", false, 5 ,9);
		

#-----------------------------------------------------------------------------------------
# 4. procedure and function
#-----------------------------------------------------------------------------------------

# procedure to add a borrow

drop procedure if exists addEmprunt;
delimiter |
CREATE PROCEDURE addEmprunt (in livre_emprunte INT, etudiant_emprunteur INT, in days INT)
BEGIN
    INSERT INTO emprunts (date_empt,
        date_retour,
        retour,
        id_livre_livres,
        id_etudiant_étudiants)
    VALUES (NOW(),DATE_ADD(NOW(), INTERVAL days day), false, livre_emprunte, etudiant_emprunteur);
END |
delimiter ;

# function to verify the availability of a book
drop function if exists isBook;
delimiter |
CREATE function isBook (id_livre_recherche int) 
returns boolean
deterministic
BEGIN
    DECLARE response boolean;
    DECLARE result int;

    SELECT nbr_exemplaire INTO result FROM livres WHERE id_livre = id_livre_recherche;
    IF (result > 0) THEN 
            set response = true;
    ELSE
            set response = false;
    END IF;  
    return response;       
END |
delimiter ;


#-----------------------------------------------------------------------------------------
# 5. view and trigger to update livres at borrow and return
#-----------------------------------------------------------------------------------------

# 1. view to display emprunts details
#------------------------------------------------------------------

drop view if exists empruntDetails;
create view empruntDetails as
select titre, nom, date_empt, date_retour from emprunts inner join
livres on  id_livre = id_livre_livres inner join
étudiants on id_etudiant = id_etudiant_étudiants;

# calling the view
select * from empruntDetails order by date_empt;

# 2. tirgger update book stock when a book is borrow and return
#------------------------------------------------------------------

# a. when a book is borrowed
drop trigger if exists reduceBook;
delimiter //
create trigger reduceBook
after insert on emprunts
for each row
begin
	update livres set nbr_exemplaire = nbr_exemplaire - 1
    where id_livre = new.id_livre_livres;
end //
delimiter ;

# b. when a book is returned
drop trigger if exists addBook;
delimiter //
create trigger addBook
after update on emprunts
for each row
begin
	update livres set nbr_exemplaire = nbr_exemplaire + 1
    where id_livre = new.id_livre_livres;
end //
delimiter ;

#----------------------------------------------------------------------------------------
# 5. various sql queries
#----------------------------------------------------------------------------------------

# requête pour trouver les étudiants ayant emprunter un certain livre
SELECT e.id_etudiant, e.nom, e.prénom, e.date_naiss, e.email, e.tel, e.date_inscription FROM étudiants e JOIN emprunts em ON e.id_etudiant = em.id_etudiant_étudiants JOIN livres l ON em.id_livre_livres = l.id_livre WHERE l.id_livre = 3;

# Requête pour lister les emprunts en cours d_un étudiant
SELECT em.date_empt, em.date_retour, em.retour, l.titre, l.auteur FROM emprunts em JOIN livres l ON em.id_livre_livres = l.id_livre WHERE em.id_etudiant_étudiants = 3 AND em.retour = FALSE;

# Requête pour compter le nombre total d_emprunts par livre
SELECT l.id_livre, l.titre, l.auteur, COUNT(em.id_etudiant_étudiants && em.id_livre_livres) AS nombre_emprunts FROM livres l LEFT JOIN emprunts em ON l.id_livre = em.id_livre_livres GROUP BY l.id_livre, l.titre, l.auteur ORDER BY `l`.`id_livre` ASC;

# requête pour lister les livre d_un certain genre
SELECT * FROM livres WHERE id_genre_genres = 2;


ALTER TABLE livres ADD CONSTRAINT FK_livres_id_genre_genres FOREIGN KEY (id_genre_genres) REFERENCES genres(id_genre);
ALTER TABLE emprunts ADD CONSTRAINT FK_emprunts_id_livre_livres FOREIGN KEY (id_livre_livres) REFERENCES livres(id_livre);
ALTER TABLE emprunts ADD CONSTRAINT FK_emprunts_id_etudiant_étudiants FOREIGN KEY (id_etudiant_étudiants) REFERENCES étudiants(id_etudiant);
