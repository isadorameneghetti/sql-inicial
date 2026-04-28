INSERT into tabelaclientes 
  (id_cliente,
  nome_cliente,
  informacoes_contato,
  endereco_cliente)
  values 
  (1, 'Isadora Meneghetti', 'isadora.meneghetti@gmail.com', 'rua A, 1');
  
SELECT * from tabelaclientes;
    
INSERT INTO tabelaclientes
  (id_cliente,
   nome_cliente,
   informacoes_contato,
   endereco_cliente)
   values 
   (2, 'Nathan Girlanda', 'nathan.girlanda@gmail.com', 'rua B, 2'),
   (3, 'Anna Cíntia', 'anna.cíntia@gmail.com', 'rua C, 3'),
   (4,'Carlos Pereira', 'carlos.pereira@email.com', 'Avenida rio, 67'),
   (5, 'Patricia Lima', 'patricia.lima@email.com', 'Rua das Flores, 123'),
   (6, 'Rodrigo Almeida', 'rodrigo.almeida@email.com', 'Avenida Central, 456'),
   (7, 'Andre Oliveira', 'andre.oliveira@email.com', 'Travessa do Sol, 789'),
   (8, 'Isabela Rodrigues', 'isabela.rodrigues@email.com', 'Rua da Paz, 321'),
   (9, 'Ricardo Sousa', 'ricardo.sousa@email.com', 'Alameda dos Sonhos, 654'),
   (10, 'Luana Gomes', 'luana.gomes@email.com', 'Praceta das Estrelas, 987'),
   (11, 'Juliano Costa', 'juliano.costa@email.com', 'Av. Principal, 234'),
   (12, 'Sandra Ferreira', 'sandra.ferreira@email.com', 'Rua da Liberdade, 567'),
   (13, 'Roberto Barbosa', 'roberto.barbosa@email.com', 'Rua da Esquina, 432'),
   (14, 'Alice Santos', 'alice.santos@email.com', 'Largo da Amizade, 765'),
   (15, 'Gustavo Lima', 'gustavo.lima@email.com', 'Avenida das Arvores, 876'),
   (16, 'Carla Silva', 'carla.silva@email.com', 'Travessa das Aves, 345'),
   (17, 'Daniel Oliveira', 'daniel.oliveira@email.com', 'Alameda dos Bosques, 678'),
   (18, 'Luciana Almeida', 'luciana.almeida@email.com', 'Rua das Colinas, 123'),
   (19, 'Fernando Pereira', 'fernando.pereira@email.com', 'Avenida das Ondas, 987'),
   (20, 'Marina Lima', 'marina.lima@email.com', 'Praceta dos Girassois, 456'),
   (21, 'Lucas Rodrigues', 'lucas.rodrigues@email.com', 'Rua das Montanhas, 321'),
   (22, 'Adriana Sousa', 'adriana.sousa@email.com', 'Travessa dos Rios, 654'),
   (23, 'Eduardo Gomes', 'eduardo.gomes@email.com', 'Avenida das Pedras, 789'),
   (24, 'Marcia Costa', 'marcia.costa@email.com', 'Largo das Praias, 234'),
   (25, 'Jose Silva', 'jose.silva@email.com', 'Av. dos Ventos, 432'),
   (26, 'Beatriz Alves', 'beatriz.alves@email.com', 'Rua dos Coqueiros, 765'),
   (27, 'Andre Santos', 'andre.santos@email.com', 'Avenida dos Lagos, 876'),
   (28, 'Carolina Lima', 'carolina.lima@email.com', 'Travessa das Neves, 345'),
   (29, 'Fabio Rodrigues', 'fabio.rodrigues@email.com', 'Alameda dos Campos, 678'),
   (30, 'Larissa Pereira', 'larissa.pereira@email.com', 'Rua dos Bosques, 123'),
   (31, 'Joao Santos', 'joao.santos@provedor.com', 'Rua dos pinheiros, 25'),
   (32, 'Maria Fernandes', 'maria.fernandes@email.com', 'Rua Santo Antonio, 10'),
   (33, 'Ana Silva', 'ana.silva@email.com', 'rua flores - casa 1');
   
 CREATE table tabelapedidosgold (
   ID_Pedido_Gold INT PRIMARY KEY,
   Data_Pedido_Gold DATE,
   Status_Gold VARCHAR (50),
   Total_Pedido_Gold DECIMAL (10, 2),
   Cliente_Gold INT,
   Data_Envio_Gold DATE,
   FOREIGN Key (Cliente_Gold) REFERENCES tabelaclientes (id_cliente)
   );
   
  INSERT into tabelapedidosgold
  (id_pedido_gold,
   data_pedido_gold,
   status_gold,
   total_pedido_gold,
   cliente_gold,
   data_envio_gold)
   SELECT 
   id,
   data_do_pedido,
   status,
   total_do_pedido,
   cliente,
   data_de_envio_es
   FROM tabelapedidos
   WHERE total_do_pedido >= 400;
   
   SELECT * from tabelapedidosgold;


