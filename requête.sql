
--insertion de livre
INSERT INTO livres (id_livre, titre, auteur, année_public, nbr_exemplaire, id_genre_genres)
VALUES
(1, '1984', 'George Orwell', '1949-06-08', 5, 1),
(2, 'Brave New World', 'Aldous Huxley', '1932-08-30', 4, 1),
(3, 'To Kill a Mockingbird', 'Harper Lee', '1960-07-11', 6, 2),
(4, 'The Great Gatsby', 'F. Scott Fitzgerald', '1925-04-10', 3, 2),
(5, 'One Hundred Years of Solitude', 'Gabriel Garcia Marquez', '1967-06-05', 7, 3),
(6, 'Moby Dick', 'Herman Melville', '1851-10-18', 2, 4),
(7, 'War and Peace', 'Leo Tolstoy', '1869-01-01', 4, 4),
(8, 'Pride and Prejudice', 'Jane Austen', '1813-01-28', 5, 5),
(9, 'The Catcher in the Rye', 'J.D. Salinger', '1951-07-16', 6, 2),
(10, 'Crime and Punishment', 'Fyodor Dostoevsky', '1866-01-01', 3, 4),
(11, 'The Brothers Karamazov', 'Fyodor Dostoevsky', '1880-01-01', 4, 4),
(12, 'Wuthering Heights', 'Emily Bronte', '1847-12-01', 5, 5),
(13, 'Jane Eyre', 'Charlotte Bronte', '1847-10-16', 6, 5),
(14, 'The Odyssey', 'Homer', '0800-01-01', 2, 6),
(15, 'The Iliad', 'Homer', '0750-01-01', 3, 6),
(16, 'The Divine Comedy', 'Dante Alighieri', '1320-01-01', 1, 7),
(17, 'Les Miserables', 'Victor Hugo', '1862-01-01', 4, 8),
(18, 'The Hunchback of Notre-Dame', 'Victor Hugo', '1831-01-15', 3, 8),
(19, 'Anna Karenina', 'Leo Tolstoy', '1877-01-01', 5, 4),
(20, 'Madame Bovary', 'Gustave Flaubert', '1857-04-01', 4, 8),
(21, 'The Picture of Dorian Gray', 'Oscar Wilde', '1890-06-20', 6, 9),
(22, 'The Count of Monte Cristo', 'Alexandre Dumas', '1844-01-01', 7, 8),
(23, 'Don Quixote', 'Miguel de Cervantes', '1605-01-16', 2, 10),
(24, 'The Hobbit', 'J.R.R. Tolkien', '1937-09-21', 5, 11),
(25, 'The Lord of the Rings', 'J.R.R. Tolkien', '1954-07-29', 3, 11),
(26, 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', '1997-06-26', 8, 11),
(27, 'Harry Potter and the Chamber of Secrets', 'J.K. Rowling', '1998-07-02', 8, 11),
(28, 'Harry Potter and the Prisoner of Azkaban', 'J.K. Rowling', '1999-07-08', 7, 11),
(29, 'Harry Potter and the Goblet of Fire', 'J.K. Rowling', '2000-07-08', 6, 11),
(30, 'Harry Potter and the Order of the Phoenix', 'J.K. Rowling', '2003-06-21', 5, 11),
(31, 'Harry Potter and the Half-Blood Prince', 'J.K. Rowling', '2005-07-16', 4, 11),
(32, 'Harry Potter and the Deathly Hallows', 'J.K. Rowling', '2007-07-21', 3, 11),
(33, 'The Alchemist', 'Paulo Coelho', '1988-01-01', 9, 3),
(34, 'The Little Prince', 'Antoine de Saint-Exupery', '1943-04-06', 10, 12),
(35, 'Fahrenheit 451', 'Ray Bradbury', '1953-10-19', 6, 1),
(36, 'Dracula', 'Bram Stoker', '1897-05-26', 4, 13),
(37, 'Frankenstein', 'Mary Shelley', '1818-01-01', 3, 13),
(38, 'The Metamorphosis', 'Franz Kafka', '1915-01-01', 5, 14),
(39, 'The Stranger', 'Albert Camus', '1942-01-01', 4, 8),
(40, 'Catch-22', 'Joseph Heller', '1961-11-10', 2, 15),
(41, 'The Grapes of Wrath', 'John Steinbeck', '1939-04-14', 3, 2),
(42, 'Of Mice and Men', 'John Steinbeck', '1937-11-23', 4, 2),
(43, 'Great Expectations', 'Charles Dickens', '1861-01-01', 5, 8),
(44, 'David Copperfield', 'Charles Dickens', '1850-01-01', 4, 8),
(45, 'Oliver Twist', 'Charles Dickens', '1839-01-01', 6, 8),
(46, 'Bleak House', 'Charles Dickens', '1853-01-01', 3, 8),
(47, 'A Tale of Two Cities', 'Charles Dickens', '1859-01-01', 4, 8),
(48, 'The Scarlet Letter', 'Nathaniel Hawthorne', '1850-03-16', 5, 2),
(49, 'Moby-Dick', 'Herman Melville', '1851-10-18', 2, 4),
(50, 'The Old Man and the Sea', 'Ernest Hemingway', '1952-09-01', 7, 2);

--insertion d'étudiants
INSERT INTO etudiants (id_etudiant, nom, prénom, date_naiss, email, tel, date_inscription)
VALUES
(1, 'Dupont', 'Jean', '2000-05-14', 'jean.dupont@example.com', '0123456789', '2022-09-01'),
(2, 'Martin', 'Sophie', '1999-07-22', 'sophie.martin@example.com', '0123456790', '2022-09-01'),
(3, 'Durand', 'Luc', '2001-03-11', 'luc.durand@example.com', '0123456791', '2022-09-01'),
(4, 'Leroy', 'Emma', '2000-11-30', 'emma.leroy@example.com', '0123456792', '2022-09-01'),
(5, 'Moreau', 'Louis', '1998-02-19', 'louis.moreau@example.com', '0123456793', '2022-09-01'),
(6, 'Simon', 'Chloe', '1997-08-09', 'chloe.simon@example.com', '0123456794', '2022-09-01'),
(7, 'Michel', 'Pierre', '2002-04-25', 'pierre.michel@example.com', '0123456795', '2022-09-01'),
(8, 'Bernard', 'Marie', '1999-12-12', 'marie.bernard@example.com', '0123456796', '2022-09-01'),
(9, 'Petit', 'Paul', '1998-01-15', 'paul.petit@example.com', '0123456797', '2022-09-01'),
(10, 'Roux', 'Laura', '2000-10-05', 'laura.roux@example.com', '0123456798', '2022-09-01'),
(11, 'Fournier', 'Julie', '2001-06-21', 'julie.fournier@example.com', '0123456799', '2022-09-01'),
(12, 'Girard', 'Thomas', '1997-09-14', 'thomas.girard@example.com', '0123456800', '2022-09-01'),
(13, 'Andre', 'Lucie', '1998-05-17', 'lucie.andre@example.com', '0123456801', '2022-09-01'),
(14, 'Mercier', 'Hugo', '2000-02-28', 'hugo.mercier@example.com', '0123456802', '2022-09-01'),
(15, 'Dupuis', 'Camille', '1999-07-04', 'camille.dupuis@example.com', '0123456803', '2022-09-01'),
(16, 'Lambert', 'Nicolas', '2001-11-09', 'nicolas.lambert@example.com', '0123456804', '2022-09-01'),
(17, 'Bonnet', 'Clara', '1998-10-29', 'clara.bonnet@example.com', '0123456805', '2022-09-01'),
(18, 'Francois', 'Maxime', '2002-01-20', 'maxime.francois@example.com', '0123456806', '2022-09-01'),
(19, 'Martinez', 'Sarah', '1999-08-18', 'sarah.martinez@example.com', '0123456807', '2022-09-01'),
(20, 'Legrand', 'Victor', '2000-04-02', 'victor.legrand@example.com', '0123456808', '2022-09-01'),
(21, 'Garnier', 'Alice', '2001-12-27', 'alice.garnier@example.com', '0123456809', '2022-09-01'),
(22, 'Faure', 'Lucas', '1998-03-06', 'lucas.faure@example.com', '0123456810', '2022-09-01'),
(23, 'Rousseau', 'Manon', '1999-11-01', 'manon.rousseau@example.com', '0123456811', '2022-09-01'),
(24, 'Blanc', 'Quentin', '2002-07-13', 'quentin.blanc@example.com', '0123456812', '2022-09-01'),
(25, 'Gauthier', 'Elodie', '2000-08-21', 'elodie.gauthier@example.com', '0123456813', '2022-09-01'),
(26, 'Perrin', 'Antoine', '2001-02-15', 'antoine.perrin@example.com', '0123456814', '2022-09-01'),
(27, 'Morin', 'Eva', '1997-06-24', 'eva.morin@example.com', '0123456815', '2022-09-01'),
(28, 'Mathieu', 'Julien', '2000-03-19', 'julien.mathieu@example.com', '0123456816', '2022-09-01'),
(29, 'Clement', 'Anais', '1999-05-09', 'anais.clement@example.com', '0123456817', '2022-09-01'),
(30, 'Giraud', 'Matthieu', '2002-11-11', 'matthieu.giraud@example.com', '0123456818', '2022-09-01'),
(31, 'Masson', 'Elisa', '1998-09-23', 'elisa.masson@example.com', '0123456819', '2022-09-01'),
(32, 'Robin', 'Arthur', '2000-01-05', 'arthur.robin@example.com', '0123456820', '2022-09-01'),
(33, 'Marchand', 'Lea', '2001-10-16', 'lea.marchand@example.com', '0123456821', '2022-09-01'),
(34, 'Duval', 'Theo', '1999-06-11', 'theo.duval@example.com', '0123456822', '2022-09-01'),
(35, 'Denis', 'Lena', '1997-02-25', 'lena.denis@example.com', '0123456823', '2022-09-01'),
(36, 'Brun', 'Alexandre', '2002-08-30', 'alexandre.brun@example.com', '0123456824', '2022-09-01'),
(37, 'Blanchard', 'Laura', '2000-09-14', 'laura.blanchard@example.com', '0123456825', '2022-09-01'),
(38, 'Perrot', 'Gabriel', '1999-03-22', 'gabriel.perrot@example.com', '0123456826', '2022-09-01'),
(39, 'Meyer', 'Alicia', '2001-07-27', 'alicia.meyer@example.com', '0123456827', '2022-09-01'),
(40, 'Barbier', 'Nathan', '1998-12-19', 'nathan.barbier@example.com', '0123456828', '2022-09-01'),
(41, 'Bruneau', 'Morgane', '1997-01-08', 'morgane.bruneau@example.com', '0123456829', '2022-09-01'),
(42, 'Roy', 'Adrien', '2000-05-30', 'adrien.roy@example.com', '0123456830', '2022-09-01'),
(43, 'Morel', 'Estelle', '1999-11-07', 'estelle.morel@example.com', '0123456831', '2022-09-01'),
(44, 'Charpentier', 'Bastien', '2002-02-13', 'bastien.charpentier@example.com', '0123456832', '2022-09-01'),
(45, 'Aubert', 'Sarah', '2001-06-05', 'sarah.aubert@example.com', '0123456833', '2022-09-01'),
(46, 'Renard', 'Mathieu', '1998-04-10', 'mathieu.renard@example.com', '0123456834', '2022-09-01'),
(47, 'Schmitt', 'Julie', '2000-07-24', 'julie.schmitt@example.com', '0123456835', '2022-09-01'),
(48, 'Collin', 'Samuel', '1997-11-19', 'samuel.collin@example.com', '0123456836', '2022-09-01'),
(49, 'Weber', 'Alice', '1999-10-03', 'alice.weber@example.com', '0123456837', '2022-09-01'),
(50, 'Lambert', 'Olivier', '2001-03-14', 'olivier.lambert@example.com', '0123456838', '2022-09-01');

--insertion de genres
INSERT INTO genres (id_genre, nom_genre) VALUES
(1, 'Science Fiction'),
(2, 'Classics'),
(3, 'Literature'),
(4, 'Historical Fiction'),
(5, 'Romance'),
(6, 'Epic'),
(7, 'Poetry'),
(8, 'Drama'),
(9, 'Philosophical Fiction'),
(10, 'Adventure'),
(11, 'Fantasy'),
(12, 'Children'),
(13, 'Horror'),
(14, 'Absurdist Fiction'),
(15, 'Satire');

--insertion emprunts
INSERT INTO emprunts (date_empt, date_retour, retour, id_livre_livres, id_etudiant_etudiants)
VALUES

(CURDATE(), CURDATE() + INTERVAL 7 DAY, FALSE, 1, 1),  

(CURDATE() - INTERVAL 10 DAY, CURDATE() - INTERVAL 3 DAY, TRUE, 2, 2),  

(CURDATE(), CURDATE() + INTERVAL 21 DAY, FALSE, 3, 3),  

(CURDATE() - INTERVAL 20 DAY, CURDATE() - INTERVAL 15 DAY, TRUE, 4, 4),  

(CURDATE(), CURDATE() + INTERVAL 10 DAY, FALSE, 5, 5),  

(CURDATE() - INTERVAL 5 DAY, CURDATE() - INTERVAL 1 DAY, TRUE, 6, 6),

(CURDATE(), CURDATE() + INTERVAL 20 DAY, FALSE, 7, 7),

(CURDATE() - INTERVAL 30 DAY, CURDATE() - INTERVAL 10 DAY, TRUE, 8, 8),

(CURDATE(), CURDATE() + INTERVAL 12 DAY, FALSE, 9, 9),

(CURDATE() - INTERVAL 15 DAY, CURDATE() - INTERVAL 5 DAY, TRUE, 10, 10);

--requête pour trouver les étudiants ayant emprunter un certain livre
SELECT DISTINCT e.id_etudiant, e.nom, e.prénom, e.date_naiss, e.email, e.tel, e.date_inscription FROM étudiants e JOIN emprunts em ON e.id_etudiant = em.id_etudiant_étudiants;

--Requête pour lister les emprunts en cours d'un étudiant
SELECT em.date_empt, em.date_retour, em.retour, l.titre, l.auteur FROM emprunts em JOIN livres l ON em.id_livre_livres = l.id_livre WHERE em.id_etudiant_étudiants = 3 AND em.retour = FALSE;

--Requête pour compter le nombre total d'emprunts par livre
SELECT l.id_livre, l.titre, l.auteur, COUNT(em.id_etudiant_étudiants && em.id_livre_livres) AS nombre_emprunts FROM livres l LEFT JOIN emprunts em ON l.id_livre = em.id_livre_livres GROUP BY l.id_livre, l.titre, l.auteur ORDER BY `l`.`id_livre` ASC;

--requête pour lister les livre d'un certain genre
SELECT * FROM livres WHERE id_genre_genres = 2;