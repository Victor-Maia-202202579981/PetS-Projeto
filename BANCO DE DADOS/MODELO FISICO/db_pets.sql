
CREATE DATABASE `db_portal`;

CREATE TABLE `ong` (
    `cnpj` VARCHAR(100),
    `email` VARCHAR(200) UNIQUE,
    `senha` VARCHAR(100)
);

CREATE TABLE `adotante` (
    `cpf_adotante` CHAR(11) PRIMARY KEY,
    `email` VARCHAR(200) UNIQUE,
    `senha` VARCHAR(100)
);

CREATE TABLE `animal` (
    id_animal INT AUTO_INCREMENT PRIMARY KEY,
    `nome` VARCHAR(20),
    `especie` VARCHAR(200),
    `cnpj_ong` CHAR(14)
);

CREATE TABLE `adocao` (
    id_adocao INT AUTO_INCREMENT PRIMARY KEY,
    `resumo` VARCHAR(100),
    `dt_adocao` varchar(10)
);

CREATE TABLE `denuncia` (
    `descricao` VARCHAR(100),
    `resumo` VARCHAR(50)
);

CREATE TABLE `login_adotante` (
  `email_adotante` varchar(50) NOT NULL,
  `senha_login_adotante` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `login_ong` (
  `cnpj_ong` varchar(15) NOT NULL,
  `senha_login_ong` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

