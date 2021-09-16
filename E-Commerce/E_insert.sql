{\rtf1\ansi\ansicpg1252\cocoartf1561\cocoasubrtf610
{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 \
\'97CLIENTE\
\
INSERT INTO cliente(cpf, primeiro_nome, sobrenome, data_nascimento, email_usuario)\
 VALUES\
('01245634591', 'Marta','Campos', '1965-03-25', 'marta@gmail.com'),\
('07612356487', 'Roberto','Braga', '1986-11-17', 'robertobg@gmail.com'),\
('03267896543', 'Denilson','Felix', '1976-09-22', 'felixdf@gmail.com'),\
('05467823192', 'Fred','Lopes', '1989-04-19', 'lopesfred@gmail.com'),\
('01145673255', 'Cynthia','Souza', '1977-08-13', 'souzacyt@gmail.com')\
;\
\
\'97CATEGORIA\
\
INSERT INTO categoria(nome, descricao) \
VALUES\
('Bebida','Bebidas Naturais'),\
('Sobremesa','Doces Naturais'),\
('Lanche','Lanches Naturais'),\
('Combos','Promocao'),\
('Refeicao','Refeicoes Naturais')\
;\
\
\'97USUARIO\
\
INSERT INTO usuario(email) \
VALUES\
('natalia@gmail.com'),\
('rodolfo@gmail.com'),\
('luiz@gmail.com'),\
('gabriel@gmail.com'),\
('jorge@gmail.com')\
;\
\
\'97EMPRESA \
\
INSERT INTO empresa(cnpj, razao_social)\
 VALUES\
('23744651000179','Doce Magia'),\
('65789712000166','Naturali'),\
('345998711000153','Sabor Natural'),\
('1258554340001389','Natureba'),\
('872899897000165','Natus')\
;\
\
\'97ENDERE\'c7O\
\
INSERT INTO endereco(nome_rua, numero_rua,complemento, bairro, cep, cidade, uf) \
VALUES\
('Leopoldo Diniz', '45','14', 'Val\'e9rio', '22159066', 'Cachoeiras de Macacu', 'RJ'),\
('Tompson Franco', '16','76', 'Boa Vista', '56335490', 'Belo Horizonte', 'MG'),\
('Joaquim Luz', '666','32', 'Estradinha', '99663266', 'Bras\'edlia', 'DF'),\
('Pedro Fausto', '49','10', 'S\'e3o Luiz ', '88769022', 'Tocantis', 'TO'),\
('Ros\'e1rio', '2350','03', 'Consola\'e7\'e3o', '44521490', 'S\'e3o Paulo', 'SP')\
;\
\
\'97PRODUTO\
\
INSERT INTO produto(nome, descricao, data_fabricacao, valor_unitario, qtd_estoque, id_categoria) VALUES\
('Suco Folhaz','Suco de Ervas','2021-09-13','7.90','7', 1),\
('Abacaxi Mix','Abacaxi com ervas','2021-09-15','12.90','1', 2),\
('Wrap Mix','Wrap de Ervas ','2021-09-09','10.15','3', 3),\
('Combo Suave','lanche + Doce de Ervas ','2021-09-15','23.90','2', 4),\
('Energia Total','Refei\'e7\'e3o Completa','2021-09-15','7.90','3', 5)\
;\
}