select * from tabelaclientes WHERE nome_cliente > 'C' order by endereco_cliente DESC; 

select * from tabelapedidos where data_do_pedido > '2023-09-19';

SELECT * from tabelapedidos;

select * from tabelapedidos WHERE total_do_pedido > 200 and status = 'Pendente';

select * from tabelapedidos WHERE NOT status = 'Pendente';

SELECT * FROM tabelapedidos where data_de_envio_es BETWEEN '2023-08-01' AND '2023-09-01';

select * from tabelaprodutos where preco_produto BETWEEN 200 and 600;

select informacoes_contato AS email_cliente from tabelaclientes;

SELECT * from tabelaclientes;