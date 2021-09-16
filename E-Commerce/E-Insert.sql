INSERT INTO cliente(cpf, primeiro_nome, sobrenome, data_nascimento, email_usuario) VALUES
('01245634591', 'Marta','Campos', '1965-03-25', 'marta@gmail.com'),
('07612356487', 'Roberto','Braga', '1986-11-17', 'robertobg@gmail.com'),
('03267896543', 'Denilson','Felix', '1976-09-22', 'felixdf@gmail.com'),
('05467823192', 'Fred','Lopes', '1989-04-19', 'lopesfred@gmail.com'),
('01145673255', 'Cynthia','Souza', '1977-08-13', 'souzacyt@gmail.com')
;


INSERT INTO categoria(nome, descricao) VALUES
('Bebida','Bebidas Naturais'),
('Sobremesa','Doces Naturais'),
('Lanche','Lanches Naturais'),
('Combos','Promocao'),
('Refeicao','Refeicoes Naturais')
;

INSERT INTO usuario(email) VALUES
('natalia@gmail.com'),
('rodolfo@gmail.com'),
('luiz@gmail.com'),
('gabriel@gmail.com'),
('jorge@gmail.com')
;

INSERT INTO empresa(cnpj, razao_social) VALUES
('23744651000179','Doce Magia'),
('65789712000166','Naturali'),
('345998711000153','Sabor Natural'),
('1258554340001389','Natureba'),
('872899897000165','Natus')
;


INSERT INTO endereco(nome_rua, numero_rua,complemento, bairro, cep, cidade, uf) VALUES
('Leopoldo Diniz', '45','14', 'Valerio', '22159066', 'Cachoeiras de Macacu', 'RJ'),
('Tompson Franco', '16','76', 'Boa Vista', '56335490', 'Belo Horizonte', 'MG'),
('Joaquim Luz', '666','32', 'Estradinha', '99663266', 'Brasília', 'DF'),
('Pedro Fausto', '49','10', 'São Luiz ', '88769022', 'Tocantis', 'TO'),
('Rosário', '2350','03', 'Consolação', '44521490', 'São Paulo', 'SP')
;



INSERT INTO produto(nome, descricao, data_fabricacao, valor_unitario, qtd_estoque, id_categoria) VALUES

('Suco Folhaz','Suco de Ervas','2021-09-13','7.90','7', 1),
('Abacaxi Mix','Abacaxi com ervas','2021-09-15','12.90','1', 2),
('Wrap Mix','Wrap de Ervas ','2021-09-09','10.15','3', 3),
('Combo Suave','lanche + Doce de Ervas ','2021-09-15','23.90','2', 4),
('Energia Total','Refeição Completa','2021-09-15','7.90','3', 5)
;