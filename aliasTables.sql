SELECT c.nombre_categoria, COUNT(*) AS cant_posts
FROM categorias AS c
INNER JOIN posts AS p ON c.id = p.categoria_id
GROUP BY c.id
ORDER BY cant_posts DESC;

SELECT c.nombre_categoria, COUNT(*) AS cant_posts
FROM categorias AS c
INNER JOIN posts AS p ON c.id = p.categoria_id
GROUP BY c.id
ORDER BY cant_posts DESC
LIMIT 1;

SELECT u.nickname, COUNT(*) AS cant_posts
FROM usuarios AS u
INNER JOIN posts AS p ON u.id = p.usuario_id
GROUP BY u.id
ORDER BY cant_posts DESC;

SELECT u.nickname, COUNT(*) AS cant_posts, GROUP_CONCAT(nombre_categoria)
FROM usuarios AS u
INNER JOIN posts AS p ON u.id = p.usuario_id
INNER JOIN categorias AS c ON c.id = p.categoria_id
GROUP BY u.id
ORDER BY cant_posts DESC;

SELECT u.nickname, COUNT(*) AS cant_posts, GROUP_CONCAT(DISTINCT(nombre_categoria))
FROM usuarios AS u
INNER JOIN posts AS p ON u.id = p.usuario_id
INNER JOIN categorias AS c ON c.id = p.categoria_id
GROUP BY u.id
ORDER BY cant_posts DESC;

-- todos de la tabla que tengan relacion con los usuarios
-- pero ver los posts que tengan usuario id igual a nulo
SELECT *
FROM usuarios AS u
LEFT JOIN posts ON u.id = posts.usuario_id
WHERE posts.usuario_id IS NULL;