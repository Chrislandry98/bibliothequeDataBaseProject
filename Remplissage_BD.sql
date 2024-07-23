INSERT INTO genres(nom_genre)
	VALUES("Fiction"),
		("Christian"),
		("Adventure"),
		("romances"),
		("mystery"),
		(Whitchcraft");




	
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
		("Jule Eisenbud, M.D.",The World of Ted Serios,1968,3, 1),
		("Penelope Gilliatt","A State of Change",1967,22, 3);
		
INSERT INTO emprunts(date_empt, date_retour, retour, id_livre_livres, id_etudiant_étudiants)
	VALUES(2024-06-24 ,2024-06-28, TRUE, 2 ,3),
		(2024-06-21, 2024-06-23, TRUE, 4 ,8),
		(2024-03-25, 2024-03-28, TRUE, 5 ,6),
		(2024-06-23, 2024-06-24, TRUE, 3 ,7),
		(2024-06-20, 2024-06-25, TRUE, 9 ,6),
		(2024-06-12, 2024-06-14, TRUE, 1 ,7),
		(2024-06-04, 2024-06-06,TRUE, 2,9),
		(2024-06-01, 2024-06-12, TRUE, 1 ,3),
		(2024-06-02, 2024-06-10, TRUE, 2 ,1),
		(2024-06-05, 2024-06-10, TRUE, 2 ,2),
		(2024-06-12, 2024-06-15, TRUE, 3 ,5),
		(2024-06-04, 2024-06-05, TRUE, 7,7),
		(2024-06-11, 2024-06-18, TRUE, 3,9),
		(2024-06-22, 2024-06-28, TRUE, 2,10),
		(2024-06-21, 2024-06-28, TRUE, 5 ,9);
		
	

	
	
	
	
	
	
	
	
	
	
	
	
	
