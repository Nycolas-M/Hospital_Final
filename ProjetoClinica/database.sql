CREATE DATABASE clinica_db;
USE clinica_db;

-- 1. Usuários
CREATE TABLE Usuarios (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Nome NVARCHAR(100),
    Email NVARCHAR(100) UNIQUE,
    Senha NVARCHAR(100),
    Tipo NVARCHAR(50) -- 'admin' ou 'medico' ou 'recepcionista'
);

INSERT INTO Usuarios (Nome, Email, Senha, Tipo) VALUES
('Admin', 'admin@clinica.com', '12345', 'admin'),
('João Silva', 'joao@clinica.com', 'senha1', 'medico'),
('Maria Souza', 'maria@clinica.com', 'senha2', 'recepcionista'),
('Ana Lima', 'ana@clinica.com', 'senha3', 'medico'),
('Carlos Nunes', 'carlos@clinica.com', 'senha4', 'recepcionista'),
('Luiza Alves', 'luiza@clinica.com', 'senha5', 'medico'),
('Pedro Gomes', 'pedro@clinica.com', 'senha6', 'admin'),
('Bruno Costa', 'bruno@clinica.com', 'senha7', 'medico'),
('Fernanda Dias', 'fernanda@clinica.com', 'senha8', 'recepcionista'),
('Rafael Torres', 'rafael@clinica.com', 'senha9', 'medico'),
('Laura Melo', 'laura@clinica.com', 'senha10', 'recepcionista'),
('José Neto', 'jose@clinica.com', 'senha11', 'medico'),
('Carla Mendes', 'carla@clinica.com', 'senha12', 'admin'),
('Tiago Rocha', 'tiago@clinica.com', 'senha13', 'medico'),
('Juliana Castro', 'juliana@clinica.com', 'senha14', 'recepcionista'),
('Felipe Santos', 'felipe@clinica.com', 'senha15', 'medico'),
('Helena Reis', 'helena@clinica.com', 'senha16', 'admin'),
('Diego Freitas', 'diego@clinica.com', 'senha17', 'medico'),
('Natália Pires', 'natalia@clinica.com', 'senha18', 'recepcionista'),
('Rodrigo Matos', 'rodrigo@clinica.com', 'senha19', 'medico');

-- 2. Pacientes
CREATE TABLE Pacientes (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Nome NVARCHAR(100),
    CPF NVARCHAR(14),
    DataNascimento DATE,
    Telefone NVARCHAR(20),
    Email NVARCHAR(100)
);

INSERT INTO Pacientes (Nome, CPF, DataNascimento, Telefone, Email) VALUES
('André Silva', '123.456.789-00', '1990-05-14', '(41)99999-0001', 'andre@gmail.com'),
('Bianca Costa', '123.456.789-01', '1988-03-20', '(41)99999-0002', 'bianca@gmail.com'),
('Carlos Pereira', '123.456.789-02', '2001-01-10', '(41)99999-0003', 'carlos@gmail.com'),
('Daniela Rocha', '123.456.789-03', '1995-06-15', '(41)99999-0004', 'daniela@gmail.com'),
('Eduardo Alves', '123.456.789-04', '1978-08-30', '(41)99999-0005', 'eduardo@gmail.com'),
('Fernanda Ramos', '123.456.789-05', '1982-04-12', '(41)99999-0006', 'fernanda@gmail.com'),
('Guilherme Souza', '123.456.789-06', '1999-11-25', '(41)99999-0007', 'guilherme@gmail.com'),
('Helena Martins', '123.456.789-07', '1987-02-17', '(41)99999-0008', 'helena@gmail.com'),
('Isabela Lima', '123.456.789-08', '2000-07-09', '(41)99999-0009', 'isabela@gmail.com'),
('João Paulo', '123.456.789-09', '1993-12-19', '(41)99999-0010', 'joaopaulo@gmail.com'),
('Karina Moreira', '123.456.789-10', '1989-05-11', '(41)99999-0011', 'karina@gmail.com'),
('Lucas Ribeiro', '123.456.789-11', '1996-10-14', '(41)99999-0012', 'lucas@gmail.com'),
('Mariana Torres', '123.456.789-12', '2002-02-22', '(41)99999-0013', 'mariana@gmail.com'),
('Nathalia Prado', '123.456.789-13', '1994-11-03', '(41)99999-0014', 'nathalia@gmail.com'),
('Otávio Mendes', '123.456.789-14', '1990-07-08', '(41)99999-0015', 'otavio@gmail.com'),
('Patrícia Vieira', '123.456.789-15', '1985-09-29', '(41)99999-0016', 'patricia@gmail.com'),
('Ricardo Cunha', '123.456.789-16', '1981-06-07', '(41)99999-0017', 'ricardo@gmail.com'),
('Sabrina Lopes', '123.456.789-17', '1997-03-13', '(41)99999-0018', 'sabrina@gmail.com'),
('Thiago Almeida', '123.456.789-18', '1992-05-18', '(41)99999-0019', 'thiago@gmail.com'),
('Viviane Cardoso', '123.456.789-19', '1983-10-05', '(41)99999-0020', 'viviane@gmail.com');

-- 3. Especialidades
CREATE TABLE Especialidades (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Nome NVARCHAR(100)
);

INSERT INTO Especialidades (Nome) VALUES
('Clínico Geral'),
('Pediatria'),
('Dermatologia'),
('Cardiologia'),
('Ortopedia'),
('Ginecologia'),
('Neurologia'),
('Psiquiatria'),
('Endocrinologia'),
('Oftalmologia'),
('Urologia'),
('Otorrino'),
('Reumatologia'),
('Gastroenterologia'),
('Nefrologia'),
('Hematologia'),
('Oncologia'),
('Alergologia'),
('Infectologia'),
('Cirurgia Geral');

-- 4. Médicos
CREATE TABLE Medicos (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Nome NVARCHAR(100),
    CRM NVARCHAR(20),
    EspecialidadeId INT FOREIGN KEY REFERENCES Especialidades(Id)
);

INSERT INTO Medicos (Nome, CRM, EspecialidadeId) VALUES
('Dr. João Silva', 'CRM1234', 1),
('Dra. Maria Costa', 'CRM1235', 2),
('Dr. Carlos Pereira', 'CRM1236', 3),
('Dra. Ana Ramos', 'CRM1237', 4),
('Dr. Pedro Souza', 'CRM1238', 5),
('Dra. Julia Nunes', 'CRM1239', 6),
('Dr. Rafael Martins', 'CRM1240', 7),
('Dra. Laura Rocha', 'CRM1241', 8),
('Dr. Bruno Alves', 'CRM1242', 9),
('Dra. Fernanda Lima', 'CRM1243', 10),
('Dr. Eduardo Vieira', 'CRM1244', 11),
('Dra. Carla Mendes', 'CRM1245', 12),
('Dr. Felipe Torres', 'CRM1246', 13),
('Dra. Isabela Gomes', 'CRM1247', 14),
('Dr. Tiago Reis', 'CRM1248', 15),
('Dra. Helena Prado', 'CRM1249', 16),
('Dr. Rodrigo Cunha', 'CRM1250', 17),
('Dra. Luiza Castro', 'CRM1251', 18),
('Dr. Gustavo Matos', 'CRM1252', 19),
('Dra. Patrícia Alves', 'CRM1253', 20);

-- 5. Consultas
CREATE TABLE Consultas (
    Id INT PRIMARY KEY IDENTITY(1,1),
    PacienteId INT FOREIGN KEY REFERENCES Pacientes(Id),
    MedicoId INT FOREIGN KEY REFERENCES Medicos(Id),
    DataConsulta DATETIME,
    Status NVARCHAR(50)
);

INSERT INTO Consultas (PacienteId, MedicoId, DataConsulta, Status) VALUES
(1, 1, '2025-10-10 09:00', 'Agendada'),
(2, 2, '2025-10-11 10:00', 'Concluída'),
(3, 3, '2025-10-12 11:00', 'Cancelada'),
(4, 4, '2025-10-13 14:00', 'Agendada'),
(5, 5, '2025-10-14 15:00', 'Agendada'),
(6, 6, '2025-10-15 09:00', 'Concluída'),
(7, 7, '2025-10-16 11:00', 'Agendada'),
(8, 8, '2025-10-17 13:00', 'Cancelada'),
(9, 9, '2025-10-18 10:00', 'Agendada'),
(10, 10, '2025-10-19 09:30', 'Concluída'),
(11, 11, '2025-10-20 14:00', 'Agendada'),
(12, 12, '2025-10-21 08:00', 'Cancelada'),
(13, 13, '2025-10-22 09:30', 'Concluída'),
(14, 14, '2025-10-23 11:00', 'Agendada'),
(15, 15, '2025-10-24 15:00', 'Agendada'),
(16, 16, '2025-10-25 09:00', 'Agendada'),
(17, 17, '2025-10-26 10:30', 'Cancelada'),
(18, 18, '2025-10-27 13:00', 'Concluída'),
(19, 19, '2025-10-28 09:00', 'Agendada'),
(20, 20, '2025-10-29 10:00', 'Agendada');