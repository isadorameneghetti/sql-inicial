create table tabelafuncionarios 
(id_funcionario INT PRIMARY key, 
 nome_funcionario TEXT, 
 cargo_funcionario TEXT, 
 departamento_funcionario TEXT, 
 data_contratacao_funcionario DATE, 
 salario DECIMAL (10, 2));
 
 INSERT INTO tabelafuncionarios
 (id_funcionario, 
 nome_funcionario, 
 cargo_funcionario, 
 departamento_funcionario, 
 data_contratacao_funcionario,
 salario)
 VALUES 
 ('32D', 'João Silva', 'Desenvolvedor de Software', 'TI', '2023-10-24', 6000.00);
 
 select * from tabelafuncionarios;