delimiter |
CREATE PROCEDURE emprunt (in livre_emprunte INT, etudiant_emprunteur INT)
BEGIN
    DECLARE emprunt int
    INSERT INTO emprunt (date_empt,
        date_retour,
        retour,
        id_livre_livres,
        id_etudiant_étudiants)
    VALUES(NOW(),DATE_ADD(NOW(), INTERVAL 30), false, livre_emprunte, etudiant_emprunteur);
END |
delimiter ;

delimiter |
CREATE function verifierDisponibiliteLivre (in id_livre_recherche int) returns boolean
BEGIN
    DECLARE reponse boolean, result int;

    SELECT nbr_exemplaire INTO result FROM livres WHERE id_livre = id_livrerecherche;
    IF (result > 0) THEN 
            set response = true;
    ELSE
            set reponse = false;
    END IF;  
    return reponse;       
END |
delimiter ;
