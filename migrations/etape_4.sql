CREATE TABLE CLIENT(
    id_client SERIAL PRIMARY KEY,
    nom VARCHAR(100)
);

INSERT INTO CLIENT (nom) VALUES ('Rabe'), ('Rasoa'), ('Rakoto');

ALTER TABLE COMMANDE ADD COLUMN id_client INT REFERENCES CLIENT(id_client);

INSERT INTO COMMANDE (date, id_client) VALUES 
('2026-10-17', (SELECT id_client FROM CLIENT WHERE nom = 'Rabe')),
('2026-10-17', (SELECT id_client FROM CLIENT WHERE nom = 'Rasoa')),
('2026-10-18', (SELECT id_client FROM CLIENT WHERE nom = 'Rakoto'));