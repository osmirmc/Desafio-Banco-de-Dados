CREATE DATABASE GameFacer
USE GameFacer

/*Tabela Usuário*/
CREATE TABLE Usuario (
    IdUsuario INT PRIMARY KEY IDENTITY,
    NomeUsuario NVARCHAR(50) UNIQUE NOT NULL,
    Email NVARCHAR(100) UNIQUE NOT NULL,
    Senha NVARCHAR(255) NOT NULL,
    DataCriacao DATETIME,
    AvatarURL NVARCHAR(255)
);
GO

/* Tabela Postagem*/
CREATE TABLE Postagem (
    IdPostagem INT PRIMARY KEY IDENTITY,
    ConteudoTexto TEXT,
    ImagemURL NVARCHAR(255),
    DataHora DATETIME,
    IdUsuario INT,
    FOREIGN KEY (IdUsuario) REFERENCES Usuario(IdUsuario)
);
GO

/* Tabela Comentário*/
CREATE TABLE Comentario (
    IdComentario INT PRIMARY KEY IDENTITY,
    ConteudoTexto TEXT NOT NULL,
    DataHora DATETIME,
    IdPostagem INT,
    IdUsuario INT,
    FOREIGN KEY (IdPostagem) REFERENCES Postagem(IdPostagem),
    FOREIGN KEY (IdUsuario) REFERENCES Usuario(IdUsuario)
);
GO

/* Tabela Curtida*/
CREATE TABLE Curtida (
    IdCurtida INT PRIMARY KEY IDENTITY,
    IdUsuario INT,
    IdPostagem INT NULL,
    IdComentario INT NULL,
    FOREIGN KEY (IdUsuario) REFERENCES Usuario(IdUsuario),
    FOREIGN KEY (IdPostagem) REFERENCES Postagem(IdPostagem),
    FOREIGN KEY (IdComentario) REFERENCES Comentario(IdComentario)
);
GO

/*Tabela Grupo*/
CREATE TABLE Grupo (
    IdGrupo INT PRIMARY KEY IDENTITY,
    NomeGrupo VARCHAR(50) UNIQUE NOT NULL,
    Descricao TEXT,
    DataCriacao DATETIME,
    IdAdmin INT,
    FOREIGN KEY (IdAdmin) REFERENCES Usuario(IdUsuario)
);
GO

/*Tabela Membro*/
CREATE TABLE Membro (
    IdMembro INT PRIMARY KEY IDENTITY,
    IdUsuario INT,
    IdGrupo INT,
    DataEntrada DATETIME,
    FOREIGN KEY (IdUsuario) REFERENCES Usuario(IdUsuario),
    FOREIGN KEY (IdGrupo) REFERENCES Grupo(IdGrupo)
);
GO

/* Tabela Jogo*/
CREATE TABLE Jogo (
    IdJogo INT PRIMARY KEY IDENTITY,
    NomeJogo NVARCHAR(100) UNIQUE NOT NULL,
    Genero NVARCHAR(50)
);
GO

/* Tabela GrupoJogo*/
CREATE TABLE GrupoJogo (
    IdGrupo INT,
    IdJogo INT,
    PRIMARY KEY (IdGrupo, IdJogo),
    FOREIGN KEY (IdGrupo) REFERENCES Grupo(IdGrupo),
    FOREIGN KEY (IdJogo) REFERENCES Jogo(IdJogo)
);
GO



