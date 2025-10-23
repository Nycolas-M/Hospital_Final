CREATE DATABASE SistemaConsultas;
USE SistemaConsultas;

-- 1. Tabela de Usuários
CREATE TABLE Usuarios (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Nome NVARCHAR(100),
    Email NVARCHAR(100) UNIQUE,
    Senha NVARCHAR(255),
    Tipo NVARCHAR(50)
);

INSERT INTO Usuarios (Nome, Email, Senha, Tipo) VALUES
('Admin', 'admin@clinica.com', '12345', 'Administrador'),
('Maria Oliveira', 'maria@clinica.com', '123', 'Secretária'),
('Carlos Souza', 'carlos@clinica.com', '123', 'Médico'),
('João Silva', 'joao@paciente.com', '123', 'Paciente'),
('Fernanda Lima', 'fernanda@paciente.com', '123', 'Paciente'),
('Pedro Rocha', 'pedro@paciente.com', '123', 'Paciente'),
('Ana Paula', 'ana@clinica.com', '123', 'Secretária'),
('Roberto Dias', 'roberto@clinica.com', '123', 'Médico'),
('Juliana Costa', 'juliana@paciente.com', '123', 'Paciente'),
('Felipe Martins', 'felipe@paciente.com', '123', 'Paciente'),
('Marcos Lima', 'marcos@paciente.com', '123', 'Paciente'),
('Luciana Torres', 'luciana@paciente.com', '123', 'Paciente'),
('Bruna Nogueira', 'bruna@paciente.com', '123', 'Paciente'),
('Thiago Alves', 'thiago@paciente.com', '123', 'Paciente'),
('Rafael Gomes', 'rafael@paciente.com', '123', 'Paciente'),
('Tatiane Souza', 'tatiane@paciente.com', '123', 'Paciente'),
('Camila Silva', 'camila@paciente.com', '123', 'Paciente'),
('Douglas Pires', 'douglas@paciente.com', '123', 'Paciente'),
('Viviane Melo', 'viviane@paciente.com', '123', 'Paciente'),
('Renan Cruz', 'renan@paciente.com', '123', 'Paciente');

-- 2. Médicos
CREATE TABLE Medicos (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Nome NVARCHAR(100),
    Especialidade NVARCHAR(100),
    CRM NVARCHAR(50),
    Email NVARCHAR(100)
);

INSERT INTO Medicos (Nome, Especialidade, CRM, Email) VALUES
('Carlos Souza', 'Cardiologia', 'CRM-1001', 'carlos@clinica.com'),
('Roberto Dias', 'Dermatologia', 'CRM-1002', 'roberto@clinica.com'),
('Juliana Ribeiro', 'Ortopedia', 'CRM-1003', 'juliana@clinica.com'),
('Marina Torres', 'Ginecologia', 'CRM-1004', 'marina@clinica.com'),
('Felipe Mendes', 'Neurologia', 'CRM-1005', 'felipe@clinica.com'),
('André Santos', 'Psiquiatria', 'CRM-1006', 'andre@clinica.com'),
('Luciana Prado', 'Pediatria', 'CRM-1007', 'luciana@clinica.com'),
('Ricardo Freitas', 'Urologia', 'CRM-1008', 'ricardo@clinica.com'),
('Daniela Azevedo', 'Clínico Geral', 'CRM-1009', 'daniela@clinica.com'),
('Sérgio Costa', 'Oncologia', 'CRM-1010', 'sergio@clinica.com'),
('Camila Torres', 'Dermatologia', 'CRM-1011', 'camila@clinica.com'),
('Paulo Lima', 'Pediatria', 'CRM-1012', 'paulo@clinica.com'),
('Raquel Mendes', 'Geriatria', 'CRM-1013', 'raquel@clinica.com'),
('Tiago Ferreira', 'Oftalmologia', 'CRM-1014', 'tiago@clinica.com'),
('Monique Silva', 'Endocrinologia', 'CRM-1015', 'monique@clinica.com'),
('Carlos Ferreira', 'Clínico Geral', 'CRM-1016', 'cferreira@clinica.com'),
('Nathalia Duarte', 'Cardiologia', 'CRM-1017', 'nathalia@clinica.com'),
('Diego Souza', 'Dermatologia', 'CRM-1018', 'diego@clinica.com'),
('Laura Barbosa', 'Neurologia', 'CRM-1019', 'laura@clinica.com'),
('Joana Martins', 'Ginecologia', 'CRM-1020', 'joana@clinica.com');

-- 3. Pacientes
CREATE TABLE Pacientes (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Nome NVARCHAR(100),
    CPF NVARCHAR(14),
    DataNascimento DATE,
    Telefone NVARCHAR(20),
    Email NVARCHAR(100)
);

-- 20 registros
INSERT INTO Pacientes (Nome, CPF, DataNascimento, Telefone, Email) VALUES
('João Silva', '123.456.789-00', '1990-05-12', '(41) 98888-1111', 'joao@paciente.com'),
('Fernanda Lima', '987.654.321-00', '1992-04-10', '(41) 97777-2222', 'fernanda@paciente.com'),
('Pedro Rocha', '159.753.486-22', '1985-10-01', '(41) 96666-3333', 'pedro@paciente.com'),
('Juliana Costa', '951.357.258-99', '1994-08-22', '(41) 95555-4444', 'juliana@paciente.com'),
('Felipe Martins', '753.951.456-77', '1989-01-03', '(41) 94444-5555', 'felipe@paciente.com'),
('Marcos Lima', '147.258.369-11', '1993-06-15', '(41) 93333-6666', 'marcos@paciente.com'),
('Luciana Torres', '258.147.963-22', '1990-03-10', '(41) 92222-7777', 'luciana@paciente.com'),
('Bruna Nogueira', '369.258.147-33', '1995-02-28', '(41) 91111-8888', 'bruna@paciente.com'),
('Thiago Alves', '654.321.987-44', '1987-12-19', '(41) 90000-9999', 'thiago@paciente.com'),
('Rafael Gomes', '789.123.456-55', '1996-07-07', '(41) 98888-0000', 'rafael@paciente.com'),
('Tatiane Souza', '111.222.333-44', '1998-05-05', '(41) 97777-1111', 'tatiane@paciente.com'),
('Camila Silva', '222.333.444-55', '1984-11-11', '(41) 96666-2222', 'camila@paciente.com'),
('Douglas Pires', '333.444.555-66', '1991-09-21', '(41) 95555-3333', 'douglas@paciente.com'),
('Viviane Melo', '444.555.666-77', '1983-02-14', '(41) 94444-4444', 'viviane@paciente.com'),
('Renan Cruz', '555.666.777-88', '1999-04-18', '(41) 93333-5555', 'renan@paciente.com'),
('Paula Lima', '666.777.888-99', '1997-03-25', '(41) 92222-6666', 'paula@paciente.com'),
('Rodrigo Santos', '777.888.999-00', '1980-10-30', '(41) 91111-7777', 'rodrigo@paciente.com'),
('Patrícia Vieira', '888.999.000-11', '1994-07-20', '(41) 90000-8888', 'patricia@paciente.com'),
('Simone Tavares', '999.000.111-22', '1986-09-09', '(41) 98888-9999', 'simone@paciente.com'),
('Renato Lopes', '000.111.222-33', '1990-01-15', '(41) 97777-0000', 'renato@paciente.com');

-- 4. Consultas
CREATE TABLE Consultas (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    PacienteId INT,
    MedicoId INT,
    DataConsulta DATETIME,
    Status NVARCHAR(50),
    Observacoes NVARCHAR(255),
    FOREIGN KEY (PacienteId) REFERENCES Pacientes(Id),
    FOREIGN KEY (MedicoId) REFERENCES Medicos(Id)
);

-- 5. Especialidades
CREATE TABLE Especialidades (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Nome NVARCHAR(100),
    Descricao NVARCHAR(255)
);

INSERT INTO Especialidades (Nome, Descricao) VALUES
('Cardiologia', 'Doenças do coração'),
('Dermatologia', 'Problemas de pele'),
('Ginecologia', 'Saúde feminina'),
('Neurologia', 'Sistema nervoso'),
('Pediatria', 'Saúde infantil'),
('Ortopedia', 'Ossos e articulações'),
('Psiquiatria', 'Saúde mental'),
('Oftalmologia', 'Olhos e visão'),
('Urologia', 'Sistema urinário'),
('Endocrinologia', 'Glândulas e hormônios'),
('Clínico Geral', 'Atendimento geral'),
('Oncologia', 'Tratamento do câncer'),
('Geriatria', 'Saúde do idoso'),
('Reumatologia', 'Doenças reumáticas'),
('Hematologia', 'Sangue'),
('Nefrologia', 'Rins'),
('Gastroenterologia', 'Aparelho digestivo'),
('Infectologia', 'Doenças infecciosas'),
('Alergologia', 'Alergias'),
('Otorrinolaringologia', 'Ouvido, nariz e garganta');
