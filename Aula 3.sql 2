-- create
CREATE TABLE cliente (
  id INT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  CPF CHAR(14) NOT NULL UNIQUE,
  email VARCHAR(100)NOT NULL,
  telefone VARCHAR(15)NOT NULL,
  data_cadastro date NOT NULL
);

-- insert
INSERT INTO cliente (id, nome, CPF, email, telefone, data_cadastro) VALUES
(1, 'Riquelme', '456.789.123-78', 'Riquelme@cliente.com', '7199356', '2026/10/12'),
(2, 'Manuel', '123.456.789-74', 'Manuel@cliente.com', '7145687', '2024/09/07'),
(3, 'Julio', '456.788.456-87', 'Julio@cliente.com', '7148978', '2025/06/08'),
(4, 'Luiz', '789.123.456-23', 'Luiz@cliente.com', '7589456', '2026/10/12');


-- fetch 
SELECT * FROM cliente;


CREATE TABLE  endereco (
   id int PRIMARY KEY,
   logradouro VARCHAR(200)NOT NULL,
   numero CHAR(4)NOT NULL,
   bairro VARCHAR(200)NOT NULL,
   cidade VARCHAR(200)NOT NULL,
   uf VARCHAR(2)NOT NULL,
   cep CHAR(9)NOT NULL,
   client_id int,
   FOREIGN KEY (client_id) REFERENCES cliente(id)
);

INSERT INTO endereco (id, client_id, logradouro, numero, Bairro, cidade, uf, cep) VALUES
(1,1, 'Av.Ruy Barbosa', '1500', 'centro', 'Salvador', 'BA', '1234567'),
(2,2, 'Av Ruy Barbosa','190', 'centro', 'Itaberaba', 'BA', '7894561'),
(3,3, 'Jetulio vargas','90', 'centro', 'Iacu', 'BA', '7894561'),
(4,4, 'Emanuel barreto','67', 'centro', 'Itaberaba', 'BA', '4566661');

SELECT * FROM endereco;


CREATE TABLE carro (
   id int PRIMARY KEY,
   Carro_id int,
   placa CHAR(12)NOT NULL,
   marca VARCHAR(15)NOT NULL,
   modelo VARCHAR(20)NOT NULL,
   ano int NOT NULL,
   cor CHAR(10)NOT NULL,
   clienti_id int,
   FOREIGN KEY (clienti_id) REFERENCES cliente (id)
);
INSERT INTO carro (id, clienti_id, Carro_id, placa, marca, modelo, ano, cor) VALUES
(1,1,1, 'PKJ884', 'Fiat', '4.89', '2010', 'preto'),
(2,2,2, 'PJK876', 'Fiat', 'Hyper', '2015', 'preto'),
(3,3,3, 'PKJ898', 'Ford', 'Fort', '2024', 'branco'),
(4,4,4, 'PKJ898', 'Ford', '9.87', '2016', 'vermelho');
   

SELECT * FROM carro;

CREATE TABLE venda (
  id int PRIMARY KEY,
  venda_id int,
  client_id int,
  Carro_id int,
  data_compra date NOT NULL,
  preco_venda decimal(12.2) NOT NULL,
  clien_id int,
  FOREIGN KEY (clien_id) REFERENCES cliente (id)
);


INSERT INTO venda (id, venda_id, client_id, Carro_id, clien_id, data_compra, preco_venda) VALUES
(1,1,1,1,1,  '2024/12/01', '7889.45'),
(2,2,2,2,2,  '2025/11/01', '7889.45'),
(3,3,3,3,3, '2023/12/01', '7889.45'),
(4,4,4,4,4,  '2022/11/01', '7889.45');

SELECT * FROM venda;
