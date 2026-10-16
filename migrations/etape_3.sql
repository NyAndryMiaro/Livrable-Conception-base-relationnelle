CREATE TABLE COMMANDE (
    id_commande SERIAL PRIMARY KEY,
    date DATE
);

CREATE TABLE COMMANDE_PLAT (
    id_commande_plat SERIAL PRIMARY KEY,
    id_commande INT NOT NULL REFERENCES COMMANDE(id_commande),
    id_plat INT NOT NULL REFERENCES PLAT(id_plat),
    quantite INT
);

INSERT INTO COMMANDE (date) VALUES 
('2026-10-15'),
('2026-10-16');

INSERT INTO COMMANDE_PLAT (id_commande, id_plat, quantite) VALUES 
(1, (SELECT id_plat FROM PLAT WHERE nom = 'Romazava'), 2),
(1, (SELECT id_plat FROM PLAT WHERE nom = 'Ranon''ampango'), 1);

INSERT INTO COMMANDE_PLAT (id_commande, id_plat, quantite) VALUES 
(2, (SELECT id_plat FROM PLAT WHERE nom = 'Ravitoto sy henakisoa'), 1),
(2, (SELECT id_plat FROM PLAT WHERE nom = 'Mofo gasy (les 4)'), 1);