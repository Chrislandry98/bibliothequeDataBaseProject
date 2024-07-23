# procedure to add a borrow

drop procedure if exists addEmprunt;
delimiter |
CREATE PROCEDURE addEmprunt (in livre_emprunte INT, etudiant_emprunteur INT)
BEGIN
    INSERT INTO emprunts (date_empt,
        date_retour,
        retour,
        id_livre_livres,
        id_etudiant_étudiants)
    VALUES (NOW(),DATE_ADD(NOW(), INTERVAL 30 day), false, livre_emprunte, etudiant_emprunteur);
END |
delimiter ;

# function to verify the availability of a book
drop function if exists isBook;
delimiter |
CREATE function isBook (id_livre_recherche int) 
returns boolean
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
