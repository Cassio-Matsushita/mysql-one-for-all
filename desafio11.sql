SELECT nome_cancao AS 'nome_musica',
-- referencia https://stackoverflow.com/questions/22496761/replace-multiple-characters-in-sql
REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(nome_cancao, 'Bard', 'QA'), 'Amar', 'Code Review'),
'Pais', 'Pull Requests'), 'SOUL', 'CODE'), 'SUPERSTAR', 'SUPERDEV') AS 'novo_nome'  
FROM SpotifyClone.cancoes
WHERE id_cancao IN(9, 7, 6, 1, 3) 
ORDER BY nome_cancao DESC;