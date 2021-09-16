{\rtf1\ansi\ansicpg1252\cocoartf1561\cocoasubrtf610
{\fonttbl\f0\fswiss\fcharset0 Helvetica;\f1\fmodern\fcharset0 Courier-Bold;\f2\froman\fcharset0 Times-Roman;
\f3\fmodern\fcharset0 Courier;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;\red251\green0\blue255;\red255\green255\blue255;
}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;\cssrgb\c100000\c0\c100000;\cssrgb\c100000\c100000\c100000;
}
\paperw11900\paperh16840\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 Squad_4\
Aluna: Luciana Evangelista dos Santos\
\
\
\
\pard\pardeftab720\sl360\partightenfactor0

\f1\b\fs26\fsmilli13333 \cf2 \cb3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 -- Cria\'e7\'e3o da tabela Endere\'e7o	ok
\f2\b0\fs24 \cb1 \
\pard\pardeftab720\sl280\partightenfactor0
\cf2 \
\pard\pardeftab720\sl360\partightenfactor0

\f3\fs26\fsmilli13333 \cf2 \cb4 CREATE TABLE endereco(
\f2\fs24 \cb1 \

\f3\fs26\fsmilli13333 \cb4 \'a0\'a0id SERIAL PRIMARY KEY,
\f2\fs24 \cb1 \

\f3\fs26\fsmilli13333 \cb4 \'a0\'a0nome_rua VARCHAR(100) NOT NULL,
\f2\fs24 \cb1 \

\f3\fs26\fsmilli13333 \cb4 \'a0\'a0complemento VARCHAR (10) NOT NULL,
\f2\fs24 \cb1 \

\f3\fs26\fsmilli13333 \cb4 \'a0\'a0numero_rua VARCHAR(6) NOT NULL,
\f2\fs24 \cb1 \

\f3\fs26\fsmilli13333 \cb4 \'a0\'a0bairro VARCHAR(50) NOT NULL,
\f2\fs24 \cb1 \

\f3\fs26\fsmilli13333 \cb4 \'a0\'a0cep VARCHAR(8) NOT NULL,
\f2\fs24 \cb1 \

\f3\fs26\fsmilli13333 \cb4 \'a0\'a0cidade VARCHAR(50) NOT NULL,
\f2\fs24 \cb1 \

\f3\fs26\fsmilli13333 \cb4 \'a0\'a0uf CHARACTER(2) NOT NULL
\f2\fs24 \cb1 \

\f3\fs26\fsmilli13333 \cb4 );
\f2\fs24 \cb1 \
\
\
\pard\pardeftab720\sl360\partightenfactor0

\f3\fs26\fsmilli13333 \cf2 INSERT INTO endereco(nome_rua, numero_rua,complemento, bairro, cep, cidade, uf) VALUES
\f2\fs24 \

\f3\fs26\fsmilli13333 ('Leopoldo Diniz', '45','14', 'Val\'e9rio', '22159066', 'Cachoeiras de Macacu', 'RJ'),
\f2\fs24 \

\f3\fs26\fsmilli13333 ('Tompson Franco', '16','76', 'Boa Vista', '56335490', 'Belo Horizonte', 'MG'),
\f2\fs24 \

\f3\fs26\fsmilli13333 ('Joaquim Luz', '666','32', 'Estradinha', '99663266', 'Bras\'edlia', 'DF'),
\f2\fs24 \

\f3\fs26\fsmilli13333 ('Pedro Fausto', '49','10', 'S\'e3o Luiz ', '88769022', 'Tocantis', 'TO'),
\f2\fs24 \

\f3\fs26\fsmilli13333 ('Ros\'e1rio', '2350','03', 'Consola\'e7\'e3o', '44521490', 'S\'e3o Paulo', 'SP')
\f2\fs24 \

\f3\fs26\fsmilli13333 ;
\f2\fs24 \
}