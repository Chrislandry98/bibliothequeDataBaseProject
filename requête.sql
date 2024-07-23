
--requête pour trouver les étudiants ayant emprunter un certain livre
SELECT DISTINCT e.id_etudiant, e.nom, e.prénom, e.date_naiss, e.email, e.tel, e.date_inscription FROM étudiants e JOIN emprunts em ON e.id_etudiant = em.id_etudiant_étudiants;

--Requête pour lister les emprunts en cours d'un étudiant
SELECT em.date_empt, em.date_retour, em.retour, l.titre, l.auteur FROM emprunts em JOIN livres l ON em.id_livre_livres = l.id_livre WHERE em.id_etudiant_étudiants = 3 AND em.retour = FALSE;

--Requête pour compter le nombre total d'emprunts par livre
SELECT l.id_livre, l.titre, l.auteur, COUNT(em.id_etudiant_étudiants && em.id_livre_livres) AS nombre_emprunts FROM livres l LEFT JOIN emprunts em ON l.id_livre = em.id_livre_livres GROUP BY l.id_livre, l.titre, l.auteur ORDER BY `l`.`id_livre` ASC;

--requête pour lister les livre d'un certain genre
SELECT * FROM livres WHERE id_genre_genres = 2;