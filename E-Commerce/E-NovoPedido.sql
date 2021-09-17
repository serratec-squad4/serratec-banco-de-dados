-- FAZER NOSOS PEDIDOS

-- Inserção do Pedido
INSERT INTO pedido(data_pedido, cpf_cliente) VALUES
('2021-09-10','01245634591')
;

-- Inserção do Pedido_Produto
INSERT INTO pedido_produto(id_pedido, id_produto, quantidade)
SELECT 1, 3, 3
WHERE 3 <= (SELECT p.qtd_estoque FROM produto p WHERE p.id = 3);

-- LIberar Pedido
UPDATE pedido
SET status = '1'
WHERE id = 1 AND (SELECT p.qtd_estoque FROM produto p WHERE p.id = 3) >= 3;