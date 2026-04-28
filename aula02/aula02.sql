create table tabelaclientes (
  ID_Cliente INT PRIMARY KEY, 
  Nome_Cliente VARCHAR (250),
  Informacoes_Contato VARCHAR (250)
  );
  
select * from tabelaclientes;
 
alter table tabelaclientes add Endereco_Cliente VARCHAR (250);
 
DROP TABLE tabelaclientes;

DROP TABLE tabelacategorias;

create table tabelacategorias (
  ID_Categoria INT PRIMARY KEY,
  Nome_Categoria VARCHAR (250),
  Descricao_Categoria TEXT
  );
  
SELECT * from tabelacategorias;

CREATE TABLE tabelaprodutos (
  ID_Produto INT PRIMARY KEY,
  Nome_Produto VARCHAR (250),
  Descricao_Produto TEXT,
  Categoria_Produto INT,
  Preco_Produto DECIMAL (10, 2),
  Unidade_Produtos VARCHAR (50),
  Fornecedor INT,
  Data_Inclusao DATE,
  FOREIGN KEY (Categoria_Produto) REFERENCES tabelacategorias (id_categoria),
  FOREIGN KEY (Fornecedor) REFERENCES tabelafornecedores (id)
  );
  
 SELECT * from tabelaprodutos;


