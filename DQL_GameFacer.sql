/* Consultar todas as postagens de um usu�rio espec�fico*/
SELECT p.ConteudoTexto, p.ImagemURL, p.DataHora
FROM Postagem p
JOIN Usuario u ON p.IdUsuario = u.IdUsuario
WHERE u.NomeUsuario = 'jogador01';

/* Consultar todos os membros de um grupo espec�fico*/
SELECT u.NomeUsuario
FROM Membro m
JOIN Usuario u ON m.IdUsuario = u.IdUsuario
JOIN Grupo g ON m.IdGrupo = g.IdGrupo
WHERE g.NomeGrupo = 'FPS Fans';

/*Consultar todas as curtidas de uma postagem espec�fica*/
SELECT u.NomeUsuario
FROM Curtida c
JOIN Usuario u ON c.IdUsuario = u.IdUsuario
WHERE c.IdPostagem = 1;

/*Consultar todos os coment�rios de uma postagem espec�fica*/
SELECT u.NomeUsuario, c.ConteudoTexto, c.DataHora
FROM Comentario c
JOIN Usuario u ON c.IdUsuario = u.IdUsuario
WHERE c.IdPostagem = 1;

/*Consultar todos os jogos de um grupo espec�fico*/
SELECT j.NomeJogo, j.Genero
FROM GrupoJogo gj
JOIN Jogo j ON gj.IdJogo = j.IdJogo
JOIN Grupo g ON gj.IdGrupo = g.IdGrupo
WHERE g.NomeGrupo = 'Corrida Virtual';
