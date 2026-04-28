CREATE TABLE alunos (
  id_aluno INT PRIMARY KEY,
  nome_aluno VARCHAR(250),
  data_nascimento_aluno DATE,
  genero_aluno VARCHAR(50),
  endereco_aluno VARCHAR(250),
  telefone_contato_aluno VARCHAR(50),
  email_aluno VARCHAR(250)
);

CREATE TABLE professores (
  id_professor INT PRIMARY KEY,
  nome_professor VARCHAR(250),
  data_nascimento_professor DATE,
  genero_professor VARCHAR(50),
  telefone_contato_professor VARCHAR(50),
  email_professor VARCHAR(250)
);

CREATE TABLE disciplinas (
  id_disciplina INT PRIMARY KEY,
  nome_disciplina VARCHAR(250),
  descricao_disciplina TEXT,
  carga_horaria INT,
  id_professor INT,
  FOREIGN KEY (id_professor) REFERENCES professores(id_professor)
);

CREATE TABLE turmas (
  id_turma INT PRIMARY KEY,
  nome_turma VARCHAR(250),
  ano_letivo INT,
  id_professor_orientador INT,
  FOREIGN KEY (id_professor_orientador) REFERENCES professores(id_professor)
);

CREATE TABLE turma_disciplinas (
  id_turma INT,
  id_disciplina INT,
  PRIMARY KEY (id_turma, id_disciplina),
  FOREIGN KEY (id_turma) REFERENCES turmas(id_turma),
  FOREIGN KEY (id_disciplina) REFERENCES disciplinas(id_disciplina)
);

CREATE TABLE notas (
  id_nota INT PRIMARY KEY,
  id_aluno INT,
  id_disciplina INT,
  valor_nota DECIMAL(4,2),
  data_avaliacao_nota DATE,
  FOREIGN KEY (id_aluno) REFERENCES alunos(id_aluno),
  FOREIGN KEY (id_disciplina) REFERENCES disciplinas(id_disciplina)
);

INSERT INTO alunos 
(id_aluno, nome_aluno, data_nascimento_aluno, genero_aluno, endereco_aluno, telefone_contato_aluno, email_aluno)
VALUES
(1, 'João Silva', '2005-03-15', 'Masculino', 'Rua das Flores, 123', '(11) 9876-5432', 'joao@email.com'),
(2, 'Maria Santos', '2006-06-20', 'Feminino', 'Avenida Principal, 456', '(11) 8765-4321', 'maria@email.com'),
(3, 'Pedro Soares', '2004-01-10', 'Masculino', 'Rua Central, 789', '(11) 7654-3210', 'pedro@email.com'),
(4, 'Ana Lima', '2005-04-02', 'Feminino', 'Rua da Escola, 56', '(11) 8765-4321', 'ana@email.com'),
(5, 'Mariana Fernandes', '2005-08-12', 'Feminino', 'Avenida da Paz, 789', '(11) 5678-1234', 'mariana@email.com'),
(6, 'Lucas Costa', '2003-11-25', 'Masculino', 'Rua Principal, 456', '(11) 1234-5678', 'lucas@email.com'),
(7, 'Isabela Santos', '2006-09-10', 'Feminino', 'Rua da Amizade, 789', '(11) 9876-5432', 'isabela@email.com'),
(8, 'Gustavo Pereira', '2004-05-15', 'Masculino', 'Avenida dos Sonhos, 123', '(11) 7654-3210', 'gustavo@email.com'),
(9, 'Carolina Oliveira', '2005-02-20', 'Feminino', 'Rua da Alegria, 456', '(11) 8765-4321', 'carolina@email.com'),
(10, 'Daniel Silva', '2003-10-05', 'Masculino', 'Avenida Central, 789', '(11) 1234-5678', 'daniel@email.com'),
(11, 'Larissa Souza', '2004-12-08', 'Feminino', 'Rua da Felicidade, 123', '(11) 9876-5432', 'larissa@email.com'),
(12, 'Bruno Costa', '2005-07-30', 'Masculino', 'Avenida Principal, 456', '(11) 7654-3210', 'bruno@email.com'),
(13, 'Camila Rodrigues', '2006-03-22', 'Feminino', 'Rua das Estrelas, 789', '(11) 8765-4321', 'camila@email.com'),
(14, 'Rafael Fernandes', '2004-11-18', 'Masculino', 'Avenida dos Sonhos, 123', '(11) 1234-5678', 'rafael@email.com'),
(15, 'Letícia Oliveira', '2005-01-05', 'Feminino', 'Rua da Alegria, 456', '(11) 9876-5432', 'leticia@email.com'),
(16, 'Fernanda Lima', '2004-02-12', 'Feminino', 'Rua da Esperança, 789', '(11) 4567-8901', 'fernanda@email.com'),
(17, 'Vinícius Santos', '2003-07-28', 'Masculino', 'Avenida da Amizade, 123', '(11) 8901-2345', 'vinicius@email.com'),
(18, 'Juliana Pereira', '2006-09-01', 'Feminino', 'Rua das Rosas, 789', '(11) 3456-7890', 'juliana@email.com');

INSERT INTO professores 
(id_professor, nome_professor, data_nascimento_professor, genero_professor, telefone_contato_professor, email_professor)
VALUES
(1, 'Ana Oliveira', '1980-05-25', 'Feminino', '(11) 1234-5678', 'ana@email.com'),
(2, 'Carlos Ferreira', '1975-09-12', 'Masculino', '(11) 2345-6789', 'carlos@email.com'),
(3, 'Mariana Santos', '1982-03-15', 'Feminino', '(11) 3456-7890', 'mariana@email.com'),
(4, 'Ricardo Silva', '1978-08-20', 'Masculino', '(11) 7890-1234', 'ricardo@email.com'),
(5, 'Fernanda Lima', '1985-01-30', 'Feminino', '(11) 4567-8901', 'fernanda@email.com');

INSERT INTO disciplinas 
(id_disciplina, nome_disciplina, descricao_disciplina, carga_horaria, id_professor)
VALUES
(1, 'Matemática', 'Estudo de conceitos matemáticos avançados', 60, 1),
(2, 'História', 'História mundial e local', 45, 2),
(3, 'Física', 'Princípios fundamentais da física', 60, 1),
(4, 'Química', 'Estudo da química e suas aplicações', 45, 3),
(5, 'Inglês', 'Aulas de inglês para iniciantes', 45, 4),
(6, 'Artes', 'Exploração da criatividade artística', 30, 5);

INSERT INTO turmas 
(id_turma, nome_turma, ano_letivo, id_professor_orientador)
VALUES
(1, 'Turma A', 2023, 1),
(2, 'Turma B', 2023, 2),
(3, 'Turma C', 2023, 3),
(4, 'Turma D', 2023, 4),
(5, 'Turma E', 2023, 5);

INSERT INTO turma_disciplinas
(id_turma, id_disciplina)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(1, 3),
(2, 1),
(3, 2);

INSERT INTO notas
(id_nota, id_aluno, id_disciplina, valor_nota, data_avaliacao_nota)
VALUES
(1, 1, 1, 8.5, '2023-06-10'),
(2, 2, 2, 7.0, '2023-06-11'),
(3, 3, 3, 9.0, '2023-06-12'),
(4, 4, 4, 6.5, '2023-06-13'),
(5, 5, 5, 8.0, '2023-06-14'),
(6, 1, 3, 7.5, '2023-06-15'),
(7, 2, 1, 9.5, '2023-06-16'),
(8, 3, 2, 6.0, '2023-06-17');

select * from alunos;

select * from disciplinas;

select * from notas;

select * from professores;

select * from turmas;

SELECT * from turma_disciplinas;

select * from alunos ORDER by nome_aluno;

select * from disciplinas WHERE carga_horaria > 40;

SELECT * from notas where valor_nota > 6 and valor_nota < 8;

