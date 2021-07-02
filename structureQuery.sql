-- basic query structure
SELECT * FROM posts; 

-- extended query structure
SELECT *
FROM posts
WHERE YEAR(fecha_publicacion) > '2024';

SELECT *
FROM posts
WHERE YEAR(fecha_publicacion) < '2024';




