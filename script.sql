CREATE DATABASE universidade;
USE universidade;

CREATE TABLE pessoa (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tipo ENUM('FISICA', 'JURIDICA') NOT NULL,
    nome VARCHAR(120),
    cpf VARCHAR(14) UNIQUE,
    cnpj VARCHAR(18) UNIQUE,
    endereco VARCHAR(200),
    telefone VARCHAR(20),
    email VARCHAR(120)
);

CREATE TABLE aluno (
    id INT AUTO_INCREMENT PRIMARY KEY,
    pessoa_id INT NOT NULL,
    curso VARCHAR(120) NOT NULL,
    matricula VARCHAR(30) UNIQUE NOT NULL,
    forma_ingresso ENUM('VESTIBULAR','ENEM','TRANSFERENCIA') NOT NULL,
    FOREIGN KEY (pessoa_id) REFERENCES pessoa(id)
);

CREATE TABLE professor (
    id INT AUTO_INCREMENT PRIMARY KEY,
    pessoa_id INT NOT NULL,
    formacao VARCHAR(120) NOT NULL,
    area_atuacao VARCHAR(120),
    carga_horaria INT,
    matricula VARCHAR(30) UNIQUE,
    FOREIGN KEY (pessoa_id) REFERENCES pessoa(id)
);

CREATE TABLE fornecedor (
    id INT AUTO_INCREMENT PRIMARY KEY,
    pessoa_id INT NOT NULL,
    area_fornecimento VARCHAR(120),
    contrato VARCHAR(50),
    contato VARCHAR(120),
    FOREIGN KEY (pessoa_id) REFERENCES pessoa(id)
);
