CREATE TABLE notas (
    materia VARCHAR(100),
    valor_nota INT,
    observacao VARCHAR(255),
    professor_responsavel CHAR(50),
    id_nota INT PRIMARY KEY
);

CREATE TABLE alunos (
    id_aluno INT PRIMARY KEY,
    data_ingresso DATE,
    ra INT
);

CREATE TABLE materias (
    carga_horaria INT,
    nome_materia VARCHAR(150),
    id_materia INT PRIMARY KEY
);

CREATE TABLE registros (
    nome VARCHAR(100),
    fk_email_email_PK VARCHAR(100),
    cpf CHAR(11),
    data_nasc DATE,
    id_registro INT PRIMARY KEY,
    fk_endereco_endereco_PK VARCHAR(100),
    fk_telefone_telefone_PK INT
);

CREATE TABLE professores (
    materias VARCHAR(200),
    id_professor INT PRIMARY KEY,
    status VARCHAR(50),
    titulacao VARCHAR(100)
);

CREATE TABLE cursos (
    duracao VARCHAR(50),
    id_curso INT PRIMARY KEY,
    valor_mensalidade DECIMAL(10, 2),
    coordenador VARCHAR(100),
    nome_curso VARCHAR(150)
);

CREATE TABLE matriculas (
    status_matricula VARCHAR(50),
    data_matricula DATE,
    id_matricula INT PRIMARY KEY
);

CREATE TABLE turmas (
    periodo VARCHAR(50),
    sala VARCHAR(50),
    id_turma INT PRIMARY KEY,
    semestre INT
);

CREATE TABLE email (
    email_PK VARCHAR(100) NOT NULL PRIMARY KEY,
    email VARCHAR(100)
);

CREATE TABLE endereco (
    endereco_PK VARCHAR(100) NOT NULL PRIMARY KEY,
    logradouro VARCHAR(255),
    cidade VARCHAR(100),
    cep CHAR(8),
    pais VARCHAR(50),
    estado CHAR(2)
);

CREATE TABLE telefone (
    telefone_PK INT NOT NULL PRIMARY KEY,
    telefone CHAR(11)
);

CREATE TABLE pagamento (
    data DATE,
    metodo VARCHAR(50),
    status VARCHAR(50),
    valor DECIMAL(10, 2),
    fk_id_matricula INT,
    FOREIGN KEY (fk_id_matricula)
    REFERENCES matriculas (id_matricula)
    ON DELETE SET NULL
);

CREATE TABLE recebem_alunos (
    fk_alunos_id_aluno INT,
    fk_notas_id_nota INT,
    FOREIGN KEY (fk_alunos_id_aluno)
    REFERENCES alunos (id_aluno)
    ON DELETE SET NULL,
    FOREIGN KEY (fk_notas_id_nota)
    REFERENCES notas (id_nota)
    ON DELETE SET NULL,
    PRIMARY KEY (fk_alunos_id_aluno, fk_notas_id_nota)
);

CREATE TABLE cadastram (
    fk_matriculas_id_matricula INT,
    fk_alunos_id_aluno INT,
    FOREIGN KEY (fk_matriculas_id_matricula)
    REFERENCES matriculas (id_matricula)
    ON DELETE RESTRICT,
    FOREIGN KEY (fk_alunos_id_aluno)
    REFERENCES alunos (id_aluno)
    ON DELETE SET NULL,
    PRIMARY KEY (fk_matriculas_id_matricula, fk_alunos_id_aluno)
);

CREATE TABLE formam (
    fk_turmas_id_turma INT,
    fk_matriculas_id_matricula INT,
    FOREIGN KEY (fk_turmas_id_turma)
    REFERENCES turmas (id_turma)
    ON DELETE RESTRICT,
    FOREIGN KEY (fk_matriculas_id_matricula)
    REFERENCES matriculas (id_matricula)
    ON DELETE SET NULL,
    PRIMARY KEY (fk_turmas_id_turma, fk_matriculas_id_matricula)
);

CREATE TABLE recebem_turmas (
    fk_turmas_id_turma INT,
    fk_cursos_id_curso INT,
    FOREIGN KEY (fk_turmas_id_turma)
    REFERENCES turmas (id_turma)
    ON DELETE SET NULL,
    FOREIGN KEY (fk_cursos_id_curso)
    REFERENCES cursos (id_curso)
    ON DELETE SET NULL,
    PRIMARY KEY (fk_turmas_id_turma, fk_cursos_id_curso)
);

CREATE TABLE contem (
    fk_cursos_id_curso INT,
    fk_materias_id_materia INT,
    FOREIGN KEY (fk_cursos_id_curso)
    REFERENCES cursos (id_curso)
    ON DELETE SET NULL,
    FOREIGN KEY (fk_materias_id_materia)
    REFERENCES materias (id_materia)
    ON DELETE SET NULL,
    PRIMARY KEY (fk_cursos_id_curso, fk_materias_id_materia)
);

CREATE TABLE fazem (
    fk_professores_id_professor INT,
    fk_registros_id_registro INT,
    fk_alunos_id_aluno INT,
    FOREIGN KEY (fk_professores_id_professor)
    REFERENCES professores (id_professor)
    ON DELETE NO ACTION,
    FOREIGN KEY (fk_registros_id_registro)
    REFERENCES registros (id_registro)
    ON DELETE RESTRICT,
    FOREIGN KEY (fk_alunos_id_aluno)
    REFERENCES alunos (id_aluno)
    ON DELETE NO ACTION,
    PRIMARY KEY (fk_professores_id_professor, fk_registros_id_registro, fk_alunos_id_aluno)
);

CREATE TABLE recebem_professores (
    fk_professores_id_professor INT,
    fk_materias_id_materia INT,
    FOREIGN KEY (fk_professores_id_professor)
    REFERENCES professores (id_professor)
    ON DELETE RESTRICT,
    FOREIGN KEY (fk_materias_id_materia)
    REFERENCES materias (id_materia)
    ON DELETE RESTRICT,
    PRIMARY KEY (fk_professores_id_professor, fk_materias_id_materia)
);

ALTER TABLE registros ADD CONSTRAINT FK_registros_2
    FOREIGN KEY (fk_email_email_PK)
    REFERENCES email (email_PK)
    ON DELETE NO ACTION;

ALTER TABLE registros ADD CONSTRAINT FK_registros_3
    FOREIGN KEY (fk_endereco_endereco_PK)
    REFERENCES endereco (endereco_PK)
    ON DELETE SET NULL;

ALTER TABLE registros ADD CONSTRAINT FK_registros_4
    FOREIGN KEY (fk_telefone_telefone_PK)
    REFERENCES telefone (telefone_PK)
    ON DELETE NO ACTION;
