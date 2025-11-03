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
 "https://upload.wikimedia.org/wikipedia/en/1/10/Palmeiras_logo.svg", 1),

("Flamengo", "Rio de Janeiro", "RJ", "Maracanã", 1895, "Tite", 
 "https://upload.wikimedia.org/wikipedia/en/2/2e/Flamengo_logo.svg", 1),

("Grêmio", "Porto Alegre", "RS", "Arena do Grêmio", 1903, "Renato Gaúcho", 
 "https://upload.wikimedia.org/wikipedia/en/5/5c/Gremio_logo.svg", 1),

("Atlético Mineiro", "Belo Horizonte", "MG", "Arena MRV", 1908, "Gabriel Milito", 
 "https://upload.wikimedia.org/wikipedia/en/8/88/Clube_Atl%C3%A9tico_Mineiro_logo.svg", 1),

("São Paulo", "São Paulo", "SP", "Morumbi", 1930, "Luis Zubeldía", 
 "https://upload.wikimedia.org/wikipedia/en/1/10/Sao_Paulo_FC_logo.svg", 1),

("Corinthians", "São Paulo", "SP", "Neo Química Arena", 1910, "Ramón Díaz", 
 "https://upload.wikimedia.org/wikipedia/en/5/5c/Corinthians_logo.svg", 1),

("Internacional", "Porto Alegre", "RS", "Beira-Rio", 1909, "Eduardo Coudet", 
 "https://upload.wikimedia.org/wikipedia/en/2/2e/SC_Internacional_logo.svg", 1),

("Fluminense", "Rio de Janeiro", "RJ", "Maracanã", 1902, "Fernando Diniz", 
 "https://upload.wikimedia.org/wikipedia/en/3/3f/Fluminense_FC_logo.svg", 1),

("Athletico Paranaense", "Curitiba", "PR", "Arena da Baixada", 1924, "Cuca", 
 "https://upload.wikimedia.org/wikipedia/en/4/4e/Club_Athletico_Paranaense_2019_logo.svg", 1),

("Bahia", "Salvador", "BA", "Arena Fonte Nova", 1931, "Rogério Ceni", 
 "https://upload.wikimedia.org/wikipedia/en/7/7b/EC_Bahia_logo.svg", 1);
