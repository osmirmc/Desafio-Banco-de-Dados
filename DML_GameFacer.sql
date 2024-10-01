/* Inserir Usuários*/
INSERT INTO Usuario (NomeUsuario, Email, Senha, AvatarURL) VALUES ('jogador01', ' jogador01@example.com', 'senha123', 'avatar1.png');
INSERT INTO Usuario (NomeUsuario, Email, Senha, AvatarURL) VALUES ('jogador02', 'jogador02@example.com', 'senha456', 'avatar2.png');

/* Inserir Jogos*/
INSERT INTO Jogo (NomeJogo, Genero) VALUES ('MEDAL OF HONOR', 'FPS');
INSERT INTO Jogo (NomeJogo, Genero) VALUES ('NEED FOR SPEED', 'Corrida');

/*Inserir Grupos*/
INSERT INTO Grupo (NomeGrupo, Descricao, IdAdmin) VALUES ('FPS Fans', 'Grupo para fãs de jogos de tiro', 1);
INSERT INTO Grupo (NomeGrupo, Descricao, IdAdmin) VALUES ('Corrida Virtual', 'Grupo para fãs de jogos de corrida', 2);

/* Inserir Membros*/
INSERT INTO Membro (IdUsuario, IdGrupo) VALUES (1, 1);
INSERT INTO Membro (IdUsuario, IdGrupo) VALUES (2, 2);

/* Associar Grupos a Jogos*/
INSERT INTO GrupoJogo (IdGrupo, IdJogo) VALUES (1, 1);
INSERT INTO GrupoJogo (IdGrupo, IdJogo) VALUES (2, 2);

/* Inserir Postagem*/
INSERT INTO Postagem (ConteudoTexto, ImagemURL, IdUsuario) VALUES ('Meu primeiro post!', 'image1.png', 1);

/* Inserir Comentário*/
INSERT INTO Comentario (ConteudoTexto, IdPostagem, IdUsuario) VALUES ('Muito legal!', 1, 2);

/*Inserir Curtida*/
INSERT INTO Curtida (IdUsuario, IdPostagem) VALUES (2, 1);
INSERT INTO Curtida (IdUsuario, IdComentario) VALUES (1, 1);
