-- Inserção de 5 Empresas
INSERT INTO empresa(cnpj, razao_social) VALUES
('23744651000179','Doce Magia'),
('65789712000166','Naturali'),
('34599871100013','Sabor Natural'),
('12555434000138','Natureba'),
('87299897000165','Natus')
;

-- Inserção de 5 Usuários
INSERT INTO usuario(email, hash_senha) VALUES
('marta@gmail.com','sd346#$'),
('robertobg@gmail.com','dfgd34%#$'),
('felixdf@gmail.com','fh45#$'),
('lopesfred@gmail.com','rgers854%#$'),
('souzacyt@gmail.com','¨sdgrth$#$'),
('jose@jose.com','75AFV486'),
('maria@maria.com','253$%BF36'),
('pedro@pedro.com','12dsgsd945'),
('flavio@flavio.com','85s#@KDJ96'),
('ricardo@ricardo.com','357@#RV8')
;

-- Inserção de 5 Funcionários
INSERT INTO funcionario(cpf, nome, email_usuario, cnpj_empresa) VALUES
('12345678968','José da Silva', 'jose@jose.com','23744651000179'),
('12248578988','Maria Pereira', 'maria@maria.com','65789712000166'),
('59856745845','Pedro Oliveira', 'pedro@pedro.com','34599871100013'),
('85698741025','Flávio de Castro', 'flavio@flavio.com','12555434000138'),
('12356854749','Ricardo Almeida', 'ricardo@ricardo.com','87299897000165')
;

-- Inserção de 5 Endereços
INSERT INTO endereco(nome_rua, numero_rua, complemento, bairro, cep, cidade, uf) VALUES
('Leopoldo Diniz', '45', '14', 'Valerio', '22159066', 'Cachoeiras de Macacu', 'RJ'),
('Tompson Franco', '16', '76', 'Boa Vista', '56335490', 'Belo Horizonte', 'MG'),
('Joaquim Luz', '666', '32', 'Estradinha', '99663266', 'Brasília', 'DF'),
('Pedro Fausto', '49', '10', 'São Luiz ', '88769022', 'Tocantis', 'TO'),
('Rosário', '2350', '03', 'Consolação', '44521490', 'São Paulo', 'SP')
;

-- Inserção de 5 Clientes
INSERT INTO cliente(cpf, primeiro_nome, sobrenome, data_nascimento, email_usuario) VALUES
('01245634591', 'Marta','Campos', '1965-03-25', 'marta@gmail.com'),
('07612356487', 'Roberto','Braga', '1986-11-17', 'robertobg@gmail.com'),
('03267896543', 'Denilson','Felix', '1976-09-22', 'felixdf@gmail.com'),
('05467823192', 'Fred','Lopes', '1989-04-19', 'lopesfred@gmail.com'),
('01145673255', 'Cynthia','Souza', '1977-08-13', 'souzacyt@gmail.com')
;

-- Inserção de 5 Cliente_Endereco
INSERT INTO cliente_endereco(cpf_cliente, id_endereco) VALUES
('01245634591', 1),
('07612356487', 2),
('03267896543', 3),
('05467823192', 4),
('01145673255', 5),
('01145673255', 1)
;

-- Inserção de 5 Categorias
INSERT INTO categoria(nome, descricao) VALUES
('Bebida','Bebidas Naturais'),
('Sobremesa','Doces Naturais'),
('Lanche','Lanches Naturais'),
('Combos','Promocao'),
('Refeicao','Refeicoes Naturais')
;

-- Inserção de 5 Produtos
INSERT INTO produto(nome, descricao, data_fabricacao, valor_unitario, qtd_estoque, id_categoria, cpf_funcionario) VALUES
('Suco Folhaz', 'Suco de Ervas', '2021-09-13', 7.90, 50, 1, '12345678968'),
('Abacaxi Mix', 'Abacaxi com ervas', '2021-09-15', 12.90, 25, 2, '12248578988'),
('Wrap Mix', 'Wrap de Ervas ', '2021-09-09', 10.15, 47, 3, '59856745845'),
('Combo Suave', 'lanche + Doce de Ervas ', '2021-09-15', 23.90, 63, 4, '85698741025'),
('Energia Total', 'Refeição Completa', '2021-09-15', 7.90, 16, 5, '12356854749')
;

-- Inserção de 5 Pedidos
INSERT INTO pedido(data_pedido, status, cpf_cliente) VALUES
('2021-09-10', '0', '01245634591'),
('2021-08-05', '0', '07612356487'),
('2021-09-12', '0', '03267896543'),
('2021-09-07', '0', '05467823192'),
('2021-09-09', '0', '01145673255')
;

-- Inserção de 5 Pedido_Produto
INSERT INTO pedido_produto(id_pedido, id_produto, quantidade) VALUES
(1, 5, 12),
(1, 1, 6),
(2, 2, 9),
(3, 4, 22),
(4, 3, 4),
(5, 1, 7)
;