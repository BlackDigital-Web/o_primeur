-- Generated by Mocodo 4.2.11

CREATE TABLE APPARTENIR (
  PRIMARY KEY (code_categorie, code_produit),
  code_categorie VARCHAR(42) NOT NULL,
  code_produit   VARCHAR(42) NOT NULL
);

CREATE TABLE ARTICLE (
  PRIMARY KEY (code_produit),
  code_produit  VARCHAR(42) NOT NULL,
  nom           VARCHAR(42),
  description   VARCHAR(42),
  prix_unitaire VARCHAR(42)
);

CREATE TABLE CATEGORIE (
  PRIMARY KEY (code_categorie),
  code_categorie VARCHAR(42) NOT NULL,
  titre          VARCHAR(42)
);

CREATE TABLE CLIENT (
  PRIMARY KEY (code_client),
  code_client VARCHAR(42) NOT NULL,
  nom         VARCHAR(42),
  prenom      VARCHAR(42),
  adresse     VARCHAR(42),
  telephone   VARCHAR(42)
);

CREATE TABLE COMMANDE (
  PRIMARY KEY (code_commande),
  code_commande VARCHAR(42) NOT NULL,
  date_et_heure VARCHAR(42)
);

CREATE TABLE COMMANDER (
  PRIMARY KEY (code_client, code_commande),
  code_client   VARCHAR(42) NOT NULL,
  code_commande VARCHAR(42) NOT NULL
);

CREATE TABLE CONTENIR (
  PRIMARY KEY (code_commande, code_produit),
  code_commande VARCHAR(42) NOT NULL,
  code_produit  VARCHAR(42) NOT NULL
);

ALTER TABLE APPARTENIR ADD FOREIGN KEY (code_produit) REFERENCES ARTICLE (code_produit);
ALTER TABLE APPARTENIR ADD FOREIGN KEY (code_categorie) REFERENCES CATEGORIE (code_categorie);

ALTER TABLE COMMANDER ADD FOREIGN KEY (code_commande) REFERENCES COMMANDE (code_commande);
ALTER TABLE COMMANDER ADD FOREIGN KEY (code_client) REFERENCES CLIENT (code_client);

ALTER TABLE CONTENIR ADD FOREIGN KEY (code_produit) REFERENCES ARTICLE (code_produit);
ALTER TABLE CONTENIR ADD FOREIGN KEY (code_commande) REFERENCES COMMANDE (code_commande);
