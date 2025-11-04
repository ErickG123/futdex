DROP DATABASE IF EXISTS futdex;

CREATE DATABASE futdex;
USE futdex;

CREATE TABLE CAMPEONATO (
	Id	  INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Nome  VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE TIME (
    Id	            INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Nome            VARCHAR(50) NOT NULL UNIQUE,
    Cidade          VARCHAR(50),
    Estado          VARCHAR(2),
    Estadio         VARCHAR(60),
    AnoFundacao     INT,
    Tecnico         VARCHAR(50),
    LogoUrl         VARCHAR(255),
    CampeonatoId    INT UNSIGNED NOT NULL,
    FOREIGN KEY (CampeonatoId) REFERENCES CAMPEONATO(Id)
);

INSERT INTO CAMPEONATO (Nome) VALUES ("Brasileirão Série A");

INSERT INTO TIME (Nome, Cidade, Estado, Estadio, AnoFundacao, Tecnico, LogoUrl, CampeonatoId)
VALUES
("Palmeiras", "São Paulo", "SP", "Allianz Parque", 1914, "Abel Ferreira", 
 "img/palmeiras-logo.png", 1),

("Flamengo", "Rio de Janeiro", "RJ", "Maracanã", 1895, "Tite", 
 "img/logo-flamengo.png", 1),

("Grêmio", "Porto Alegre", "RS", "Arena do Grêmio", 1903, "Renato Gaúcho", 
 "img/logo-gremio.png", 1),

("Atlético Mineiro", "Belo Horizonte", "MG", "Arena MRV", 1908, "Gabriel Milito", 
 "img/clube-atletico-mineiro-logo.png", 1),

("São Paulo", "São Paulo", "SP", "Morumbi", 1930, "Luis Zubeldía", 
 "img/logo-sao-paulo.png", 1),

("Corinthians", "São Paulo", "SP", "Neo Química Arena", 1910, "Ramón Díaz", 
 "img/logo-corinthians.png", 1),

("Internacional", "Porto Alegre", "RS", "Beira-Rio", 1909, "Eduardo Coudet", 
 "img/logo-internacional.png", 1),

("Fluminense", "Rio de Janeiro", "RJ", "Maracanã", 1902, "Fernando Diniz", 
 "img/logo-fluminense.png", 1),

("Athletico Paranaense", "Curitiba", "PR", "Arena da Baixada", 1924, "Cuca", 
 "img/logo-atletico-paranaense.png", 1),

("Bahia", "Salvador", "BA", "Arena Fonte Nova", 1931, "Rogério Ceni", 
 "img/logo-bahia.png", 1);
\