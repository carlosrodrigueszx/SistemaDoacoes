-- USUÁRIOS (Dados mais diversificados para análise geográfica)
INSERT INTO USUARIO (nome_completo, email, senha, pais, estado, cidade, rua, num_residencia) VALUES
('João Silva', 'joao.silva@email.com', 'hash123', 'Brasil', 'SP', 'São Paulo', 'Rua Augusta', 1010),
('Maria Souza', 'm.souza@provider.com', 'hash123', 'Brasil', 'CE', 'Russas', 'Rua das Flores', 25),
('Carlos Lima', 'carlos_lima@servico.com.br', 'hash123', 'Brasil', 'MG', 'Belo Horizonte', 'Av. Contorno', 300),
('Ana Rocha', 'rocha.ana@email.com', 'hash123', 'Brasil', 'RS', 'Porto Alegre', 'Rua da Praia', 42),
('Pedro Alves', 'alves.p@webmail.com', 'hash123', 'Brasil', 'SC', 'Blumenau', 'Rua XV de Novembro', 505),
('Lucia Torres', 'lucia.t@email.com', 'hash123', 'Brasil', 'CE', 'Quixadá', 'Rua das Araras', 61),
('Marcos Nunes', 'marcos.nunes@email.com', 'hash123', 'Brasil', 'BA', 'Salvador', 'Av. Sete', 77),
('Paula Ribeiro', 'prib@email.com', 'hash123', 'Brasil', 'CE', 'Fortaleza', 'Rua Beira Mar', 890),
('Rafael Gomes', 'rafa.gomes@email.com', 'hash123', 'Brasil', 'GO', 'Aparecida', 'Rua 10', 92),
('Juliana Pires', 'jupires@email.com', 'hash123', 'Brasil', 'DF', 'Brasília', 'Asa Sul', 105),
-- Instituições com nomes variados
('Amigos do Bem', 'contato@amigosbem.org', 'sec123', 'Brasil', 'SP', 'São Paulo', 'Av Paulista', 1500),
('Instituto Resgate', 'adm@resgate.org', 'sec123', 'Brasil', 'RJ', 'Rio de Janeiro', 'Rua Carioca', 12),
('Caminho da Luz', 'luz@ong.org.br', 'sec123', 'Brasil', 'MG', 'Contagem', 'Rua das Minas', 88),
('EcoVida Brasil', 'financeiro@ecovida.org', 'sec123', 'Brasil', 'RS', 'Canoas', 'Av. Farroupilha', 200),
('Pequenos Passos', 'social@pequenos.org', 'sec123', 'Brasil', 'SC', 'Joinville', 'Rua Norte', 33),
('Mãos Estendidas', 'voluntario@maos.org', 'sec123', 'Brasil', 'PR', 'Londrina', 'Rua Sergipe', 450),
('Sertão Vivo', 'ajuda@sertao.org', 'sec123', 'Brasil', 'BA', 'Feira de Santana', 'Rua do Sol', 9),
('Maré Viva', 'diretoria@mare.org', 'sec123', 'Brasil', 'CE', 'Caucaia', 'Av. Central', 101),
('Planeta Limpo', 'contato@planeta.org', 'sec123', 'Brasil', 'GO', 'Goiânia', 'Rua T-7', 55),
('Apoio Fraterno', 'projetos@apoio.org', 'sec123', 'Brasil', 'DF', 'Taguatinga', 'QND 15', 30);

INSERT INTO TELEFONE (telefone, id_usuario) VALUES
('(11)98822-0001',1),('(85)97733-0002',2),('(31)96644-0003',3),
('(51)95555-0004',4),('(47)94466-0005',5),('(85)93377-0006',6),
('(71)92288-0007',7),('(85)91199-0008',8),('(62)99911-0009',9),('(61)98822-0010',10);

INSERT INTO INSTITUICAO (cnpj, descricao, id_instituicao) VALUES
('11.222.333/0001-11','Foco em alimentação básica',11),
('22.333.444/0001-22','Apoio a moradores de rua',12),
('33.444.555/0001-33','Distribuição de agasalhos',13),
('44.555.666/0001-44','Educação ambiental',14),
('55.666.777/0001-55','Creche e apoio infantil',15),
('66.777.888/0001-66','Cursos profissionalizantes',16),
('77.888.999/0001-77','Combate à fome no sertão',17),
('88.999.000/0001-88','Preservação marinha',18),
('99.000.111/0001-99','Reciclagem comunitária',19),
('00.111.222/0001-00','Assistência a idosos',20);

INSERT INTO CONTRIBUIDOR (cpf, data_nascimento, id_contribuidor) VALUES
('123.456.789-00','1975-05-12',1),('234.567.890-11','1988-11-23',2),
('345.678.901-22','1992-02-15',3),('456.789.012-33','2001-07-30',4),
('567.890.123-44','1980-01-05',5),('678.901.234-55','1995-12-18',6),
('789.012.345-66','1987-03-22',7),('890.123.456-77','1993-08-01',8),
('901.234.567-88','1969-09-12',9),('012.345.678-99','1998-04-20',10);

-- CAMPANHA (Metas e Vagas variadas para gráficos de barras desiguais)
INSERT INTO CAMPANHA (nome, meta, regras, data_ini, data_fim, qnt_vagas, id_instituicao) VALUES
('Natal Sem Fome','500kg Alimentos','Apenas não perecíveis','2025-11-01','2026-01-05',50,11),
('Inverno Quente','200 Agasalhos','Roupas limpas','2026-05-01','2026-08-30',25,12),
('Dia das Crianças','1000 Brinquedos','Novos ou usados','2026-09-15','2026-10-12',100,13),
('Biblioteca Viva','300 Livros','Livros didáticos','2026-01-10','2026-06-30',15,14),
('Higiene é Saúde','150 Kits','Sabonete e Pasta','2026-03-01','2026-04-30',10,15),
('Alimento Pet','1000kg Ração','Cães e Gatos','2026-02-01','2026-12-31',40,16),
('Agosto Lilás','500 Cestas','Cestas Básicas','2025-08-01','2025-08-31',30,17),
('SOS Litoral','2000 Águas','Garrafas 1.5L','2026-01-05','2026-02-28',120,18),
('Volta às Aulas','400 Mochilas','Com material','2026-01-15','2026-02-15',60,19),
('Envelhecer Bem','50 Cobertores','Lã ou Soft','2026-06-01','2026-07-31',12,20);

INSERT INTO PONTO_COLETA (pais, estado, cidade, rua, num_residencia, id_campanha) VALUES
('Brasil','SP','São Paulo','Rua Augusta',1010,1),
('Brasil','RJ','Niterói','Shopping Plaza',50,2),
('Brasil','MG','Belo Horizonte','Praça da Liberdade',1,3),
('Brasil','RS','Porto Alegre','Terminal Rodoviário',10,4),
('Brasil','SC','Joinville','Rua do Príncipe',100,5),
('Brasil','PR','Curitiba','Shopping Estação',200,6),
('Brasil','BA','Salvador','Elevador Lacerda',5,7),
('Brasil','CE','Fortaleza','Beira Mar',2000,8),
('Brasil','GO','Goiânia','Av. 85',150,9),
('Brasil','DF','Brasília','Shopping Conjunto',30,10);

-- HORÁRIO (Variação de turnos para análise de disponibilidade)
INSERT INTO HORARIO_FUNCIONAMENTO (hora_ini, hora_fim, dia, id_pontocoleta) VALUES
('08:00','22:00',1,1),('10:00','18:00',2,2),
('09:00','17:00',3,3),('07:00','13:00',4,4),
('08:30','18:30',5,5),('10:00','22:00',6,6),
('08:00','12:00',7,7),('09:00','21:00',1,8),
('13:00','19:00',2,9),('08:00','18:00',3,10);

INSERT INTO BENEFICIARIO (cpf, nome) VALUES
('101.101.101-01','Lar dos Velhinhos'),('202.202.202-02','Orfanato Santa Maria'),
('303.303.303-03','Comunidade Sol Nascente'),('404.404.404-04','Escola Municipal Z'),
('505.505.505-05','Refúgio Animal'),('606.606.606-06','Associação de Bairro X'),
('707.707.707-07','Abrigo Esperança'),('808.808.808-08','Hospital da Criança'),
('909.909.909-09','Vila Vicentina'),('010.010.010-10','Centro de Recuperação');

INSERT INTO CAMP_BENEFICIA_BENEF (id_beneficiario, id_campanha) VALUES
(1,10),(2,3),(3,1),(4,4),(5,6),(6,7),(7,2),(8,8),(9,5),(10,9);

-- DOAÇÕES (Datas espalhadas para ver sazonalidade no gráfico de linha)
INSERT INTO DOACAO (data, descricao, id_contribuidor, id_campanha, id_pontocoleta) VALUES
('2025-12-01','Arroz e Feijão',1,1,1),
('2026-05-15','Casaco de Lã',2,2,2),
('2026-10-02','Carrinho de Controle',3,3,3),
('2026-02-10','Livro de História',4,4,4),
('2026-03-20','Kits de Banho',5,5,5),
('2026-04-12','Ração Golden',6,6,6),
('2025-08-15','Cesta Básica Completa',7,7,7),
('2026-01-20','Fardo de Água',8,8,8),
('2026-02-05','Mochila Escolar',9,9,9),
('2026-07-10','Cobertor de Casal',10,10,10);

INSERT INTO TIPO_DOACAO (tipo, id_doacao) VALUES
('Alimento',1),('Roupa',2),('Brinquedo',3),('Livro',4),('Higiene',5),
('Alimento',6),('Alimento',7),('Higiene',8),('Outros',9),('Roupa',10);

INSERT INTO VAGA (descricao, id_campanha, id_contribuidor) VALUES
('Triagem de Alimentos',1,1),('Organização de Cabides',2,2),
('Embalagem de Presentes',3,3),('Catalogação de Livros',4,4),
('Montagem de Kits',5,5),('Carregamento de Cargas',6,6),
('Logística de Entrega',7,7),('Distribuição de Água',8,8),
('Monitor de Evento',9,9),('Apoio Administrativo',10,10);

INSERT INTO HORARIO_VAGA (hora_ini, hora_fim, dia, id_vaga) VALUES
('08:00','12:00',1,1),('14:00','18:00',2,2),
('18:00','22:00',3,3),('09:00','11:00',4,4),
('13:30','15:30',5,5),('07:00','10:00',6,6),
('10:00','16:00',1,7),('12:00','18:00',2,8),
('08:00','17:00',3,9),('19:00','21:00',4,10);

INSERT INTO TIPO_ACEITO (tipo, id_pontocoleta) VALUES
('Alimento',1),('Roupa',2),('Brinquedo',3),('Livro',4),('Higiene',5),
('Ração',6),('Cesta Básica',7),('Água',8),('Material Escolar',9),('Cobertor',10);

