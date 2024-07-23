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