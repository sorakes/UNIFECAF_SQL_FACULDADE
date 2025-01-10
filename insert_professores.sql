-- Inserir dados de E-mail para os professores
-- Para o professor 1 (Maria Santos)
INSERT INTO email (email_PK, email) 
VALUES ('maria@email.com', 'maria@email.com');

-- Para o professor 2 (Roberto Souza)
INSERT INTO email (email_PK, email) 
VALUES ('roberto@email.com', 'roberto@email.com');

-- Inserir dados de Endereço para os professores
-- Para o professor 1 (Maria Santos)
INSERT INTO endereco (endereco_PK, logradouro, cidade, cep, pais, estado) 
VALUES ('endereco_professor1', 'Rua B, 456', 'Cidade B', '98765432', 'Brasil', 'RJ');

-- Para o professor 2 (Roberto Souza)
INSERT INTO endereco (endereco_PK, logradouro, cidade, cep, pais, estado) 
VALUES ('endereco_professor2', 'Rua C, 789', 'Cidade C', '87654321', 'Brasil', 'MG');

-- Inserir dados de Telefone para os professores
-- Para o professor 1 (Maria Santos)
INSERT INTO telefone (telefone_PK, telefone) 
VALUES (222222222, '222222222');

-- Para o professor 2 (Roberto Souza)
INSERT INTO telefone (telefone_PK, telefone) 
VALUES (333333333, '333333333');

-- Registro do Professor 1 (Maria Santos)
INSERT INTO registros (nome, fk_email_email_PK, cpf, data_nasc, id_registro, fk_endereco_endereco_PK, fk_telefone_telefone_PK) 
VALUES ('Maria Santos', 'maria@email.com', '98765432100', '1980-07-20', 2, 'endereco_professor1', 222222222);

-- Registro do Professor 2 (Roberto Souza)
INSERT INTO registros (nome, fk_email_email_PK, cpf, data_nasc, id_registro, fk_endereco_endereco_PK, fk_telefone_telefone_PK) 
VALUES ('Roberto Souza', 'roberto@email.com', '12345678901', '1975-03-15', 3, 'endereco_professor2', 333333333);

-- Inserir dados dos professores
INSERT INTO professores (materias, id_professor, status, titulacao) 
VALUES ('Matemática', 1, 'Ativo', 'Doutorado'),
       ('Física', 2, 'Ativo', 'Mestre');