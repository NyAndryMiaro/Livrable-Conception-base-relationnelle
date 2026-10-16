CREATE TABLE SERVEUR (
    id_serveur SERIAL PRIMARY KEY,
    nom VARCHAR(50)
);

INSERT INTO SERVEUR (nom) VALUES ('Njaka Rakoto'), ('Lalao Rasoa');

CREATE TABLE TABLES (
    id_table SERIAL PRIMARY KEY,
    nom VARCHAR(20)
);

INSERT INTO TABLES (nom) VALUES 
('Table 1'),
('Table 2'),
('Table 3'),
('Table 4'),
('Table 5'),
('Table 6'),
('Table 7'),
('Table 8');

CREATE TABLE COMMANDE_PRISE(
    id_commande_prise SERIAL PRIMARY KEY,
    id_commande INT REFERENCES COMMANDE(id_commande),
    id_serveur INT REFERENCES SERVEUR (id_serveur),
    id_table INT REFERENCES TABLES (id_table)
);

INSERT INTO COMMANDE_PLAT (id_commande, id_plat, quantite) VALUES 
(3, (SELECT id_plat FROM PLAT WHERE nom = 'Romazava'), 1),
(4, (SELECT id_plat FROM PLAT WHERE nom = 'Mi sao'), 2),
(5, (SELECT id_plat FROM PLAT WHERE nom = 'Akoho sy voanio'), 1);

INSERT INTO COMMANDE_PRISE (id_commande, id_serveur, id_table ) VALUES 
(1, 1, 2 ),
(2, 1, 5 ),
(3, 1, 8 ),
(4, 1, NULL ),
(5, 1, NULL );