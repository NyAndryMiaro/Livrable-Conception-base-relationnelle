-- etape 1
SELECT * FROM PLAT ORDER BY prix DESC;

-- etape 2
SELECT CATEGORIE.nom, count(PLAT.id_categorie) as nombrePlats FROM PLAT LEFT JOIN CATEGORIE ON PLAT.id_categorie = CATEGORIE.id_categorie GROUP BY CATEGORIE.nom;

-- etape 3
SELECT COMMANDE.id_commande, SUM(PLAT.prix * COMMANDE_PLAT.quantite) AS montant
FROM COMMANDE
JOIN COMMANDE_PLAT ON COMMANDE_PLAT.id_commande = COMMANDE.id_commande
JOIN PLAT ON COMMANDE_PLAT.id_plat = PLAT.id_plat
GROUP BY COMMANDE.id_commande;

-- etape 4
SELECT C.id_commande, C.date, COALESCE(CL.nom, 'client de passage') AS client 
FROM COMMANDE C LEFT JOIN CLIENT CL ON C.id_client = CL.id_client;

-- etape 5
SELECT 
    SERVEUR.id_serveur,
    SERVEUR.nom,
    COUNT(DISTINCT COMMANDE_PRISE.id_commande) AS nombre_commandes,
    SUM(PLAT.prix * COMMANDE_PLAT.quantite) AS chiffre_affaires
FROM SERVEUR 
JOIN COMMANDE_PRISE ON SERVEUR.id_serveur = COMMANDE_PRISE.id_serveur
JOIN COMMANDE_PLAT ON COMMANDE_PRISE.id_commande = COMMANDE_PLAT.id_commande
JOIN PLAT ON COMMANDE_PLAT.id_plat = PLAT.id_plat
GROUP BY SERVEUR.id_serveur, SERVEUR.nom;

-- etape 6
