-- ORDER BY

-- ASC
SELECT *
FROM posts
ORDER BY fecha_publicacion ASC;

-- DESC
SELECT *
FROM posts
ORDER BY fecha_publicacion DESC;

-- ALPHABETIC ORDER ASC
SELECT *
FROM posts
ORDER BY titulo ASC;

-- ALPHABETIC ORDER DESC
SELECT *
FROM posts
ORDER BY titulo DESC;


SELECT *
FROM posts
ORDER BY usuario_id ASC;

-- LIMIT
SELECT *
FROM posts
ORDER BY fecha_publicacion ASC
LIMIT 5;
