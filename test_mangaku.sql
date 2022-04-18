/*
BDD : Mangaku
    Table : membre (id_membre, prenom, nom, sexe, email, mdp)
    Table : follow (id_follow, id_suiveur, id_suivi)
    Table : post (id_post, id_membre, titre, texte)
    Table : commentaire (id_com, id_suiveur, id_suivi)
    Table : message (id_message, id_sender, id_receveur, texte, date)
    */

    -- 1) Créer la BDD
    -- 2) Créer les tables
    -- 3) Remplir les tables

 -- Création de la BDD :
 -- CREATE DATABASE test_mangaku;

  -- Création de la table "membre" :
 CREATE TABLE membre (
    id_membre INT NOT NULL AUTO_INCREMENT,
    prenom VARCHAR(20) NOT NULL,
    nom VARCHAR(20) NOT NULL,
    sexe VARCHAR(20) NOT NULL,
    date_naissance DATE NOT NULL,
    email VARCHAR(30) NOT NULL,
    mdp VARCHAR(1000) NOT NULL,
    ville VARCHAR(20),
    bio VARCHAR(1000),
    PRIMARY KEY (id_membre)
 ) ENGINE=InnoDB;

  /* -- Création de la table "follow" :
 CREATE TABLE follow (
    id_follow INT NOT NULL AUTO_INCREMENT,

 ) ENGINE=InnoDB;*/

  -- Création de la table "post" :
 CREATE TABLE publication (
     id_publication INT NOT NULL AUTO_INCREMENT,
     id_membre INT NOT NULL,
     titre_publication VARCHAR(20) NOT NULL,
     message_publication VARCHAR(50) NOT NULL,
     PRIMARY KEY (id_publication)
      ) ENGINE=InnoDB;

  -- Création de la table "commentaire" :
 CREATE TABLE commentaire (
     id_commentaire INT NOT NULL AUTO_INCREMENT,
     id_publication INT NOT NULL,
     texte_commentaire varchar(200) NOT NULL,
     id_membre int(11) NOT NULL,
     PRIMARY KEY (id_commentaire)
      ) ENGINE=InnoDB;


  -- Création de la table "message" :
 CREATE TABLE message (
    id_message INT NOT NULL AUTO_INCREMENT,
    id_sender INT NOT NULL,
    id_receveur INT NOT NULL,
    texte VARCHAR(50) NOT NULL,
    date_message DATE NOT NULL,
     PRIMARY KEY (id_message)
      ) ENGINE=InnoDB;

 -- J'insère des membres :
  INSERT INTO membre (prenom, nom, sexe, date_naissance, email, mdp, ville, bio) VALUES
 ('Etienne', 'Leroy', 'm', '1998-08-02', 'geti.leroy@gmail.com', 'test', 'Lesigny', 'Je me prénomme Leroy Etienne et je suis âgé de 23 ans'),
 ('Tarik', 'Aguencheeech', 'm', '1886-01-12', 'tarik.aguen@gmail.com', 'test', 'Bussy', 'Je me prénomme Tarik'),
 ('Corentin', 'Surmaire', 'm', '1998-08-02', 'coco@gmail.com', 'test', 'Bezak', 'lets goooo'),
 ('Ousmane', 'Mamadou', 'm', '1886-01-12', 'ous.aguen@gmail.com', 'test', 'Cergy', 'mmmh');

