-- WHERE

SELECT *
FROM posts
WHERE id < 50;

-- Equal to
SELECT *
FROM posts
WHERE estatus = 'activo';

SELECT *
FROM posts
WHERE estatus = 'inactivo';

-- Not Equal to
SELECT *
FROM posts
WHERE estatus != 'activo';

-- contenga la palabra 
SELECT *
FROM posts
WHERE titulo LIKE '%escandalo%';

-- empiece con la palabra
SELECT *
FROM posts
WHERE titulo LIKE 'escandalo%';

-- termine con la palabra
SELECT *
FROM posts
WHERE titulo LIKE '%roja';

-- Greater than
SELECT *
FROM posts
WHERE fecha_publicacion > '2025-01-01';

-- Less than
SELECT *
FROM posts
WHERE fecha_publicacion > '2025-01-01';

-- BETWEEN
SELECT *
FROM posts
WHERE fecha_publicacion BETWEEN '2023-01-01' and '2025-12-31'
ORDER BY fecha_publicacion ASC;

SELECT *
FROM posts
WHERE id BETWEEN 30 and 50;

SELECT *
FROM posts
WHERE YEAR(fecha_publicacion) BETWEEN '2023' and '2024';

SELECT *
FROM posts
WHERE MONTH(fecha_publicacion) = '04';

-- NULL VALUES
SELECT *
FROM posts
WHERE usuario_id IS NULL;

SELECT *
FROM posts
WHERE categoria_id IS NULL;

SELECT *
FROM posts
WHERE usuario_id IS NOT NULL;

-- AND
SELECT *
FROM posts
WHERE usuario_id IS NOT NULL
	AND estatus = 'activo';

SELECT *
FROM posts
WHERE usuario_id IS NOT NULL
	AND estatus = 'activo'
    AND id < 50
    AND categoria_id = 2
    AND YEAR(fecha_publicacion) = '2025';