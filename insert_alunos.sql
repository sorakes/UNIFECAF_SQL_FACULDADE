-- 1. Dados dos Alunos:

-- Inserir dados de E-mail
-- Para o aluno 1
INSERT INTO email (email_PK, email) 
VALUES ('joao@email.com', 'joao@email.com');

-- Para o aluno 2
INSERT INTO email (email_PK, email) 
VALUES ('ana@email.com', 'ana@email.com');

-- Para o aluno 3
INSERT INTO email (email_PK, email) 
VALUES ('pedro@email.com', 'pedro@email.com');

-- Para o aluno 4
INSERT INTO email (email_PK, email) 
VALUES ('carla@email.com', 'carla@email.com');

-- Para o aluno 5
INSERT INTO email (email_PK, email) 
VALUES ('lucas@email.com', 'lucas@email.com');

-- Inserir dados de Endereço
-- Para o aluno 1
INSERT INTO endereco (endereco_PK, logradouro, cidade, cep, pais, estado) 
VALUES ('endereco_aluno1', 'Rua A, 123', 'Cidade A', '12345678', 'Brasil', 'SP');

-- Para o aluno 2
INSERT INTO endereco (endereco_PK, logradouro, cidade, cep, pais, estado) 
VALUES ('endereco_aluno2', 'Rua B, 234', 'Cidade B', '23456789', 'Brasil', 'RJ');

-- Para o aluno 3
INSERT INTO endereco (endereco_PK, logradouro, cidade, cep, pais, estado) 
VALUES ('endereco_aluno3', 'Rua C, 345', 'Cidade C', '34567890', 'Brasil', 'MG');

-- Para o aluno 4
INSERT INTO endereco (endereco_PK, logradouro, cidade, cep, pais, estado) 
VALUES ('endereco_aluno4', 'Rua D, 456', 'Cidade D', '45678901', 'Brasil', 'RS');

-- Para o aluno 5
INSERT INTO endereco (endereco_PK, logradouro, cidade, cep, pais, estado) 
VALUES ('endereco_aluno5', 'Rua E, 567', 'Cidade E', '56789012', 'Brasil', 'BA');

-- Inserir dados de Telefone
-- Para o aluno 1
INSERT INTO telefone (telefone_PK, telefone) 
VALUES (111111111, '111111111');

-- Para o aluno 2
INSERT INTO telefone (telefone_PK, telefone) 
VALUES (222222222, '222222222');

-- Para o aluno 3
INSERT INTO telefone (telefone_PK, telefone) 
VALUES (333333333, '333333333');

-- Para o aluno 4
INSERT INTO telefone (telefone_PK, telefone) 
VALUES (444444444, '444444444');

-- Para o aluno 5
INSERT INTO telefone (telefone_PK, telefone) 
VALUES (555555555, '555555555');

-- Registro do Aluno 1
INSERT INTO registros (nome, fk_email_email_PK, cpf, data_nasc, id_registro, fk_endereco_endereco_PK, fk_telefone_telefone_PK) 
VALUES ('João Silva', 'joao@email.com', '12345678901', '2000-01-15', 1, 'endereco_aluno1', 111111111);

-- Registro do Aluno 2
INSERT INTO registros (nome, fk_email_email_PK, cpf, data_nasc, id_registro, fk_endereco_endereco_PK, fk_telefone_telefone_PK) 
VALUES ('Ana Oliveira', 'ana@email.com', '23456789012', '2001-02-20', 2, 'endereco_aluno2', 222222222);

-- Registro do Aluno 3
INSERT INTO registros (nome, fk_email_email_PK, cpf, data_nasc, id_registro, fk_endereco_endereco_PK, fk_telefone_telefone_PK) 
VALUES ('Pedro Costa', 'pedro@email.com', '34567890123', '1999-05-10', 3, 'endereco_aluno3', 333333333);

-- Registro do Aluno 4
INSERT INTO registros (nome, fk_email_email_PK, cpf, data_nasc, id_registro, fk_endereco_endereco_PK, fk_telefone_telefone_PK) 
VALUES ('Carla Martins', 'carla@email.com', '45678901234', '2000-07-30', 4, 'endereco_aluno4', 444444444);

-- Registro do Aluno 5
INSERT INTO registros (nome, fk_email_email_PK, cpf, data_nasc, id_registro, fk_endereco_endereco_PK, fk_telefone_telefone_PK) 
VALUES ('Lucas Pereira', 'lucas@email.com', '56789012345', '2002-11-25', 5, 'endereco_aluno5', 555555555);

-- Inserir dados dos Alunos
INSERT INTO alunos (id_aluno, data_ingresso, ra) 
VALUES (1, '2023-01-10', 1001),
       (2, '2023-01-15', 1002),
       (3, '2023-01-20', 1003),
       (4, '2023-01-25', 1004),
       (5, '2023-01-30', 1005);

-- Matrícula dos alunos
INSERT INTO matriculas (status_matricula, data_matricula, id_matricula) 
VALUES ('Ativo', '2023-01-10', 1),
       ('Ativo', '2023-01-15', 2),
       ('Ativo', '2023-01-20', 3),
       ('Ativo', '2023-01-25', 4),
       ('Ativo', '2023-01-30', 5);

