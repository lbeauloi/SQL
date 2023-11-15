-- Affiche toutes les données.
SELECT
students.*,
    school.school AS campus
FROM
    students
INNER JOIN school ON students.school = school.idschool;

