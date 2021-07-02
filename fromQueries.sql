-- FROM

-- LEFT JOIN
SELECT *
FROM usuarios
LEFT JOIN posts ON usuarios.id = posts.usuario_id;

SELECT *
FROM usuarios
LEFT JOIN posts ON usuarios.id = posts.usuario_id
WHERE posts.usuario_id IS NULL;

-- RIGHT JOIN
SELECT *
FROM usuarios
RIGHT JOIN posts ON usuarios.id = posts.usuario_id;

SELECT *
FROM usuarios
RIGHT JOIN posts ON usuarios.id = posts.usuario_id
WHERE posts.usuario_id IS NULL;

-- INNER JOIN
SELECT *
FROM usuarios
INNER JOIN posts ON usuarios.id = posts.usuario_id;

-- FULL OUTER JOIN
SELECT *
FROM usuarios
LEFT JOIN posts ON usuarios.id = posts.usuario_id
UNION 
SELECT *
FROM usuarios
RIGHT JOIN posts ON usuarios.id = posts.usuario_id;

-- DIFERENCIA SIMETRICA - contrario al inner join
SELECT *
FROM usuarios
LEFT JOIN posts ON usuarios.id = posts.usuario_id
WHERE posts.usuario_id IS NULL
UNION 
SELECT *
FROM usuarios
RIGHT JOIN posts ON usuarios.id = posts.usuario_id
WHERE posts.usuario_id IS NULL;
