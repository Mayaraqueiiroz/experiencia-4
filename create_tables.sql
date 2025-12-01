CREATE DATABASE saude_plus;
USE saude_plus;

CREATE TABLE Especialidade (
    id_especialidade INT PRIMARY KEY AUTO_INCREMENT,
    nome_especialidade VARCHAR(80) NOT NULL
);

CREATE TABLE Medico (
    id_medico INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(120) NOT NULL,
    crm VARCHAR(20) NOT NULL UNIQUE,
    telefone VARCHAR(20),
    id_especialidade INT NOT NULL,
    FOREIGN KEY (id_especialidade) REFERENCES Especialidade(id_especialidade)
);

CREATE TABLE Paciente (
    id_paciente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(120) NOT NULL,
    cpf VARCHAR(14) NOT NULL UNIQUE,
    data_nascimento DATE NOT NULL,
    telefone VARCHAR(20),
    endereco VARCHAR(255)
);

CREATE TABLE Consulta (
    id_consulta INT PRIMARY KEY AUTO_INCREMENT,
    data_consulta DATE NOT NULL,
    horario TIME NOT NULL,
    motivo VARCHAR(255),
    id_paciente INT NOT NULL,
    id_medico INT NOT NULL,
    FOREIGN KEY (id_paciente) REFERENCES Paciente(id_paciente),
    FOREIGN KEY (id_medico) REFERENCES Medico(id_medico)
);

CREATE TABLE Prontuario (
    id_prontuario INT PRIMARY KEY AUTO_INCREMENT,
    descricao TEXT,
    diagnostico TEXT,
    conduta TEXT,
    id_consulta INT NOT NULL,
    FOREIGN KEY (id_consulta) REFERENCES Consulta(id_consulta)
);

CREATE TABLE ExameSolicitado (
    id_exame INT PRIMARY KEY AUTO_INCREMENT,
    nome_exame VARCHAR(120),
    justificativa TEXT,
    id_consulta INT NOT NULL,
    FOREIGN KEY (id_consulta) REFERENCES Consulta(id_consulta)
);
