SELECT posts.titulo, COUNT(*) AS num_etiquetas
FROM posts
INNER JOIN posts_etiquetas ON posts.id = posts_etiquetas.post_id
INNER JOIN etiquetas ON etiquetas.id = posts_etiquetas.etiqueta_id
GROUP BY post_id
ORDER BY num_etiquetas DESC;

-- De cada post cuales son las etiquetas que tiene asociadas 
SELECT posts.titulo, GROUP_CONCAT(nombre_etiqueta) 
FROM posts
INNER JOIN posts_etiquetas ON posts.id = posts_etiquetas.post_id
INNER JOIN etiquetas ON etiquetas.id = posts_etiquetas.etiqueta_id
GROUP BY post_id;

SELECT *
FROM etiquetas
LEFT JOIN posts_etiquetas ON etiquetas.id = posts_etiquetas.etiqueta_id
WHERE posts_etiquetas.etiqueta_id IS NULL;