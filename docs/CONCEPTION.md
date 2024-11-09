# CONCEPTION 

Site de commande de fruits et légumes

## PLAN : 

### MCD
[x] ARTICLE : code_produit, nom, description, prix
[x] CATEGORIE : code_catégorie, titre
[x] CLIENT : code_client, nom, adresse, téléphone
[x] COMMANDE : code_commande, date et heure, CLIENT

### MLD
[x] Product(id_product STRING, title STRING, description TEXT, price INT)
[x] Catégory(id_category STRING, title STRING,)
[x] Client(id_client INT, name STRING, adress TEXT, phoneNumber INT)
[x] Order(id_order INT, ordered_at DATE, id_client INT)

### MPD
[] Creer les tables