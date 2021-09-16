-- BASE DE DADOS
CREATE DATABASE ecommerce;

-- EMPRESA
CREATE TABLE IF NOT EXISTS empresa(
    cnpj VARCHAR(14) PRIMARY KEY,
    razao_social VARCHAR(100) UNIQUE NOT NULL
);

-- USUÁRIO
CREATE TABLE IF NOT EXISTS usuario(
    email VARCHAR(100) PRIMARY KEY,
    hash_senha VARCHAR(50) NOT NULL
);

-- FUNCIONÁRIO
CREATE TABLE IF NOT EXISTS funcionario(
    cpf VARCHAR(11) PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,	

    email_usuario VARCHAR(100) REFERENCES usuario(email) NOT NULL,
    cnpj_empresa VARCHAR(14) REFERENCES empresa(cnpj) NOT NULL
);

-- CLIENTE
CREATE TABLE IF NOT EXISTS cliente(
    cpf VARCHAR(11) PRIMARY KEY,
    primeiro_nome VARCHAR(50) NOT NULL,
    sobrenome VARCHAR(50) NOT NULL,
    data_nascimento DATE NOT NULL,

    email_usuario VARCHAR(100) REFERENCES usuario(email) NOT NULL
);

-- ENDEREÇO
CREATE TABLE IF NOT EXISTS endereco(
    id SERIAL PRIMARY KEY,
    nome_rua VARCHAR(100) NOT NULL,
    numero_rua VARCHAR(10) NOT NULL,
    complemento VARCHAR(10) NOT NULL,
    bairro VARCHAR(50) NOT NULL,
    cep VARCHAR(8) NOT NULL,
    cidade VARCHAR(50) NOT NULL,
    uf CHARACTER(2) NOT NULL
);

-- CLIENTE_ENDEREÇO
CREATE TABLE IF NOT EXISTS cliente_endereco(
    cpf_cliente VARCHAR(11) REFERENCES cliente(cpf) NOT NULL,
    id_endereco INT REFERENCES endereco(id) NOT NULL,

    PRIMARY KEY (cpf_cliente, id_endereco)
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
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(100) NOT NULL,
    data_fabricacao DATE NOT NULL,
    valor_unitario DECIMAL(10,2) NOT NULL,
    qtd_estoque INT NOT NULL DEFAULT 0,

    id_categoria INT REFERENCES categoria(id) NOT NULL,
    cpf_funcionario VARCHAR(11) REFERENCES funcionario(cpf) NOT NULL
);

-- PEDIDO
CREATE TABLE IF NOT EXISTS pedido(
    id SERIAL PRIMARY KEY,
    data_pedido DATE NOT NULL,
    status BOOLEAN DEFAULT '0',

    cpf_cliente VARCHAR(11) REFERENCES cliente(cpf) NOT NULL
);

--PEDIDO_ITEM
CREATE TABLE IF NOT EXISTS pedido_produto(
  id_pedido INT REFERENCES pedido(id) NOT NULL,
  id_produto INT REFERENCES produto(id) NOT NULL,
  quantidade INT CHECK (quantidade > 0) NOT NULL,
  
  PRIMARY KEY (id_pedido, id_produto)
);

-- NOTA FISCAL
CREATE TABLE IF NOT EXISTS nota_fiscal(
  id SERIAL PRIMARY KEY,
  status BOOLEAN DEFAULT '0' NOT NULL,
  valor_total DECIMAL(10,2) DEFAULT 0 NOT NULL,
  
  id_pedido INT REFERENCES pedido(id) NOT NULL,
  cnpj_empresa VARCHAR(14) REFERENCES empresa(cnpj) NOT NULL
);