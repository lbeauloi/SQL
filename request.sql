--  1 Affiche toutes les données.
SELECT students.*, school.school AS villeEcole
FROM students
INNER JOIN school ON students.school = school.idschool;

-- 2 Affiche uniquement les prénoms.
SELECT prenom 
FROM students

-- 3 Affiche les prénoms, les dates de naissance et l’école de chacun.
SELECT students.prenom, students.datenaissance, school.school
FROM students
INNER JOIN school ON students.school = school.idschool;

-- 4 Affiche uniquement les élèves qui sont de sexe féminin.
SELECT prenom, genre 
FROM students 
WHERE genre = "F"

-- 5 Affiche uniquement les élèves qui font partie de l’école d'Addy.
SELECT nom, prenom, school.school
FROM students
INNER JOIN school ON students.school = school.idschool
WHERE students.school = (
	SELECT school
	FROM students
	WHERE nom = "Addy")

-- 6 Affiche uniquement les prénoms des étudiants, par ordre inverse à l’alphabet (DESC). Ensuite, la même chose mais en limitant les résultats à 2.

-- 7 Ajoute Ginette Dalor, née le 01/01/1930 et affecte-la à Bruxelles, toujours en SQL.

-- 8 Modifie Ginette (toujours en SQL) et change son sexe et son prénom en “Omer”.

-- 9 Supprimer la personne dont l’ID est 3.

-- 10 Modifier le contenu de la colonne School de sorte que "1" soit remplacé par "Liege" et "2" soit remplacé par "Gent". (attention au type de la colonne !)