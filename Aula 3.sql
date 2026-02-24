-- create
CREATE TABLE userer (
  id INT PRIMARY KEY,
  name TEXT NOT NULL,
  dept TEXT NOT NULL,
  cpf CHAR(14) NOT NULL,
  email varchar(50) NOT NULL,
  data_nasc date NOT NULL
);

INSERT INTO userer ( id, name, dept, cpf, email, data_nasc) VALUES
(1, 'Clark Kent', 'NoobFC', '456.789.123-10', 'supermen@empress.com', '1999/12/12'),
(2, 'Pernilongo', 'WaterBreak', '789.123.789-45', 'dengue@empress.com', '2000/10/10'),
(3, 'Aliosio', 'profissional', '963.852.789-89', 'Aliosio@empress.com', '1444/09/07'),
(4, 'Larapio', 'CEO', '456.741.874-45', 'CEO@empress.com', '1500/10/10'),
(5, 'Otavio', 'NoobFC', '456.789.456-45', 'Otavionoobzin@empress.com', '2010/01/10');



-- fetch 
SELECT * FROM userer ;



 CREATE TABLE endereco (
   id INT,
   user_id INT,
   PRIMARY KEY (id),
   bairro VARCHAR(200) NOT NULL,
   num_casa VARCHAR(6) NOT NULL,
   rua VARCHAR(200) NOT NULL,
   cidade VARCHAR(200) NOT NULL,
   uf CHAR(2) NOT NULL,
   CEP CHAR(9) NOT NULL,
   foreign KEY (user_id) references userer(id)
 ); 
 
 INSERT INTO endereco (id,user_id, bairro, num_casa, rua, cidade, uf, CEP) VALUES
 (1,1, 'centro', '109', 'Ruy Barbosa', 'Itabera', 'BA', '456511179'),
 (2,2, 'centro', '99', 'Rua torta', 'Cruz das almas', 'BA', '4567841'),
 (3,3, 'centro', '456', 'Getulio Vargas', 'Itabera', 'BA', '1234567'),
 (4,4, 'centro', '78', 'Campo', 'Salvador', 'BA', '468791'),
 (5,5, 'centro', '98', 'Manoel barreto','Iacu', 'BA', '7984564');
 
 
 SELECT * FROM endereco

