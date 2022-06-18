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


<img src="https://github.com/algabg1/Trab-BD1-202201/blob/master/images/page-login.jpg" width="450" hspace="20">
<br>

<img align="left" src="https://github.com/algabg1/Trab-BD1-202201/blob/master/images/page-eq1.jpg" width="450" hspace="20">
<img align="left" src="https://github.com/algabg1/Trab-BD1-202201/blob/master/images/page-eq2.jpg" width="450">
<br>

<img align="left" src="https://github.com/algabg1/Trab-BD1-202201/blob/master/images/page-pers1.jpg" width="450" hspace="20">
<img align="left" src="https://github.com/algabg1/Trab-BD1-202201/blob/master/images/page-pers2.jpg" width="450">
<br>
<br>


#### 4.2 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?
   <!-- a) O sistema proposto poderá fornecer quais tipos de relatórios e informaçes? 
    b) Crie uma lista com os 5 principais relatórios que poderão ser obtidos por meio do sistema proposto! -->
    
> O sistema proposto pode gerar:
* Relatórios de materiais e artefatos que cada personagem utiliza.
* Relatórios de materiais e artefatos que as habilidades dos personagens utilizam.
* Relatórios de materiais e artefatos que os equipamentos utilizam.
* Relatórios dos locais que os materiais e artefatos estão disponíveis.
* Relatórios dos dias e a quantidade de tempo que os materiais e artefatos estarão disponíveis.

<!-- A Empresa DevCom precisa inicialmente dos seguintes relatórios:
* Relatório que mostre o nome de cada supervisor(a) e a quantidade de empregados supervisionados.
* Relatório relativo aos os supervisores e supervisionados. O resultado deve conter o nome do supervisor e nome do supervisionado além da quantidade total de horas que cada supervisionado tem alocada aos projetos existentes na empresa.
* Relatorio que mostre para cada linha obtida o nome do departamento, o valor individual de cada salario existente no  departamento e a média geral de salarios dentre todos os empregados. Os resultados devem ser apresentados ordenados por departamento.
* Relatório que mostre as informações relacionadas a todos empregados de empresa (sem excluir ninguém). As linhas resultantes devem conter informações sobre: rg, nome, salario do empregado, data de início do salario atual, nomes dos projetos que participa, quantidade de horas e localização nos referidos projetos, numero e nome dos departamentos aos quais está alocado, informações do historico de salário como inicio, fim, e valores de salarios antigos que foram inclusos na referida tabela (caso possuam informações na mesma), além de todas informações relativas aos dependentes. 
>> ##### Observações: <br> a) perceba que este relatório pode conter linhas com alguns dados repetidos (mas não todos). <br>  b) para os empregados que não possuirem alguma destas informações o valor no registro deve aparecer sem informação/nulo. 
* Relatório que obtenha a frequencia absoluta e frequencia relativa da quantidade de cpfs únicos no relatório anterior. Apresente os resultados ordenados de forma decrescente pela frequencia relativa. -->

 
 
#### 4.3 TABELA DE DADOS DO SISTEMA:
 <!--   a) Esta tabela deve conter todos os atributos do sistema e um mínimo de 10 linhas/registros de dados.
    b) Esta tabela tem a intenção de simular um relatório com todos os dados que serão armazenados -->
    
![Exemplo de Tabela de dados da Empresa Devcom](https://github.com/discipbd1/trab01/blob/master/arquivos/TabelaEmpresaDevCom_sample.xlsx?raw=true "Tabela - Empresa Devcom")
    
    
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
    [Grupo01]: [Nomes dos que participaram na avaliação]
    [Grupo02]: [Nomes dos que participaram na avaliação]

#### 5.2 Descrição dos dados 
    [objeto]: [descrição do objeto]
    
  <!--  EXEMPLO:
    CLIENTE: Tabela que armazena as informações relativas ao cliente<br>
    CPF: campo que armazena o número de Cadastro de Pessoa Física para cada cliente da empresa.<br> -->
    
    ELEMENTO: Tabela que armazena as informações dos personagens e equipamentos (ambos em uma mesma tabela, **qual o nome certo pra isso mesmo** pois seriam a mesma coisa no contexto do banco de dados desenvolvido).<br>
    HABILIDADE: Tabela que armazena as informações das habilidades dos elementos que são personagens.<br>
    TIPOHAB: Tabela que armazena as informações dos tipos de habilidades.
    MATERIAL: Tabela que armazena as informações dos materiais e artefatos (ambos em uma mesma tabela pois seriam a mesma coisa no contexto do banco de dados desenvolvido).<br>
    DOMINIO: Tabela que armazena as informações dos domínios do mapa.<br>


### 6	MODELO LÓGICO<br>
 <!--       a) inclusão do esquema lógico do banco de dados
        b) verificação de correspondencia com o modelo conceitual 
        (não serão aceitos modelos que não estejam em conformidade) -->
        
![alt text](https://github.com/algabg1/Trab-BD1-202201/blob/master/images/ModeloLogicoGenshin.png)

### 7	MODELO FÍSICO<br>
        a) inclusão das instruções de criacão das estruturas em SQL/DDL 
        
**Principais tabelas**

```
CREATE TABLE ELEMENTO (
    id_elemento SERIAL PRIMARY KEY,
    nome VARCHAR,
    nivel INTEGER
);

CREATE TABLE HABILIDADE (
    id_habilidade SERIAL PRIMARY KEY,
    nome VARCHAR,
    nivel INTEGER,
    tipo VARCHAR
);

CREATE TABLE MATERIAL (
    id_material SERIAL PRIMARY KEY,
    nome VARCHAR,
    quantidade INTEGER,
    disp_horario DATE,
    tipo VARCHAR
);

CREATE TABLE DOMINIO (
    id_dominio SERIAL PRIMARY KEY,
    nome VARCHAR,
    descricao VARCHAR
);
```

**Tabelas de relacionamento**
```
CREATE TABLE ELEMENTO_HABILIDADE (
    id_elemhab SERIAL PRIMARY KEY,
    fk_id_elemento INTEGER,
    fk_id_habilidade INTEGER
);

ALTER TABLE ELEMENTO_HABILIDADE ADD CONSTRAINT FK_ELEM_HAB FOREIGN KEY (fk_id_elemento)
REFERENCES ELEMENTO(id_elemento)

ALTER TABLE ELEMENTO_HABILIDADE ADD CONSTRAINT FK_ELEM_HAB2 FOREIGN KEY (fk_id_habilidade)
REFERENCES HABILIDADE(id_habilidade)
```
```
CREATE TABLE ELEMENTO_MATERIAL (
    fk_id_elemento INTEGER,
    fk_id_material INTEGER
);

ALTER TABLE ELEMENTO_MATERIAL ADD CONSTRAINT FK_ELEM_MAT FOREIGN KEY (fk_id_elemento)
REFERENCES ELEMENTO(id_elemento) ON DELETE RESTRICT

ALTER TABLE ELEMENTO_MATERIAL ADD CONSTRAINT FK_ELEM_MAT2 FOREIGN KEY (fk_id_material)
REFERENCES MATERIAL(id_material) ON DELETE RESTRICT
```
```
CREATE TABLE ELEMENTO_HABILIDADE_MATERIAL (
    fk_id_elemhab INTEGER,
    fk_id_material INTEGER
);

ALTER TABLE ELEMENTO_HABILIDADE_MATERIAL ADD CONSTRAINT FK_ELEM_HAB_MAT FOREIGN KEY (fk_id_elemhab)
REFERENCES ELEMENTO_HABILIDADE (id_elemhab) ON DELETE RESTRICT;

ALTER TABLE ELEMENTO_HABILIDADE_MATERIAL ADD CONSTRAINT FK_ELEM_HAB_MAT2 FOREIGN KEY (fk_id_material)
REFERENCES MATERIAL (id_material) ON DELETE RESTRICT;
```
```
CREATE TABLE MATERIAL_DOMINIO (
    fk_id_material INTEGER,
    fk_id_dominio INTEGER
);

ALTER TABLE MATERIAL_DOMINIO ADD CONSTRAINT FK_MAT_DOM FOREIGN KEY (fk_id_material)
REFERENCES MATERIAL (id_material) ON DELETE RESTRICT;

ALTER TABLE MATERIAL_DOMINIO ADD CONSTRAINT FK_MAT_DOM2 FOREIGN KEY (fk_id_dominio)
REFERENCES DOMINIO (id_dominio) ON DELETE RESTRICT;
```
        
       
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
<!--        a) inclusão das instruções de inserção dos dados nas tabelas criadas pelo script de modelo físico
        (Drop para exclusão de tabelas + create definição de para tabelas e estruturas de dados + insert para dados a serem inseridos)
        b) Criar um novo banco de dados para testar a restauracao 
        (em caso de falha na restauração o grupo não pontuará neste quesito)
        c) formato .SQL -->

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

```
SELECT * FROM ELEMENTO
```

<img src="https://github.com/algabg1/Trab-BD1-202201/blob/master/images/ELEMENTO.png" width="450">

```
SELECT * FROM HABILIDADE
```
<img src="https://github.com/algabg1/Trab-BD1-202201/blob/master/images/HABILIDADE.png" width="450">

```
SELECT * FROM MATERIAL
```
<img src="https://github.com/algabg1/Trab-BD1-202201/blob/master/images/MATERIAL.png" width="450">

```
SELECT * FROM DOMINIO
```
<img src="https://github.com/algabg1/Trab-BD1-202201/blob/master/images/DOMINIO.png" width="450">

```
SELECT * FROM ELEMENTO_HABILIDADE
```
<img src="https://github.com/algabg1/Trab-BD1-202201/blob/master/images/ELEMHAB.png" width="450">

```
SELECT * FROM ELEMENTO_MATERIAL
```
<img src="https://github.com/algabg1/Trab-BD1-202201/blob/master/images/ELEMMAT.png" width="450">

```
SELECT * FROM ELEMENTO_HABILIDADE_MATERIAL
```
<img src="https://github.com/algabg1/Trab-BD1-202201/blob/master/images/ELEMHABMAT.png" width="450">

```
SELECT * FROM MATERIAL_DOMINIO
```
<img src="https://github.com/algabg1/Trab-BD1-202201/blob/master/images/MATDOM.png" width="450">


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
SELECT * FROM ELEMENTO_HABILIDADE
```
<img src="https://github.com/algabg1/Trab-BD1-202201/blob/master/images/insert-elemhab.png" width="450">

```
SELECT * FROM ELEMENTO_MATERIAL
```
<img src="https://github.com/algabg1/Trab-BD1-202201/blob/master/images/insert-elemmat.png" width="450">

```
SELECT * FROM ELEMENTO_HABILIDADE_MATERIAL
```
<img src="https://github.com/algabg1/Trab-BD1-202201/blob/master/images/insert-elemhab_possui.png" width="450">

```
SELECT * FROM MATERIAL_DOMINIO
```
<img src="https://github.com/algabg1/Trab-BD1-202201/blob/master/images/insert-matdom.png" width="450">


># Marco de Entrega 01: Do item 1 até o item 9.1<br>

#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>
#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS (Mínimo 11)
    a) Criar 5 consultas que envolvam os operadores lógicos AND, OR e Not
    b) Criar no mínimo 3 consultas com operadores aritméticos 
    c) Criar no mínimo 3 consultas com operação de renomear nomes de campos ou tabelas

#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE E DATAS (Mínimo 12) <br>
    a) Criar outras 5 consultas que envolvam like ou ilike
    b) Criar uma consulta para cada tipo de função data apresentada.

#### 9.5	INSTRUÇÕES APLICANDO ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
    a) Criar minimo 3 de exclusão
    b) Criar minimo 3 de atualização

#### 9.6	CONSULTAS COM INNER JOIN E ORDER BY (Mínimo 6)<br>
    a) Uma junção que envolva todas as tabelas possuindo no mínimo 2 registros no resultado
    b) Outras junções que o grupo considere como sendo as de principal importância para o trabalho

#### 9.7	CONSULTAS COM GROUP BY E FUNÇÕES DE AGRUPAMENTO (Mínimo 6)<br>
    a) Criar minimo 2 envolvendo algum tipo de junção

#### 9.8	CONSULTAS COM LEFT, RIGHT E FULL JOIN (Mínimo 4)<br>
    a) Criar minimo 1 de cada tipo

#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Mínimo 6)<br>
        a) Uma junção que envolva Self Join (caso não ocorra na base justificar e substituir por uma view)
        b) Outras junções com views que o grupo considere como sendo de relevante importância para o trabalho

#### 9.10	SUBCONSULTAS (Mínimo 4)<br>
     a) Criar minimo 1 envolvendo GROUP BY
     b) Criar minimo 1 envolvendo algum tipo de junção

># Marco de Entrega 02: Do item 9.2 até o ítem 9.10<br>

### 10 RELATÓRIOS E GRÁFICOS

#### a) análises e resultados provenientes do banco de dados desenvolvido (usar modelo disponível)
#### b) link com exemplo de relatórios será disponiblizado pelo professor no AVA
#### OBS: Esta é uma atividade de grande relevância no contexto do trabalho. Mantenha o foco nos 5 principais relatórios/resultados visando obter o melhor resultado possível.

    

### 11	AJUSTES DA DOCUMENTAÇÃO, CRIAÇÃO DOS SLIDES E VÍDEO PARA APRESENTAÇAO FINAL <br>

#### a) Modelo (pecha kucha)<br>
#### b) Tempo de apresentação 6:40 

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


