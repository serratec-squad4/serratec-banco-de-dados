-- 7. 5 SQLs de consulta
--		a. Pelo menos 2 com algum tipo de junção

-- Usuários x Cliente
SELECT 
	cliente.primeiro_nome as "NOME", 
	cliente.sobrenome as "SOBRENOME", 
	usuario.email as "E-MAIL USUÁRIO" 
FROM cliente
INNER JOIN usuario 
	ON (usuario.email = cliente.email_usuario);
    
-- Funcionários    
SELECT 
	funcionario.nome as "NOME DO FUNCIONARIO",  
	empresa.razao_social as "NOME DA EMPRESA" 
FROM funcionario
INNER JOIN empresa 
	ON (funcionario.cnpj_empresa = empresa.cnpj);
    
    
-- 7. 5 SQLs de consulta
--		b. Pelo menos 1 com usando count() e group by()

SELECT
	pedido.id "NUMERO DO PEDIDO",
    pedido.data_pedido "DATA DO PEDIDO",
    cliente.primeiro_nome "NOME DO CLIENTE", 
    cliente.email_usuario "E-MAIL DO CLIENTE",
    COUNT(pedido_produto.id_produto) "QUANTIDADE DE ITENS"
    
FROM pedido
INNER JOIN cliente ON (pedido.cpf_cliente = cliente.cpf)
INNER JOIN pedido_produto ON (pedido_produto.id_pedido = pedido.id)
INNER JOIN produto ON (produto.id = pedido_produto.id_produto)
GROUP BY pedido.id, cliente.cpf
ORDER BY pedido.data_pedido ASC;