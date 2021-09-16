-- Elaboração da Nota Fiscal

-- Inserção da Nota para Pedidos Liberados
INSERT INTO nota_fiscal(id_pedido, cnpj_empresa, valor_total)
SELECT 1, '23744651000179',
(
  SELECT
    SUM(total) "TOTAL DA NOTA"
    
  FROM 
  (
      SELECT
          produto.valor_unitario * pedido_produto.quantidade "total"

      FROM pedido
      INNER JOIN cliente ON (pedido.cpf_cliente = cliente.cpf)
      INNER JOIN pedido_produto ON (pedido_produto.id_pedido = pedido.id)
      INNER JOIN produto ON (produto.id = pedido_produto.id_produto)
      WHERE pedido.id = 1
      GROUP BY pedido.id, cliente.cpf, produto.id, pedido_produto.quantidade
  ) AS "total"
)
WHERE (SELECT p.status FROM pedido p WHERE p.id = 1) = '1';


-- Exibir Nota Fiscal

SELECT
	pedido.id "NUMERO DO PEDIDO",
    pedido.data_pedido "DATA DO PEDIDO",
    cliente.primeiro_nome "NOME DO CLIENTE", 
    cliente.email_usuario "E-MAIL DO CLIENTE",
    produto.nome "NOME DO PRODUTO",
    pedido_produto.quantidade "QUANTIDADE DO PRODUTO",
    produto.valor_unitario "VALOR DO PRODUTO",
    produto.valor_unitario * pedido_produto.quantidade "TOTAL DO PRODUTO",
    nota_fiscal.valor_total "VALOR TOTAL DA NOTA"
    
FROM pedido
INNER JOIN cliente ON (pedido.cpf_cliente = cliente.cpf)
INNER JOIN pedido_produto ON (pedido_produto.id_pedido = pedido.id)
INNER JOIN produto ON (produto.id = pedido_produto.id_produto)
INNER JOIN nota_fiscal ON (nota_fiscal.id_pedido = pedido.id)

WHERE nota_fiscal.id = 1

GROUP BY pedido.id, cliente.cpf, produto.id, pedido_produto.quantidade, nota_fiscal.id
ORDER BY produto.valor_unitario ASC;

--TRUNCATE TABLE nota_fiscal RESTART IDENTITY;