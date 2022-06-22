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
(19,'Hellfire Butterfly','2022-06-20',2,'Talent Ascencion Material');

INSERT INTO TIPOHAB VALUES
(1,'NORMAL'),
(2,'ELEMENTAL'),
(3,'SUPREMA');

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


INSERT INTO MATDOM VALUES
(1,17),
(2,15),
(2,16),
(3,18),
(10,19);


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
(10,14);


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
(15,19);

DROP TABLE MATDOM;
DROP TABLE DOMINIO;
DROP TABLE ELEMHABMAT;
DROP TABLE ELEMMAT;
DROP TABLE ELEMHAB_POSSUI;
DROP TABLE MATERIAL;
DROP TABLE TIPOHABILIDADE;
DROP TABLE TIPOHAB;
DROP TABLE ELEMENTO;
DROP TABLE HABILIDADE;