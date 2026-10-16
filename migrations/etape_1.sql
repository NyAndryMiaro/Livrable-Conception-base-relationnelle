CREATE TABLE PLAT (
    id_plat SERIAL PRIMARY KEY,
    prix INT,
    nom VARCHAR(100)
);

INSERT INTO PLAT (nom, prix) VALUES 
('Romazava', 7000),
('Ravitoto sy henakisoa', 8000),
('Akoho sy voanio', 8500),
('Mi sao', 6000),
('Soupe chinoise', 5000),
('Mofo gasy (les 4)', 1000),
('Ranon''ampango', 500);