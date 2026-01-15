CREATE TABLE USUARIO
(
  id_usuario SERIAL PRIMARY KEY,
  nome_completo VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  senha VARCHAR(255) NOT NULL,
  pais VARCHAR(255) NOT NULL,
  estado VARCHAR(255) NOT NULL,
  cidade VARCHAR(255) NOT NULL,
  rua VARCHAR(255) NOT NULL,
  num_residencia INT, -- OPCIONAL ou VARCHAR: conheco pessoas sem numero ('S/N')
  UNIQUE (email)
);

CREATE TABLE TELEFONE
(
  telefone VARCHAR(20) NOT NULL,
  id_usuario INT NOT NULL,
  PRIMARY KEY (id_usuario, telefone),
  FOREIGN KEY (id_usuario) REFERENCES USUARIO(id_usuario)
);

CREATE TABLE INSTITUICAO
(
  cnpj CHAR(18) NOT NULL,
  descricao VARCHAR(1024) NOT NULL,
  id_instituicao INT PRIMARY KEY,
  FOREIGN KEY (id_instituicao) REFERENCES USUARIO(id_usuario),
  UNIQUE (cnpj)
);

CREATE TABLE CONTRIBUIDOR
(
  cpf CHAR(14) NOT NULL,
  data_nascimento DATE,
  id_contribuidor INT PRIMARY KEY,
  FOREIGN KEY (id_contribuidor) REFERENCES USUARIO(id_usuario),
  UNIQUE (cpf)
);

CREATE TABLE CAMPANHA
(
  id_campanha SERIAL PRIMARY KEY,
  nome VARCHAR(255) NOT NULL,
  meta VARCHAR(255) NOT NULL,
  regras VARCHAR(1024) NOT NULL,
  data_ini DATE NOT NULL,
  data_fim DATE NOT NULL,
  qnt_vagas INT NOT NULL,
  id_instituicao INT NOT NULL,
  FOREIGN KEY (id_instituicao) REFERENCES INSTITUICAO(id_instituicao)
);

-- Notas: Tinha um 'id_horario' aleatorio nessa tabela,
-- tambem estava no relacional (nao sei ha quanto tempo).
-- Removi por nao saber o motivo da coluna.
CREATE TABLE PONTO_COLETA
(
  id_pontocoleta SERIAL PRIMARY KEY,
  pais VARCHAR(255) NOT NULL,
  estado VARCHAR(255) NOT NULL,
  cidade VARCHAR(255) NOT NULL,
  rua VARCHAR(255) NOT NULL,
  num_residencia INT, -- OPCIONAL ou VARCHAR ('S/N')
  id_campanha INT NOT NULL,
  FOREIGN KEY (id_campanha) REFERENCES CAMPANHA(id_campanha)
);

-- Notas: a chave primaria dessa tabela poderia ser todas
-- as colunas, porem no relacional v-9 era somente o id_pontocoleta. 
-- O ponto de coleta deveria conseguir ter mais de um horario,
-- entao eu coloquei o dia na chave primaria tambem. Aberto a discussoes.
CREATE TABLE HORARIO_FUNCIONAMENTO
(
  hora_ini TIME NOT NULL, -- TIME: hora sem fuso horario
  hora_fim TIME NOT NULL,
  dia INT NOT NULL, -- domingo = 1, sabado = 7
  id_pontocoleta INT NOT NULL,
  PRIMARY KEY (id_pontocoleta, dia),
  FOREIGN KEY (id_pontocoleta) REFERENCES PONTO_COLETA(id_pontocoleta)
);

CREATE TABLE BENEFICIARIO
(
  id_beneficiario SERIAL PRIMARY KEY,
  cpf CHAR(14),
  nome VARCHAR(255) NOT NULL,
  UNIQUE (cpf)
);

CREATE TABLE CAMP_BENEFICIA_BENEF
(
  id_beneficiario INT NOT NULL,
  id_campanha INT NOT NULL,
  PRIMARY KEY (id_beneficiario, id_campanha),
  FOREIGN KEY (id_beneficiario) REFERENCES BENEFICIARIO(id_beneficiario),
  FOREIGN KEY (id_campanha) REFERENCES CAMPANHA(id_campanha)
);

CREATE TABLE DOACAO
(
  id_doacao SERIAL PRIMARY KEY,
  data DATE NOT NULL,
  descricao VARCHAR(1024) NOT NULL,
  id_contribuidor INT NOT NULL,
  id_campanha INT NOT NULL,
  id_pontocoleta INT,
  FOREIGN KEY (id_contribuidor) REFERENCES CONTRIBUIDOR(id_contribuidor),
  FOREIGN KEY (id_campanha) REFERENCES CAMPANHA(id_campanha),
  FOREIGN KEY (id_pontocoleta) REFERENCES PONTO_COLETA(id_pontocoleta)
);

-- No modelo relacional v-9 tinha que a chave era apenas
-- id_doacao, mas a doacao deveria poder ter mais de um tipo,
-- portanto acrescentei 'tipo' na chave primaria.
CREATE TABLE TIPO_DOACAO
(
  tipo VARCHAR(255) NOT NULL,
  id_doacao INT NOT NULL,
  PRIMARY KEY (id_doacao, tipo),
  FOREIGN KEY (id_doacao) REFERENCES DOACAO(id_doacao)
);

CREATE TABLE VAGA
(
  descricao VARCHAR(1024) NOT NULL,
  id_vaga SERIAL PRIMARY KEY,
  id_campanha INT NOT NULL,
  id_contribuidor INT NOT NULL,
  FOREIGN KEY (id_campanha) REFERENCES CAMPANHA(id_campanha),
  FOREIGN KEY (id_contribuidor) REFERENCES CONTRIBUIDOR(id_contribuidor)
);

-- Notas (mesmo caso da tabela HORARIO_FUNCIONAMENTO): 
-- a chave primaria dessa tabela poderia ser todas
-- as colunas, porem no relacional v-9 era somente o id_vaga. 
-- A vaga deveria conseguir ter mais de um horario (pelos dias da semana, por exemplo),
-- entao eu coloquei o dia na chave primaria tambem. Aberto a discussoes.
CREATE TABLE HORARIO_VAGA
(
  hora_ini TIME NOT NULL,
  hora_fim TIME NOT NULL,
  dia INT NOT NULL,
  id_vaga INT NOT NULL,
  PRIMARY KEY (id_vaga, dia),
  FOREIGN KEY (id_vaga) REFERENCES VAGA(id_vaga)
);

-- No modelo relacional v-9 tinha que a chave era apenas id_doacao, 
-- mas o ponto de coleta deveria poder aceitar mais de um tipo,
-- portanto acrescentei 'tipo' a chave primaria.
CREATE TABLE TIPO_ACEITO
(
  tipo VARCHAR(255) NOT NULL,
  id_pontocoleta INT NOT NULL,
  PRIMARY KEY (id_pontocoleta, tipo),
  FOREIGN KEY (id_pontocoleta) REFERENCES PONTO_COLETA(id_pontocoleta)
);
