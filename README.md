# TRABALHO 01:  Coleta de Materiais de Genshin Impact
Trabalho desenvolvido durante a disciplina de BD1

# Sumário

### 1. COMPONENTES<br>
Integrantes do grupo<br>
Ana Gabriella Gomes de Almeida Ferreira: algabg1@gmail.com<br>
Pedro Aguiar Alves: pedro1aguiar@outlook.com<br>

### 2.INTRODUÇÃO E MOTIVAÇÃO<br>
Este documento contém a especificação do projeto do banco de dados **Materiais e artefatos de Genshin Impact** e motivação da escolha realizada. <br>

> Um jogador de Genshin Impact começou recentemente a melhorar seus personagens a fim de conseguir derrotar oponentes de níveis altos e concluir missões de maneira mais fácil e rápida. Para isso, ele precisa coletar determinados materiais específicos para aumentar os níveis dos personagens e suas respectivas armas e habilidades. O sistema proposto tem como objetivo gerenciar a coleta de materiais e artefatos. Sendo assim, o sistema deve armazenar informações de personagens, equipamentos, domínios e principalmente materiais e artefatos, além de suas relações como quais personagens ou equipamentos necessitam de quais materiais e artefatos, bem como os domínios do mapa do jogo.

### 3.MINI-MUNDO<br>

> O sistema proposto deve gerenciar os materiais e artefatos que serão coletados, assim como sua disponibilidade (onde, quando e como está disponível). Os personagens e equipamentos possuem nome e nível. Eles precisam de materiais e artefatos para subir de nível. Os materiais e artefatos possuem nome, disponibilidade de horário, quantidade e tipo. Os personagens também podem elevar o nível de suas habilidades e elas podem ser do tipo "Normal", "Elemental" ou "Suprema". Os materiais e artefatos podem ser achados em domínios diferentes. Esses domínios são locais específicos no mapa do jogo e possuem nome e descrição. Os materiais e artefatos ficam disponíveis em horários diferentes nos domínios.

### 4.PROTOTIPAÇÃO, PERGUNTAS A SEREM RESPONDIDAS E TABELA DE DADOS<br>
#### 4.1 RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>
<!-- Neste ponto a codificação não e necessária, somente as ideias de telas devem ser criadas, o princípio aqui é pensar na criação da interface para identificar possíveis informações a serem armazenadas ou descartadas <br> -->

<!-- Sugestão: https://balsamiq.com/products/mockups/<br> -->

<img src="[image1.png](https://github.com/algabg1/Trab-BD1-202201/blob/master/images/page-login.jpg)" width="450"/> <img src="[image2.png](https://github.com/algabg1/Trab-BD1-202201/blob/master/images/page-eq1.jpg)" width="450"/> 

<p float="left">
  <img src="https://github.com/algabg1/Trab-BD1-202201/blob/master/images/page-eq1.jpg" width="400" />
  <img src="https://github.com/algabg1/Trab-BD1-202201/blob/master/images/page-eq2.jpg" width="400" />
</p>

<p float="left">
  <img src="https://github.com/algabg1/Trab-BD1-202201/blob/master/images/page-pers1.jpg" width="400" />
  <img src="https://github.com/algabg1/Trab-BD1-202201/blob/master/images/page-pers2.jpg" width="400" />
</p>

#### 4.2 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?
   <!-- a) O sistema proposto poderá fornecer quais tipos de relatórios e informaçes? 
    b) Crie uma lista com os 5 principais relatórios que poderão ser obtidos por meio do sistema proposto! -->
    
> O sistema proposto pode gerar:
* Relatórios de materiais e artefatos que cada personagem utiliza.
* Relatórios de materiais e artefatos que as habilidades dos personagens utilizam.
* Relatórios de materiais e artefatos que os equipamentos utilizam.
* Relatórios dos locais que os materiais e artefatos estão disponíveis.
* Relatórios dos dias e a quantidade de tempo que os materiais e artefatos estarão disponíveis.
 
 
#### 4.3 TABELA DE DADOS DO SISTEMA:
 <!--   a) Esta tabela deve conter todos os atributos do sistema e um mínimo de 10 linhas/registros de dados.
    b) Esta tabela tem a intenção de simular um relatório com todos os dados que serão armazenados -->
    
![Simulação de relatório dos dados que serão armazenados](https://github.com/algabg1/Trab-BD1-202201/blob/master/arquivos/Tabelas%20Genshin.xlsx "Tabela - Coleta de Materiais de Genshin Imapct")
    
    
### 5.MODELO CONCEITUAL<br>
  <!--  A) Utilizar a Notação adequada (Preferencialmente utilizar o BR Modelo 3)
    B) O mínimo de entidades do modelo conceitual pare este trabalho será igual a 3 e o Máximo 5.
        * informe quais são as 3 principais entidades do sistema em densenvolvimento<br>(se houverem mais de 3 entidades, pense na importância da entidade para o sistema)       
    C) Principais fluxos de informação/entidades do sistema (mínimo 3). <br>Dica: normalmente estes fluxos estão associados as tabelas que conterão maior quantidade de dados 
    D) Qualidade e Clareza
        Garantir que a semântica dos atributos seja clara no esquema (nomes coerentes com os dados).
        Criar o esquema de forma a garantir a redução de informação redundante, possibilidade de valores null, 
        e tuplas falsas (Aplicar os conceitos de normalização abordados).   -->
        
![alt text](https://github.com/algabg1/Trab-BD1-202201/blob/master/images/ModeloConceitualGenshin.png)
    
    
        
    
#### 5.1 Validação do Modelo Conceitual
    Grupo01: Camila Volponi e Vitor Siqueira.
    Grupo02: Matheus Aguiar, Douglas Nunes e Jhovany Murgia.

#### 5.2 Descrição dos dados 
    
  <!--  EXEMPLO:
    CLIENTE: Tabela que armazena as informações relativas ao cliente<br>
    CPF: campo que armazena o número de Cadastro de Pessoa Física para cada cliente da empresa.<br> -->
    
ELEMENTO: Tabela que armazena as informações dos personagens e equipamentos (ambos em uma mesma tabela, pois seriam a mesma coisa no contexto do banco de dados desenvolvido).<br>
    
    ID_ELEMENTO: Campo que armazena o índice dos elementos.
    NOME: Campo que armazena o nome dos elementos.
    NIVEL: Campo que armazena o nível dos elementos.
    
HABILIDADE: Tabela que armazena as informações das habilidades dos elementos que são personagens.<br>
    
    ID_HABILIDADE: Campo que armazena o índice das habilidades.
    NOME: Campo que armazena o nome das habilidades.
    NIVEL: Campo que armazena o nível das habilidades.
    
TIPOHAB: Tabela que armazena as informações dos tipos de habilidades.
    
    ID_TIPOHAB: Campo que armazena o índice do tipo de habilidade.
    NOME: Campo que armazena o nome do tipo de habilidade.
    
MATERIAL: Tabela que armazena as informações dos materiais e artefatos (ambos em uma mesma tabela pois seriam a mesma coisa no contexto do banco de dados desenvolvido).<br>

    ID_MATERIAL: Campo que armazena o índice do material.
    NOME: Campo que armazena o nome do material.
    DISP_HORARIO: Campo que armazena a disponibilidade do material.
    QUANTIDADE: Campo que armazena a quantidade do material.
    TIPO: Campo que armazena o tipo do material.
    
DOMINIO: Tabela que armazena as informações dos domínios do mapa.<br>

    ID_DOMINIO: Campo que armazena o índice do domínio.
    NOME: Campo que armazena o nome do domínio.
    DESCRICAO: Campo que armazena a descrição do domínio.


### 6	MODELO LÓGICO<br>
 <!--       a) inclusão do esquema lógico do banco de dados
        b) verificação de correspondencia com o modelo conceitual 
        (não serão aceitos modelos que não estejam em conformidade) -->
        
![alt text](https://github.com/algabg1/Trab-BD1-202201/blob/master/images/ModeloLogicoGenshin.png)

### 7	MODELO FÍSICO<br>
        inclusão das instruções de criacão das estruturas em SQL/DDL 
```
CREATE TABLE ELEMENTO (
    id_elemento INTEGER PRIMARY KEY,
    nome VARCHAR,
    nivel INTEGER
);

CREATE TABLE HABILIDADE (
    id_habilidade INTEGER PRIMARY KEY,
    nome VARCHAR,
    nivel INTEGER
);

CREATE TABLE MATERIAL (
    id_material INTEGER PRIMARY KEY,
    nome VARCHAR,
    disp_horario DATE,
    quantidade INTEGER,
    tipo VARCHAR
);

CREATE TABLE DOMINIO (
    id_dominio INTEGER PRIMARY KEY,
    nome VARCHAR,
    descricao VARCHAR
);

CREATE TABLE ELEMHAB_Possui (
    id_elemhab INTEGER PRIMARY KEY,
    fk_ELEMENTO_id_elemento INTEGER,
    fk_HABILIDADE_id_habilidade INTEGER
);

CREATE TABLE TIPOHAB (
    id_tipohab INTEGER PRIMARY KEY,
    nome VARCHAR
);

CREATE TABLE ElemMat (
    fk_ELEMENTO_id_elemento INTEGER,
    fk_MATERIAL_id_material INTEGER
);

CREATE TABLE ElemHabMat (
    fk_ELEMHAB_Possui_id_elemhab INTEGER,
    fk_MATERIAL_id_material INTEGER
);

CREATE TABLE MatDom (
    fk_DOMINIO_id_dominio INTEGER,
    fk_MATERIAL_id_material INTEGER
);

CREATE TABLE TipoHabilidade (
    fk_HABILIDADE_id_habilidade INTEGER,
    fk_TIPOHAB_id_tipohab INTEGER
);
 
ALTER TABLE ELEMHAB_Possui ADD CONSTRAINT FK_ELEMHAB_Possui_2
    FOREIGN KEY (fk_ELEMENTO_id_elemento)
    REFERENCES ELEMENTO (id_elemento);
 
ALTER TABLE ELEMHAB_Possui ADD CONSTRAINT FK_ELEMHAB_Possui_3
    FOREIGN KEY (fk_HABILIDADE_id_habilidade)
    REFERENCES HABILIDADE (id_habilidade);
 
ALTER TABLE ElemMat ADD CONSTRAINT FK_ElemMat_1
    FOREIGN KEY (fk_ELEMENTO_id_elemento)
    REFERENCES ELEMENTO (id_elemento)
    ON DELETE RESTRICT;
 
ALTER TABLE ElemMat ADD CONSTRAINT FK_ElemMat_2
    FOREIGN KEY (fk_MATERIAL_id_material)
    REFERENCES MATERIAL (id_material)
    ON DELETE RESTRICT;
 
ALTER TABLE ElemHabMat ADD CONSTRAINT FK_ElemHabMat_1
    FOREIGN KEY (fk_ELEMHAB_Possui_id_elemhab)
    REFERENCES ELEMHAB_Possui (id_elemhab)
    ON DELETE RESTRICT;
 
ALTER TABLE ElemHabMat ADD CONSTRAINT FK_ElemHabMat_2
    FOREIGN KEY (fk_MATERIAL_id_material)
    REFERENCES MATERIAL (id_material)
    ON DELETE RESTRICT;
 
ALTER TABLE MatDom ADD CONSTRAINT FK_MatDom_1
    FOREIGN KEY (fk_DOMINIO_id_dominio)
    REFERENCES DOMINIO (id_dominio)
    ON DELETE RESTRICT;
 
ALTER TABLE MatDom ADD CONSTRAINT FK_MatDom_2
    FOREIGN KEY (fk_MATERIAL_id_material)
    REFERENCES MATERIAL (id_material)
    ON DELETE SET NULL;
 
ALTER TABLE TipoHabilidade ADD CONSTRAINT FK_TipoHabilidade_1
    FOREIGN KEY (fk_HABILIDADE_id_habilidade)
    REFERENCES HABILIDADE (id_habilidade)
    ON DELETE RESTRICT;
 
ALTER TABLE TipoHabilidade ADD CONSTRAINT FK_TipoHabilidade_2
    FOREIGN KEY (fk_TIPOHAB_id_tipohab)
    REFERENCES TIPOHAB (id_tipohab)
    ON DELETE RESTRICT;
```
        
       
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
<!--        a) inclusão das instruções de inserção dos dados nas tabelas criadas pelo script de modelo físico
        (Drop para exclusão de tabelas + create definição de para tabelas e estruturas de dados + insert para dados a serem inseridos)
        b) Criar um novo banco de dados para testar a restauracao 
        (em caso de falha na restauração o grupo não pontuará neste quesito)
        c) formato .SQL -->

https://github.com/algabg1/Trab-BD1-202201/blob/master/arquivos/ModeloFisicoFinal.sql

```
INSERT INTO DOMINIO VALUES
(1,'Enter the Golden House', 'Boss Domain'),
(2,'Confront Stormterror', 'Boss Domain'),
(3,'Beneath the Dragon-Queller','Boss Domain'),
(4,'Forsaken Rift', 'Talent Material'),
(5,'Taishan Mansion', 'Talent MAterial'),
(6,'Violet Court','Talent Material'),
(7,'Cecilia Garden','Weapon Material'),
(8,'Hidden Palace of Lianshan Formula','Weapon Material'),
(9,'Court of Flowing Sand','Weapon Material'),
(10,'Narukami Island: Tenshukaku','Boss Domain');
```
```
INSERT INTO ELEMENTO VALUES
(1,'Solar Pearl',60),
(2,'Aqua Simulacra',60),
(3,'Calamity Queller',70),
(4,'Skyward Pride',40),
(5,'Everlasting Moonglow',50),
(6,'Jean',40),
(7,'Noelle',80),
(8,'Xiao',85),
(9,'Ayaka',60),
(10,'Sangonomiya Kokomi',70);
```
```
INSERT INTO HABILIDADE VALUES
(1,'Favonius Bladework',6),
(2,'Gale Blade',8),
(3,'Dandelion Breeze',7),
(4,'Favonius Bladework - Maid',4),
(5,'Breastplate',5),
(6,'Sweeping Time',4),
(7,'Whirlwind Thrust',8),
(8,'Lemniscatic Wind Cycling',8),
(9,'Bane of All Evil',6),
(10,'Kabuki',7),
(11,'Hyouka',7),
(12,'Soumetsu',7),
(13,'Yhe Shape of Water',3),
(14,'Kurages Oath',2),
(15,'Nereids Ascension',4);
```
```
INSERT INTO MATERIAL VALUES
(1,'Relic from Guyun','2022-06-20',1,'Weapon Ascension Material'),
(2,'Mist Veiled Gold Elixir','2022-06-21',2,'Weapon Ascension Material'),
(3,'Boreal Wolfs Cracked Tooth','2022-06-20',1,'Weapon Ascension Material'),
(4,'Jeweled Branch of a Distant Sea','2022-06-22',2,'Weapon Ascension Material'),
(5,'Vayuda Turquoise Fragment','2022-06-20',3,'Character Ascension Material'),
(6,'Hurricane Seed','2022-06-20',2,'Elemental Stone'),
(7,'Prithiva Topaz Gemstone','2022-06-20',3,'Character Ascension Material'),
(8,'Basalt Pillar','2022-06-20',3,'Elemental Stone'),
(9,'Vayuda Turquoise Gemstone','2022-06-20',3,'Character Ascension Material'),
(10,'Juvenile Jade','2022-06-20',3,'Elemental Stone'),
(11,'Shivada Jade Chunk','2022-06-20',3,'Character Ascension Material'),
(12,'Perpetual Heart','2022-06-20',3,'Elemental Stone'),
(13,'Varunada Lazurite Chunk','2022-06-20',3,'Character Ascension Material'),
(14,'Dew of Repudiation','2022-06-20',2,'Elemental Stone'),
(15,'Dvalins Plume','2022-06-20',2,'Talent Ascencion Material'),
(16,'Dvalins Claw','2022-06-20',2,'Talent Ascencion Material'),
(17,'Shadow of the Warrior','2022-06-20',2,'Talent Ascencion Material'),
(18,'Bloodjade Branch','2022-06-20',2,'Talent Ascencion Material'),
(19,'Hellfire Butterfly','2022-06-20',2,'Talent Ascencion Material')
```
```
INSERT INTO TIPOHABILIDADE VALUES
(1,1),
(2,2),
(3,3),
(4,1),
(5,2),
(6,3),
(7,1),
(8,2),
(9,3),
(10,1),
(11,2),
(12,3),
(13,1),
(14,2),
(15,3);
```
```
INSERT INTO MATDOM VALUES
(1,17),
(2,15),
(2,16),
(3,18),
(10,19)
```
```
INSERT INTO ELEMMAT VALUES
(1,1),
(2,1),
(3,2),
(4,3),
(5,4),
(6,5),
(6,6),
(7,7),
(7,8),
(8,9),
(8,10),
(9,11),
(9,12),
(10,13),
(10,14)
```
```
INSERT INTO ELEMHAB_POSSUI VALUES
(1,6,1),
(2,6,2),
(3,6,3),
(4,7,1),
(5,7,2),
(6,7,3),
(7,8,1),
(8,8,2),
(9,8,3),
(10,9,1),
(11,9,2),
(12,9,3),
(13,10,1),
(14,10,2),
(15,10,3);
```
```
INSERT INTO ELEMHABMAT VALUES
(1,15),
(2,15),
(3,15),
(4,16),
(5,16),
(6,16),
(7,17),
(8,17),
(9,17),
(10,18),
(11,18),
(12,18),
(13,19),
(14,19),
(15,19)
```
```
INSERT INTO TIPOHAB VALUES
(1,'NORMAL'),
(2,'ELEMENTAL'),
(3,'SUPREMA')
```

### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
<!--    OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br> -->

#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>

```
SELECT * FROM ELEMENTO
```

<img src="https://github.com/algabg1/Trab-BD1-202201/blob/master/images/insert-elemento.png" width="450">

```
SELECT * FROM HABILIDADE
```
<img src="https://github.com/algabg1/Trab-BD1-202201/blob/master/images/insert-habilidade.png" width="450">

```
SELECT * FROM TIPOHAB
```
<img src="https://github.com/algabg1/Trab-BD1-202201/blob/master/images/insert-tipohab.png" width="450">

```
SELECT * FROM TIPOHABILIDADE
```
<img src="https://github.com/algabg1/Trab-BD1-202201/blob/master/images/insert-tipohabilidade.png" width="450">

```
SELECT * FROM MATERIAL
```
<img src="https://github.com/algabg1/Trab-BD1-202201/blob/master/images/insert-material.png" width="450">

```
SELECT * FROM DOMINIO
```
<img src="https://github.com/algabg1/Trab-BD1-202201/blob/master/images/insert-dominio.png" width="450">

```
SELECT * FROM ELEMHAB_POSSUI
```
<img src="https://github.com/algabg1/Trab-BD1-202201/blob/master/images/insert-elemhab.png" width="450">

```
SELECT * FROM ELEMMAT
```
<img src="https://github.com/algabg1/Trab-BD1-202201/blob/master/images/insert-elemmat.png" width="450">

```
SELECT * FROM ELEMHABMAT
```
<img src="https://github.com/algabg1/Trab-BD1-202201/blob/master/images/insert-elemhab_possui.png" width="450">

```
SELECT * FROM MATDOM
```
<img src="https://github.com/algabg1/Trab-BD1-202201/blob/master/images/insert-matdom.png" width="450">


># Marco de Entrega 01: Do item 1 até o item 9.1<br>

#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>

```
SELECT * FROM TIPOHABILIDADE WHERE FK_TIPOHAB_ID_TIPOHAB = 3
```
<img src="https://github.com/algabg1/Trab-BD1-202201/blob/master/images/WHERE1.png" width="450">

```
SELECT * FROM ELEMHABMAT WHERE FK_MATERIAL_ID_MATERIAL = 16
```
<img src="https://github.com/algabg1/Trab-BD1-202201/blob/master/images/WHERE2.png" width="450">

```
SELECT * FROM MATERIAL WHERE TIPO = 'Elemental Stone'
```
<img src="https://github.com/algabg1/Trab-BD1-202201/blob/master/images/WHERE3.png" width="450">

```
SELECT * FROM DOMINIO WHERE DESCRICAO = 'Boss Domain'
```
<img src="https://github.com/algabg1/Trab-BD1-202201/blob/master/images/WHERE4.png" width="450">




#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS (Mínimo 11)
    Consultas que envolvam os operadores lógicos AND, OR e Not

```
SELECT * FROM DOMINIO WHERE DESCRICAO = 'Talent Material' OR DESCRICAO = 'Weapon Material'
```
<img src="https://github.com/algabg1/Trab-BD1-202201/blob/master/images/OR.png" width="450">

```
SELECT * FROM DOMINIO WHERE DESCRICAO = 'Weapon Material' AND NOME = 'Cecilia Garden'
```
<img src="https://github.com/algabg1/Trab-BD1-202201/blob/master/images/AND.png" width="450">

```
SELECT * FROM DOMINIO WHERE DESCRICAO NOT IN ('Weapon Material')
```
<img src="https://github.com/algabg1/Trab-BD1-202201/blob/master/images/NOT.png" width="450">

    Consultas com operadores aritméticos 
    
```
SELECT * FROM ELEMENTO WHERE NIVEL > 5
``` 
<img src="https://github.com/algabg1/Trab-BD1-202201/blob/master/images/OPERADORARITMETICO1.png" width="450">
    
```
SELECT * FROM HABILIDADE WHERE NIVEL > 4 AND NIVEL < 7
```
<img src="https://github.com/algabg1/Trab-BD1-202201/blob/master/images/OPERADORARITMETICO2.png" width="450">
    
```
SELECT NOME, NIVEL FROM HABILIDADE WHERE NIVEL >= 3
```
<img src="https://github.com/algabg1/Trab-BD1-202201/blob/master/images/OPERADORARITMETICO3.png" width="450">
    
    consultas com operação de renomear nomes de campos ou tabelas

```
SELECT ID_ELEMENTO AS ID_ELEM, NOME AS NOME_ELEMENTO FROM ELEMENTO
```

<img src="https://github.com/algabg1/Trab-BD1-202201/blob/master/images/RENAME.png" width="450">

```
SELECT FK_ELEMHAB_POSSUI_ID_ELEMHAB AS ID_ELEMHAB, FK_MATERIAL_ID_MATERIAL AS ID_MATERIAL FROM ELEMHABMAT
```

<img src="https://github.com/algabg1/Trab-BD1-202201/blob/master/images/RENAME2.png" width="450">

```
SELECT ID_TIPOHAB AS ID_TIPOHABILIDADE, NOME FROM TIPOHAB
```
<img src="https://github.com/algabg1/Trab-BD1-202201/blob/master/images/RENAME3.png" width="450">


#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE E DATAS (Mínimo 12) <br>


```
SELECT * FROM MATERIAL WHERE NOME LIKE '%Mist%'
```

<img src="https://github.com/algabg1/Trab-BD1-202201/blob/master/images/LIKE1.png" width="450">

```
SELECT * FROM MATERIAL WHERE TIPO LIKE '%Ascension%'
```

<img src="https://github.com/algabg1/Trab-BD1-202201/blob/master/images/LIKE2.png" width="450">


```
SELECT * FROM HABILIDADE WHERE NOME LIKE '%Bladework%'
```

<img src="https://github.com/algabg1/Trab-BD1-202201/blob/master/images/LIKE3.png" width="450">

```
SELECT * FROM DOMINIO WHERE DESCRICAO LIKE '%Material%'
```

<img src="https://github.com/algabg1/Trab-BD1-202201/blob/master/images/LIKE4.png" width="450">

```
SELECT * FROM DOMINIO WHERE NOME LIKE '%Court%'
```

<img src="https://github.com/algabg1/Trab-BD1-202201/blob/master/images/LIKE5.png" width="450">

```
SELECT * FROM MATERIAL Where DISP_HORARIO::date >= '2022-06-21'
```

<img src="https://github.com/algabg1/Trab-BD1-202201/blob/master/images/DATE1.png" width="450">


#### 9.5	INSTRUÇÕES APLICANDO ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
 ```
UPDATE ELEMHAB_POSSUI
SET FK_HABILIDADE_ID_HABILIDADE = 4(ATE 15)
WHERE ID_ELEMHAB = 4(ATE 15) 
 ```
 
<img src="https://github.com/algabg1/Trab-BD1-202201/blob/master/images/UPDATE.png" width="450">

#### 9.6	CONSULTAS COM INNER JOIN E ORDER BY (Mínimo 6)<br>
    Uma junção que envolva todas as tabelas possuindo no mínimo 2 registros no resultado

```
SELECT E.NOME AS NOME_ELEMENTO, H.NOME AS NOME_HABILIDADE, MAT.NOME AS NOME_MATERIAL, D.NOME AS NOME_DOMINIO FROM ELEMENTO E
INNER JOIN ELEMHAB_POSSUI EHP ON(E.ID_ELEMENTO = EHP.FK_ELEMENTO_ID_ELEMENTO)
INNER JOIN HABILIDADE H ON(EHP.FK_HABILIDADE_ID_HABILIDADE = H.ID_HABILIDADE)
INNER JOIN ELEMHABMAT EHM ON(EHP.ID_ELEMHAB = EHM.FK_ELEMHAB_POSSUI_ID_ELEMHAB)
INNER JOIN MATERIAL MAT ON(EHM.FK_MATERIAL_ID_MATERIAL = MAT.ID_MATERIAL)
INNER JOIN MATDOM MD ON(MAT.ID_MATERIAL = MD.FK_MATERIAL_ID_MATERIAL)
INNER JOIN DOMINIO D ON(MD.FK_DOMINIO_ID_DOMINIO = D.ID_DOMINIO)
GROUP BY E.NOME, H.NOME, MAT.NOME, D.NOME
ORDER BY E.NOME ASC
```

<img src="https://github.com/algabg1/Trab-BD1-202201/blob/master/images/BIGINNER.png" width="450">

    Outras junções consideradas como sendo as de principal importância

```
SELECT E.NOME AS NOME_ELEMENTO, MAT.NOME AS NOME_MATERIAL FROM ELEMENTO E
INNER JOIN ELEMMAT EM
ON (EM.FK_ELEMENTO_ID_ELEMENTO=E.ID_ELEMENTO)
INNER JOIN MATERIAL MAT
ON (MAT.ID_MATERIAL=EM.FK_MATERIAL_ID_MATERIAL)
```
<img src="https://github.com/algabg1/Trab-BD1-202201/blob/master/images/INNER1.png" width="450">

#### 9.7	CONSULTAS COM GROUP BY E FUNÇÕES DE AGRUPAMENTO (Mínimo 6)<br>
    

```
SELECT COUNT(TIPO) AS QNT, TIPO FROM MATERIAL GROUP BY TIPO
```
<img src="https://github.com/algabg1/Trab-BD1-202201/blob/master/images/GROUPBY1.png" width="450">

```
SELECT COUNT(DESCRICAO), DESCRICAO FROM DOMINIO GROUP BY DESCRICAO
```

<img src="https://github.com/algabg1/Trab-BD1-202201/blob/master/images/GROUPBY2.png" width="450">


```
SELECT COUNT(TIPO), TIPO, DISP_HORARIO FROM MATERIAL WHERE DISP_HORARIO = '2022-06-20' GROUP BY TIPO,DISP_HORARIO
```

<img src="https://github.com/algabg1/Trab-BD1-202201/blob/master/images/GROUPBY3.png" width="450">


```
SELECT COUNT(TIPO), TIPO, DISP_HORARIO FROM MATERIAL WHERE DISP_HORARIO = '2022-06-21' GROUP BY TIPO,DISP_HORARIO
```

<img src="https://github.com/algabg1/Trab-BD1-202201/blob/master/images/GROUPBY4.png" width="450">


```
SELECT COUNT(TIPO), TIPO, DISP_HORARIO FROM MATERIAL WHERE DISP_HORARIO = '2022-06-22' GROUP BY TIPO,DISP_HORARIO
```

<img src="https://github.com/algabg1/Trab-BD1-202201/blob/master/images/GROUPBY5.png" width="450">


```
SELECT COUNT(QUANTIDADE), QUANTIDADE, TIPO FROM MATERIAL WHERE QUANTIDADE = 2 GROUP BY QUANTIDADE,TIPO
```

<img src="https://github.com/algabg1/Trab-BD1-202201/blob/master/images/GROUPBY6.png" width="450">

#### 9.8	CONSULTAS COM LEFT, RIGHT E FULL JOIN (Mínimo 4)<br>
```
SELECT MAT.NOME, E.NOME FROM MATERIAL MAT
LEFT JOIN ELEMMAT EMAT ON(EMAT.FK_MATERIAL_ID_MATERIAL = MAT.ID_MATERIAL)
LEFT JOIN ELEMENTO E ON(EMAT.FK_ELEMENTO_ID_ELEMENTO = E.ID_ELEMENTO)
GROUP BY MAT.NOME,E.NOME
```

<img src="https://github.com/algabg1/Trab-BD1-202201/blob/master/images/LEFT.png" width="450">


```
SELECT MAT.NOME, E.NOME FROM MATERIAL MAT
RIGHT JOIN ELEMMAT EMAT ON(EMAT.FK_MATERIAL_ID_MATERIAL = MAT.ID_MATERIAL)
RIGHT JOIN ELEMENTO E ON(EMAT.FK_ELEMENTO_ID_ELEMENTO = E.ID_ELEMENTO)
GROUP BY MAT.NOME,E.NOME
```

<img src="https://github.com/algabg1/Trab-BD1-202201/blob/master/images/RIGHT.png" width="450">


```
SELECT MAT.NOME, E.NOME FROM MATERIAL MAT
FULL JOIN ELEMMAT EMAT ON(EMAT.FK_MATERIAL_ID_MATERIAL = MAT.ID_MATERIAL)
FULL JOIN ELEMENTO E ON(EMAT.FK_ELEMENTO_ID_ELEMENTO = E.ID_ELEMENTO)
GROUP BY MAT.NOME,E.NOME
```

<img src="https://github.com/algabg1/Trab-BD1-202201/blob/master/images/FULL.png" width="450">


```
SELECT MAT.TIPO, E.NOME FROM MATERIAL MAT
LEFT JOIN ELEMMAT EMAT ON(EMAT.FK_MATERIAL_ID_MATERIAL = MAT.ID_MATERIAL)
LEFT JOIN ELEMENTO E ON(EMAT.FK_ELEMENTO_ID_ELEMENTO = E.ID_ELEMENTO)
GROUP BY MAT.TIPO,E.NOME
```

<img src="https://github.com/algabg1/Trab-BD1-202201/blob/master/images/LEFT2.png" width="450">

#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Mínimo 6)<br>
```
CREATE VIEW VIEW1 AS
SELECT E.NOME AS NOME_ELEMENTO, MAT.NOME AS NOME_MATERIAL FROM ELEMENTO E
INNER JOIN ELEMMAT EM
ON (EM.FK_ELEMENTO_ID_ELEMENTO=E.ID_ELEMENTO)
INNER JOIN MATERIAL MAT
ON (MAT.ID_MATERIAL=EM.FK_MATERIAL_ID_MATERIAL)

SELECT  * FROM VIEW1
```
<img src="https://github.com/algabg1/Trab-BD1-202201/blob/master/images/VIEW1.png" width="450">


```
CREATE VIEW VIEW2 AS
SELECT E.NOME AS NOME_ELEMENTO, H.NOME AS NOME_HABILIDADE, MAT.NOME AS NOME_MATERIAL, D.NOME AS NOME_DOMINIO FROM ELEMENTO E
INNER JOIN ELEMHAB_POSSUI EHP ON(E.ID_ELEMENTO = EHP.FK_ELEMENTO_ID_ELEMENTO)
INNER JOIN HABILIDADE H ON(EHP.FK_HABILIDADE_ID_HABILIDADE = H.ID_HABILIDADE)
INNER JOIN ELEMHABMAT EHM ON(EHP.ID_ELEMHAB = EHM.FK_ELEMHAB_POSSUI_ID_ELEMHAB)
INNER JOIN MATERIAL MAT ON(EHM.FK_MATERIAL_ID_MATERIAL = MAT.ID_MATERIAL)
INNER JOIN MATDOM MD ON(MAT.ID_MATERIAL = MD.FK_MATERIAL_ID_MATERIAL)
INNER JOIN DOMINIO D ON(MD.FK_DOMINIO_ID_DOMINIO = D.ID_DOMINIO)
GROUP BY E.NOME, H.NOME, MAT.NOME, D.NOME
ORDER BY E.NOME ASC

SELECT  * FROM VIEW2

```
<img src="https://github.com/algabg1/Trab-BD1-202201/blob/master/images/VIEW2.png" width="450">


```
CREATE VIEW VIEW3 AS
SELECT * FROM DOMINIO WHERE DESCRICAO NOT IN ('Weapon Material')

SELECT  * FROM VIEW3
```
<img src="https://github.com/algabg1/Trab-BD1-202201/blob/master/images/VIEW3.png" width="450">


```
CREATE VIEW VIEW4 AS
SELECT * FROM DOMINIO WHERE DESCRICAO ='Boss Domain'

SELECT  * FROM VIEW4
```
<img src="https://github.com/algabg1/Trab-BD1-202201/blob/master/images/VIEW4.png" width="450">


```
CREATE VIEW VIEW5 AS
SELECT * FROM DOMINIO WHERE DESCRICAO = 'Talent Material'

SELECT  * FROM VIEW5

```
<img src="https://github.com/algabg1/Trab-BD1-202201/blob/master/images/VIEW5.png" width="450">


```
CREATE VIEW VIEW6 AS
SELECT * FROM DOMINIO WHERE DESCRICAO LIKE '%Material%'

SELECT  * FROM VIEW6
```
<img src="https://github.com/algabg1/Trab-BD1-202201/blob/master/images/VIEW6.png" width="450">



#### 9.10	SUBCONSULTAS (Mínimo 4)<br>
     a) Criar minimo 1 envolvendo GROUP BY
     b) Criar minimo 1 envolvendo algum tipo de junção

># Marco de Entrega 02: Do item 9.2 até o ítem 9.10<br>

### 10 RELATÓRIOS E GRÁFICOS

#### a) análises e resultados provenientes do banco de dados desenvolvido (usar modelo disponível)
#### b) link com exemplo de relatórios será disponiblizado pelo professor no AVA
#### OBS: Esta é uma atividade de grande relevância no contexto do trabalho. Mantenha o foco nos 5 principais relatórios/resultados visando obter o melhor resultado possível.

Para que o relatório obtivesse resultados melhores e mais completos, foram feitas alterações no banco. As alterações são referentes à inclusão de mais informações no banco, disponíveis ![aqui](https://github.com/algabg1/Trab-BD1-202201/blob/master/arquivos/InsertRelatorio.sql).

RELATÓRIO 1

Objetivo: Esse relatório tem como objetivo mostrar quantos materiais há em cada tipo de material.

Código para obtenção do resultado:
```
res = pd.read_sql_query("""
                        SELECT COUNT(TIPO) AS QUANTIDADE, TIPO FROM MATERIAL GROUP BY TIPO
                            """,conn)
res

sns.barplot(x='quantidade',y='tipo',data=res)
```
<img src="https://github.com/algabg1/Trab-BD1-202201/blob/master/images/RELATORIO1.png" width="450">


RELATÓRIO 2

Objetivo: Esse relatório tem como objetivo mostrar quantos materiais registrados há nos domínios.

Código para obtenção do resultado:
```
res = pd.read_sql_query("""
                        SELECT COUNT(DOM.NOME), DOM.NOME AS NOME_DOMINIO FROM DOMINIO DOM
                        INNER JOIN MATDOM MD ON(MD.FK_DOMINIO_ID_DOMINIO = DOM.ID_DOMINIO)
                        INNER JOIN MATERIAL MAT ON(MAT.ID_MATERIAL = MD.FK_MATERIAL_ID_MATERIAL)
                        GROUP BY DOM.NOME
                            """,conn)
res

sns.barplot(x='count',y='nome_dominio',data=res)
```
<img src="https://github.com/algabg1/Trab-BD1-202201/blob/master/images/RELATORIO2.png" width="450">

RELATÓRIO 3

Objetivo: Esse relatório tem como objetivo mostrar a quantidade de materiais periféricos ao personagem.

Código para obtenção do resultado:
```
res = pd.read_sql_query("""
                        SELECT COUNT(TIPO) AS QUANTIDADE_MATERIAL, TIPO AS TIPO_MATERIAL FROM MATERIAL WHERE TIPO LIKE '%Local%' OR TIPO LIKE '%Secondary%' GROUP BY TIPO
                            """,conn)
res

sns.barplot(x='quantidade_material',y='tipo_material',data=res)
```
<img src="https://github.com/algabg1/Trab-BD1-202201/blob/master/images/RELATORIO3.png" width="450">

RELATÓRIO 4

Objetivo: Esse relatório tem como objetivo mostrar quantos elementos registrados são personagens e quantos são equipamentos.

Código para obtenção do resultado:
```
res = pd.read_sql_query("""
                        SELECT COUNT(MAT.TIPO) AS QNT_ELEMENTO, MAT.TIPO AS TIPO_ELEMENTO FROM ELEMENTO E
                        INNER JOIN ELEMMAT EM ON(EM.FK_ELEMENTO_ID_ELEMENTO = E.ID_ELEMENTO)
                        INNER JOIN MATERIAL MAT ON(EM.FK_MATERIAL_ID_MATERIAL = MAT.ID_MATERIAL)
                        WHERE MAT.TIPO = 'Weapon Ascension Material' OR MAT.TIPO = 'Character Primary Ascension Material'
                        GROUP BY MAT.TIPO
                            """,conn)
res

sns.barplot(x='qnt_elemento',y='tipo_elemento',data=res)
```
<img src="https://github.com/algabg1/Trab-BD1-202201/blob/master/images/RELATORIO4.png" width="450">

RELATÓRIO 5

Objetivo:

Código para obtenção do resultado:
```
res = pd.read_sql_query("""
                        SELECT SUM(MAT.QUANTIDADE) AS QUANTIDADE_MATERIAL, MAT.TIPO FROM ELEMENTO E
                        INNER JOIN ELEMMAT EM ON(EM.FK_ELEMENTO_ID_ELEMENTO = E.ID_ELEMENTO)
                        INNER JOIN MATERIAL MAT ON(EM.FK_MATERIAL_ID_MATERIAL = MAT.ID_MATERIAL)
                        WHERE MAT.TIPO = 'Weapon Ascension Material' OR (
	                        MAT.TIPO = 'Character Primary Ascension Material'
	                        OR MAT.TIPO = 'Elemental Stone'
	                        OR MAT.TIPO = 'Local Character Ascension Material'
	                        OR MAT.TIPO = 'Secondary Ascension Material')
                        GROUP BY MAT.TIPO
                            """,conn)
res

sns.barplot(x='quantidade_material',y='tipo',data=res)
```
<img src="https://github.com/algabg1/Trab-BD1-202201/blob/master/images/RELATORIO5.png" width="450">


### 11	AJUSTES DA DOCUMENTAÇÃO, CRIAÇÃO DOS SLIDES E VÍDEO PARA APRESENTAÇAO FINAL <br>
![Slide de apresentação](https://github.com/algabg1/Trab-BD1-202201/blob/master/arquivos/BD-SlideFinal.pdf).

![Vídeo de apresentação](https://youtu.be/TBhQM0j5TSE).

># Marco de Entrega 03: Itens 10 e 11<br>
<br>
<br>
<br> 



### 12 FORMATACAO NO GIT:<br> 
https://help.github.com/articles/basic-writing-and-formatting-syntax/
<comentario no git>
    
##### About Formatting
    https://help.github.com/articles/about-writing-and-formatting-on-github/
    
##### Basic Formatting in Git
    
    https://help.github.com/articles/basic-writing-and-formatting-syntax/#referencing-issues-and-pull-requests
    
    
##### Working with advanced formatting
    https://help.github.com/articles/working-with-advanced-formatting/
#### Mastering Markdown
    https://guides.github.com/features/mastering-markdown/

    
### OBSERVAÇÕES IMPORTANTES

#### Todos os arquivos que fazem parte do projeto (Imagens, pdfs, arquivos fonte, etc..), devem estar presentes no GIT. Os arquivos do projeto vigente não devem ser armazenados em quaisquer outras plataformas.
1. <strong>Caso existam arquivos com conteúdos sigilosos<strong>, comunicar o professor que definirá em conjunto com o grupo a melhor forma de armazenamento do arquivo.

#### Todos os grupos deverão fazer Fork deste repositório e dar permissões administrativas ao usuário do git "profmoisesomena", para acompanhamento do trabalho.

#### Os usuários criados no GIT devem possuir o nome de identificação do aluno (não serão aceitos nomes como Eu123, meuprojeto, pro456, etc). Em caso de dúvida comunicar o professor.


Link para BrModelo:<br>
http://www.sis4.com/brModelo/download.html
<br>


Link para curso de GIT<br>
![https://www.youtube.com/curso_git](https://www.youtube.com/playlist?list=PLo7sFyCeiGUdIyEmHdfbuD2eR4XPDqnN2?raw=true "Title")


