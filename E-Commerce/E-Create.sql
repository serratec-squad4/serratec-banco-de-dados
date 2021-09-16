-- FUNCIONÁRIO
CREATE TABLE IF NOT EXISTS funcionario(
id SERIAL PRIMARY KEY,
primeiro_nome VARCHAR(50) NOT NULL,
ultimo_nome VARCHAR(50) NOT NULL,	
cpf VARCHAR(11) UNIQUE NOT NULL
);

-- EMPRESA
CREATE TABLE IF NOT EXISTS empresa(
id SERIAL PRIMARY KEY,
cnpj VARCHAR(14) UNIQUE NOT NULL,
razao_social VARCHAR(100) UNIQUE NOT NULL,
end_emp VARCHAR(120) UNIQUE NOT NULL
);

-- USUÁRIO
CREATE TABLE IF NOT EXISTS usuario(
id SERIAL PRIMARY KEY,
nome_usua VARCHAR(50),
email VARCHAR(100) UNIQUE NOT NULL,
senha VARCHAR(50) NOT NULL
);

-- ENDEREÇO
CREATE TABLE IF NOT EXISTS endereco(
id SERIAL PRIMARY KEY,
end_rua VARCHAR(100) NOT NULL,
end_num INT NOT NULL,
complemento_end VARCHAR (50) NOT NULL,
bairro VARCHAR(50) NOT NULL,
cep VARCHAR(8) NOT NULL,
cidade VARCHAR(50) NOT NULL,
uf CHARACTER(2) NOT NULL
CONSTRAINT number_not_zero check (not(end_num < 0 or end_num = 0))
);

-- CATEGORIA
CREATE TABLE IF NOT EXISTS categoria(
id SERIAL PRIMARY KEY,
nome VARCHAR(50) NOT NULL,
descricao VARCHAR(100) NOT NULL 
);

-- PRODUTO
CREATE TABLE IF NOT EXISTS produto(
id SERIAL PRIMARY KEY,
prod_nome VARCHAR(50) UNIQUE NOT NULL,
prod_descricao VARCHAR(100),
data_fabricacao DATE NOT NULL,
preco_unit NUMERIC (5,2) NOT NULL,qtde_estoque INT NOT NULL,
cod_categoria INT REFERENCES categoria(id) NOT NULL,
cod_cadastro_func INT REFERENCES funcionario(id) NOT NULL
);

-- CLIENTE
CREATE TABLE IF NOT EXISTS cliente(
id SERIAL PRIMARY KEY,
cpf VARCHAR(11) UNIQUE NOT NULL,
primeiro_nome VARCHAR(50) NOT NULL,
ultimo_nome VARCHAR(50) NOT NULL,
data_nasc DATE NOT NULL,
usua INT REFERENCES usuario(id) NOT NULL,
cod_endereco INT REFERENCES endereco(id) NOT NULL
);

-- CLIENTE_ENDEREÇO
CREATE TABLE cliente_endereco(
id_cliente INT REFERENCES cliente(id) NOT NULL,
id_endereco INT REFERENCES endereco(id) NOT NULL,
PRIMARY KEY (id_cliente, id_endereco)
);

-- PEDIDO
CREATE TABLE IF NOT EXISTS pedido(
id SERIAL PRIMARY KEY,
qtde_item INT NOT NULL,
data_pedido DATE DEFAULT NOW() NOT NULL,
id_cliente INT REFERENCES cliente(id) NOT NULL,
cod_produto INT REFERENCES produto(id) NOT NULL
CONSTRAINT qtde_item_not_zero check (qtde_item > 0 AND qtde_item <> 0)
);

--PEDIDO_ITEM
CREATE TABLE IF NOT EXISTS pedido_item(
id SERIAL NOT NULL PRIMARY KEY,
id_pedido INT REFERENCES pedido(id) NOT NULL,
cod_produto INT REFERENCES endereco(id) NOT NULL,
qtde_item INT NOT NULL,
CONSTRAINT qtde_item_not_zero check (qtde_item > 0 AND qtde_item <> 0)
);

-- NOTA FISCAL
CREATE TABLE IF NOT EXISTS nota_fiscal(
valor_total NUMERIC (7,2) NOT NULL,
pedido_item INT REFERENCES pedido_item(id) NOT NULL,
cod_cliente INT REFERENCES cliente(id) NOT NULL,
cod_pedido INT REFERENCES pedido(id) NOT NULL,
razao_social VARCHAR(100)  REFERENCES empresa(razao_social) NOT NULL,
end_emp VARCHAR(120)  REFERENCES empresa(end_emp) NOT NULL,
cnpj_empresa VARCHAR(14) REFERENCES empresa(cnpj) NOT NULL,
PRIMARY KEY(pedido_item, cod_cliente, cod_pedido, cnpj_empresa)
);