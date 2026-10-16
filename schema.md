# Niveau 1
## Etape 1
PLAT(**id_plat**, prix, nom)

- On utilise un entier pour le prix car le prix est en ariary sans centime
- On utilise le serial Primary key id_plat comme identifiant

## Etape 2
CATEGORIE(**id_categorie**, nom)
PLAT(**id_plat**, prix, nom, #id_categorie)

- Si on ajoutait simplement une colonne categorie VARCHAR(50) dans PLAT alors il faudrait entrer manuellement chaque categorie
- Probleme concret : si on insere un categorie 'Entree' et 'entree', ce ne sont pas les memes alors on risque de confondre des donnees 

## Etape 3
COMMANDE(**id_commande**, date)
COMMANDE_PLAT(**id_commande_plat**, #id_commande, #id_plat, quantite)

- Je mets la quantite dans de chaque plat dans une table fille Commande_plat 

## Etape 4
CLIENT(**id_client**, nom)
COMMANDE(**id_commande**, date, #id_client)

- Ma cle etrangere n'est pas not null 
- Pour ne perdre aucune commande il faut la jointure avec COMMANDE, COMMANDE_PLAT et CLIENT

## Etape 5
SERVEUR(**id_serveur**, nom)
TABLES(**id_table**, nom)
COMMANDE_PRISE(**id_commande_prise**,#id_commande, #id_serveur, #id_table)

- Une table est l'endroit dans la gargotte ou on un client a commande des plats. Tandis qu'une commande c'est la liste des plats associe a un client.
- Le nom TABLE pose probleme car c'est un mot-cle qui gere toutes les relations.

# Niveau 2
## Etape 6
