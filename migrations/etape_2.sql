CREATE TABLE CATEGORIE (
    id_categorie SERIAL PRIMARY KEY, 
    nom VARCHAR(100)
);
INSERT INTO CATEGORIE (nom) VALUES 
('Plat malagasy'),
('Plat chinois'),
('Soupe'),
('Dessert et goûter'),
('Boisson');

ALTER TABLE PLAT ADD COLUMN id_categorie INT;

ALTER TABLE PLAT ADD CONSTRAINT fk_categorie FOREIGN KEY (id_categorie) REFERENCES CATEGORIE (id_categorie);

UPDATE PLAT SET id_categorie = (SELECT id_categorie FROM CATEGORIE WHERE nom = 'Plat malagasy') WHERE nom IN ('Romazava', 'Ravitoto sy henakisoa', 'Akoho sy voanio');

UPDATE PLAT SET id_categorie = (SELECT id_categorie FROM CATEGORIE WHERE nom = 'Plat chinois') WHERE nom = 'Mi sao';

UPDATE PLAT SET id_categorie = (SELECT id_categorie FROM CATEGORIE WHERE nom = 'Soupe') WHERE nom = 'Soupe chinoise';

UPDATE PLAT SET id_categorie = (SELECT id_categorie FROM CATEGORIE WHERE nom = 'Dessert et goûter') WHERE nom = 'Mofo gasy (les 4)';

UPDATE PLAT SET id_categorie = (SELECT id_categorie FROM CATEGORIE WHERE nom = 'Boisson') WHERE nom = 'Ranon''ampango';

ALTER TABLE PLAT ALTER COLUMN id_categorie SET NOT NULL;