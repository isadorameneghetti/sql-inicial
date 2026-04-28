create table funcionarios
(id_funcionario int PRIMARY KEY,
 nome_funcionario varchar (250),
 departamento varchar (250),
 salario decimal (10, 2));
  
INSERT INTO funcionarios
(id_funcionario, nome_funcionario, departamento, salario)
VALUES
(1, 'Heitor Vieira', 'Financeiro', 4959.22),
(2, 'Daniel Campos', 'Vendas', 3884.44),
(3, 'Luiza Dias', 'TI', 8205.78),
(4, 'Davi Lucas Moraes', 'Financeiro', 8437.02),
(5, 'Pietro Cavalcanti', 'TI', 4946.88),
(6, 'Evelyn da Mata', 'Vendas', 5278.88),
(7, 'Isabella Rocha', 'Marketing', 4006.03),
(8, 'Sra. Manuela Azevedo', 'Vendas', 6101.88),
(9, 'Brenda Cardoso', 'TI', 8853.34),
(10, 'Danilo Souza', 'TI', 8242.14);
  
SELECT * from funcionarios;
 
SELECT * from funcionarios where departamento = 'Vendas';
 
SELECT * from funcionarios where salario > 5000;
 
SELECT * from funcionarios ORDER by departamento;

UPDATE funcionarios set salario = 7500 where departamento = 'TI';

delete from funcionarios WHERE salario < 4000; 

SELECT * FROM funcionarios where departamento = 'Vendas' AND salario >= 6000;

CREATE TABLE projetos (
  id_projeto INT PRIMARY KEY,
  nome_projeto VARCHAR(100),
  id_gerente INT,
  FOREIGN KEY (id_gerente) REFERENCES funcionarios(id_funcionario)
);

INSERT INTO projetos
(id_projeto, nome_projeto, id_gerente)
VALUES
(1, 'Sistema Financeiro', 2),
(2, 'App de Vendas', 3),
(3, 'Dashboard TI', 2);

SELECT * FROM projetos WHERE id_gerente = 2;

drop table funcionarios;