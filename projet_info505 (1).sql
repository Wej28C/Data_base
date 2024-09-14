-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 27 nov. 2023 à 18:29
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `projet_info505`
--

-- --------------------------------------------------------

--
-- Structure de la table `adresse`
--

CREATE TABLE `adresse` (
  `ID_adresse` int(11) NOT NULL,
  `rue_` varchar(50) DEFAULT NULL,
  `ville` varchar(50) DEFAULT NULL,
  `code_postale` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `adresse`
--

INSERT INTO `adresse` (`ID_adresse`, `rue_`, `ville`, `code_postale`) VALUES
(1, '4 Rue de l\'Espoir', 'Reims', '51100'),
(2, '5 Boulevard de la Paix', 'Paris', '95000'),
(3, '10 Rue des Chercheur', 'Marseille', '13008'),
(4, '15 Avenue des Sciences', 'Lyon', '69002'),
(5, '27 Rue de la République', 'Paris', '95000');

-- --------------------------------------------------------

--
-- Structure de la table `animalerie`
--

CREATE TABLE `animalerie` (
  `ID_anim` int(11) NOT NULL,
  `num_cage` int(11) DEFAULT NULL,
  `nb_souris` int(11) DEFAULT NULL,
  `genre_souris` varchar(50) DEFAULT NULL,
  `Numero_PEA` int(11) NOT NULL,
  `ID_lab` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `animalerie`
--

INSERT INTO `animalerie` (`ID_anim`, `num_cage`, `nb_souris`, `genre_souris`, `Numero_PEA`, `ID_lab`) VALUES
(1, 15, 150, 'MALES', 1, 1),
(2, 8, 60, 'FEMELLES', 2, 2),
(3, 45, 300, 'MALES', 3, 3);

-- --------------------------------------------------------

--
-- Structure de la table `chercheur`
--

CREATE TABLE `chercheur` (
  `ID_chercheur` int(11) NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `prenom` varchar(50) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `ID_equipe` int(11) NOT NULL,
  `ID_tache` int(11) NOT NULL,
  `ID_ensg` int(11) DEFAULT NULL,
  `ID_doctorant` int(11) DEFAULT NULL,
  `ID_ingenieur` int(11) DEFAULT NULL,
  `ID_lab` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `chercheur`
--

INSERT INTO `chercheur` (`ID_chercheur`, `nom`, `prenom`, `age`, `ID_equipe`, `ID_tache`, `ID_ensg`, `ID_doctorant`, `ID_ingenieur`, `ID_lab`) VALUES
(1, 'Dupoint', 'Marcel', 35, 1, 1, NULL, NULL, NULL, 1),
(2, 'Duval', 'Jean-Philippe', 37, 1, 2, NULL, 1, NULL, 1),
(3, 'Legrand', 'Armand', 30, 2, 3, NULL, NULL, 1, 1),
(4, 'Ruban', 'Frederique', 29, 3, 4, 1, NULL, NULL, 2),
(5, 'Francoise', 'Marie', 32, 3, 5, NULL, NULL, 2, 2),
(6, 'Martin', 'Robert', 40, 4, 0, 2, NULL, NULL, 3),
(7, 'Hubert', 'David', 35, 4, 0, NULL, NULL, NULL, 3);

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `ID_commande` int(11) NOT NULL,
  `date_commade` date DEFAULT NULL,
  `date_livraison` date DEFAULT NULL,
  `ID_fournisseur` int(11) NOT NULL,
  `ID_lab` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `commande`
--

INSERT INTO `commande` (`ID_commande`, `date_commade`, `date_livraison`, `ID_fournisseur`, `ID_lab`) VALUES
(1, '2023-04-10', '2023-04-20', 1, 1),
(2, '2023-10-20', '2023-10-30', 1, 2),
(3, '2019-10-05', '2020-11-04', 4, 3),
(4, '2023-04-04', '2023-05-05', 1, 1),
(5, '2022-07-10', '2022-08-30', 3, 2);

-- --------------------------------------------------------

--
-- Structure de la table `commander`
--

CREATE TABLE `commander` (
  `ID_produit` int(11) NOT NULL,
  `ID_commande` int(11) NOT NULL,
  `quantite` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `commander`
--

INSERT INTO `commander` (`ID_produit`, `ID_commande`, `quantite`) VALUES
(1, 1, 6),
(4, 2, 12),
(2, 1, 23),
(1, 4, 12),
(5, 5, 10);

-- --------------------------------------------------------

--
-- Structure de la table `contacter`
--

CREATE TABLE `contacter` (
  `ID_lab` int(11) NOT NULL,
  `ID_fournisseur` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `contacter`
--

INSERT INTO `contacter` (`ID_lab`, `ID_fournisseur`) VALUES
(1, 2),
(2, 2),
(3, 4),
(3, 5);

-- --------------------------------------------------------

--
-- Structure de la table `doctorant`
--

CREATE TABLE `doctorant` (
  `ID_doctorant` int(11) NOT NULL,
  `sujet_these` varchar(50) DEFAULT NULL,
  `date_debut` date DEFAULT NULL,
  `date_fin` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `doctorant`
--

INSERT INTO `doctorant` (`ID_doctorant`, `sujet_these`, `date_debut`, `date_fin`) VALUES
(1, 'Impact des mutations sur la croissance cellulaire', '2024-03-10', '2027-03-10');

-- --------------------------------------------------------

--
-- Structure de la table `enseignant_chercheur`
--

CREATE TABLE `enseignant_chercheur` (
  `ID_ensg` int(11) NOT NULL,
  `etablissement` varchar(50) DEFAULT NULL,
  `adresse_etablissement` varchar(50) DEFAULT NULL,
  `nb_heures` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `enseignant_chercheur`
--

INSERT INTO `enseignant_chercheur` (`ID_ensg`, `etablissement`, `adresse_etablissement`, `nb_heures`) VALUES
(1, 'Institut de Recherche Médicale', '456 Avenue de la Recherche', 15),
(2, 'Faculté des Sciences Appliquées', '789 Boulevard Scientifique', 25);

-- --------------------------------------------------------

--
-- Structure de la table `equipe`
--

CREATE TABLE `equipe` (
  `ID_equipe` int(11) NOT NULL,
  `nb_chercheur` int(11) DEFAULT NULL,
  `ID_projet` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `equipe`
--

INSERT INTO `equipe` (`ID_equipe`, `nb_chercheur`, `ID_projet`) VALUES
(1, 2, 1),
(2, 1, 1),
(3, 2, 2),
(4, 2, 3);

-- --------------------------------------------------------

--
-- Structure de la table `etre_composee`
--

CREATE TABLE `etre_composee` (
  `ID_chercheur` int(11) NOT NULL,
  `ID_equipe` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `etre_composee`
--

INSERT INTO `etre_composee` (`ID_chercheur`, `ID_equipe`) VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 3),
(5, 3),
(6, 4),
(7, 4);

-- --------------------------------------------------------

--
-- Structure de la table `expérience`
--

CREATE TABLE `expérience` (
  `ID_exp` int(11) NOT NULL,
  `but` varchar(50) DEFAULT NULL,
  `duree_preparation` double DEFAULT NULL,
  `duree_incubation` double DEFAULT NULL,
  `resultat` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `expérience`
--

INSERT INTO `expérience` (`ID_exp`, `but`, `duree_preparation`, `duree_incubation`, `resultat`) VALUES
(1, 'Verification de la souche de bactérie A ', 15, 33, 'Non existance ou non développement '),
(2, ' chlore mélangé à de alcohol', 34, 66, 'Mélange possible'),
(3, 'La bettrave contient elle du collagène ', 25, 47, 'Résultat positive '),
(4, 'Les enzymes surviront-t-ils sous 15 degres?', 23, 56, 'Resultat négatif'),
(5, 'Regenerer les cellules mortes ', 46, 87, 'Non abouti');

-- --------------------------------------------------------

--
-- Structure de la table `fournisseur`
--

CREATE TABLE `fournisseur` (
  `ID_fournisseur` int(11) NOT NULL,
  `nom_fournisseur` varchar(50) DEFAULT NULL,
  `num_telephone` varchar(50) DEFAULT NULL,
  `e_mail` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `fournisseur`
--

INSERT INTO `fournisseur` (`ID_fournisseur`, `nom_fournisseur`, `num_telephone`, `e_mail`) VALUES
(1, 'ServicepourLabo', '+33658100923', 'ServicepourLabo@outlook.com'),
(2, 'TousProduitsFouni', '+338729307190', 'TouProduitsFourni@gmail.com'),
(5, 'FournisseurChimie', '+33798493098', 'Fournichimie05@gmail.com'),
(3, 'FouniToutFrance', '+33975792028', 'FourniTouFran06@yahoo.fr'),
(4, 'BestProduitsFourni', '+33498400280', 'BestProduitsFourni07@yahoo.fr');

-- --------------------------------------------------------

--
-- Structure de la table `ingenieur_`
--

CREATE TABLE `ingenieur_` (
  `ID_ingenieur` int(11) NOT NULL,
  `secteur_gestion` varchar(50) DEFAULT NULL,
  `Type_contrat` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `ingenieur_`
--

INSERT INTO `ingenieur_` (`ID_ingenieur`, `secteur_gestion`, `Type_contrat`) VALUES
(1, 'Gestion des équipements de laboratoire', 'CDI'),
(2, 'Maintenance des instruments scientifiques', 'CDD');

-- --------------------------------------------------------

--
-- Structure de la table `laboratoire`
--

CREATE TABLE `laboratoire` (
  `ID_lab` int(11) NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `numéro_tel` varchar(50) DEFAULT NULL,
  `adresse_email` varchar(50) DEFAULT NULL,
  `site_internet` varchar(50) DEFAULT NULL,
  `nb_chercheurs` int(11) DEFAULT NULL,
  `ID_adresse` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `laboratoire`
--

INSERT INTO `laboratoire` (`ID_lab`, `nom`, `numéro_tel`, `adresse_email`, `site_internet`, `nb_chercheurs`, `ID_adresse`) VALUES
(1, 'Laboratoire de Biologie Moléculaire', '0329105622', 'lab_bio@yahoo.com', 'http://lab-bio.com', 3, 1),
(2, 'Institut de Recherche Génétique', '0369851200', 'institut_genetique@gmail.com', 'http://genetics-institute.com', 2, 2),
(3, 'Centre de Biotechnologie Avancée', '0387201599', 'biotech_center@yahoo.com', 'http://biotech-center.com', 2, 3);

-- --------------------------------------------------------

--
-- Structure de la table `pea`
--

CREATE TABLE `pea` (
  `Numero_PEA` int(11) NOT NULL,
  `date_pea` date DEFAULT NULL,
  `mention` varchar(50) DEFAULT NULL,
  `observation` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `pea`
--

INSERT INTO `pea` (`Numero_PEA`, `date_pea`, `mention`, `observation`) VALUES
(1, '2023-11-09', 'Réussi', 'Aucune complication détectée'),
(2, '2023-08-15', 'En cours', 'Observation en cours d\'évaluation'),
(3, '2024-02-11', 'Échec', 'Difficultés techniques');

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `ID_produit` int(11) NOT NULL,
  `stock` int(11) DEFAULT NULL,
  `localisation` varchar(50) DEFAULT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `ID_s1` int(11) NOT NULL,
  `ID_s2` int(11) NOT NULL,
  `ID_s3` int(11) NOT NULL,
  `ID_s4` int(11) NOT NULL,
  `ID_s5` int(11) NOT NULL,
  `ID_lab` int(11) NOT NULL,
  `ID_chercheur` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`ID_produit`, `stock`, `localisation`, `nom`, `ID_s1`, `ID_s2`, `ID_s3`, `ID_s4`, `ID_s5`, `ID_lab`, `ID_chercheur`) VALUES
(1, 14, 'rayon A', 'Acide Aminé ', 1, 0, 0, 0, 0, 1, 2),
(2, 7, 'rayon B ', 'acide sulfurique ', 0, 2, 0, 0, 0, 1, 3),
(3, 5, 'rayon C', 'pipette', 0, 0, 1, 0, 0, 1, 3),
(4, 20, 'rayon D', 'Cuve d\'electrophorese', 0, 0, 0, 1, 0, 2, 4),
(5, 10, 'rayon E ', 'EcoRI', 0, 0, 0, 0, 1, 2, 5);

-- --------------------------------------------------------

--
-- Structure de la table `projet`
--

CREATE TABLE `projet` (
  `ID_projet` int(11) NOT NULL,
  `sujet` varchar(50) DEFAULT NULL,
  `date_debut` date DEFAULT NULL,
  `nb_publication` int(11) DEFAULT NULL,
  `statut` varchar(50) DEFAULT NULL,
  `ID_exp` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `projet`
--

INSERT INTO `projet` (`ID_projet`, `sujet`, `date_debut`, `nb_publication`, `statut`, `ID_exp`) VALUES
(1, 'Recherche sur le cancer', '2023-11-30', 5, 'en cours', 1),
(2, 'Développement de médicaments', '2022-11-01', 10, 'en cours - pas finalise', 2),
(3, 'Développement d\'un vaccin contre la grippe', '2024-01-07', 3, 'En etat de lancement', 3);

-- --------------------------------------------------------

--
-- Structure de la table `projet_experience`
--

CREATE TABLE `projet_experience` (
  `ID_Projet` int(11) NOT NULL,
  `ID_Experience` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `projet_experience`
--

INSERT INTO `projet_experience` (`ID_Projet`, `ID_Experience`) VALUES
(1, 1),
(2, 2),
(3, 3);

-- --------------------------------------------------------

--
-- Structure de la table `reservation_`
--

CREATE TABLE `reservation_` (
  `ID_rsv` int(11) NOT NULL,
  `date_reservation` datetime DEFAULT NULL,
  `duree` double DEFAULT NULL,
  `ID_lab` int(11) NOT NULL,
  `ID_chercheur` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `reservation_`
--

INSERT INTO `reservation_` (`ID_rsv`, `date_reservation`, `duree`, `ID_lab`, `ID_chercheur`) VALUES
(1, '2023-06-05 02:00:00', 2, 1, 1),
(2, '2023-06-12 02:30:00', 2, 1, 2),
(3, '2023-07-14 01:30:00', 1, 1, 3),
(4, '2023-11-13 02:15:00', 2, 2, 4),
(5, '2023-12-06 03:30:00', 3, 3, 5);

-- --------------------------------------------------------

--
-- Structure de la table `reunion`
--

CREATE TABLE `reunion` (
  `ID_reunion` int(11) NOT NULL,
  `date_reunion` datetime DEFAULT NULL,
  `salle` varchar(50) DEFAULT NULL,
  `ID_lab` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `reunion`
--

INSERT INTO `reunion` (`ID_reunion`, `date_reunion`, `salle`, `ID_lab`) VALUES
(1, '2023-11-14 20:31:51', 'Salle G4T2 etage 6', 1),
(2, '2023-10-19 10:30:28', 'Salle L8K1, bat L, et 0', 1),
(3, '2023-12-14 11:45:31', 'Salle K1M9 et 5', 2),
(4, '2023-12-10 12:00:19', 'Salle O64, bat O', 3),
(5, '2023-12-17 10:30:19', 'Salle O64, bat O', 3);

-- --------------------------------------------------------

--
-- Structure de la table `s1_culture_cellulaire`
--

CREATE TABLE `s1_culture_cellulaire` (
  `ID_s1` int(11) NOT NULL,
  `concentration` double DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `s1_culture_cellulaire`
--

INSERT INTO `s1_culture_cellulaire` (`ID_s1`, `concentration`) VALUES
(1, 20),
(0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `s2_prod_chimique`
--

CREATE TABLE `s2_prod_chimique` (
  `ID_s2` int(11) NOT NULL,
  `concentration` double DEFAULT NULL,
  `contre_indications` varchar(50) DEFAULT NULL,
  `température` double DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `s2_prod_chimique`
--

INSERT INTO `s2_prod_chimique` (`ID_s2`, `concentration`, `contre_indications`, `température`) VALUES
(2, 60, 'risque d\'inflammation ', 38),
(0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `s3_consommable`
--

CREATE TABLE `s3_consommable` (
  `ID_s3` int(11) NOT NULL,
  `contenance` double DEFAULT NULL,
  `Taille` varchar(50) DEFAULT NULL,
  `matiere` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `s3_consommable`
--

INSERT INTO `s3_consommable` (`ID_s3`, `contenance`, `Taille`, `matiere`) VALUES
(1, 30, NULL, 'verre'),
(2, NULL, 'M', 'Plastique'),
(0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `s4_bio_moleculaire`
--

CREATE TABLE `s4_bio_moleculaire` (
  `ID_s4` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `s4_bio_moleculaire`
--

INSERT INTO `s4_bio_moleculaire` (`ID_s4`) VALUES
(0),
(1);

-- --------------------------------------------------------

--
-- Structure de la table `s5_enzymes`
--

CREATE TABLE `s5_enzymes` (
  `ID_s5` int(11) NOT NULL,
  `concentration` double DEFAULT NULL,
  `temperature` double DEFAULT NULL,
  `nom_tampon` varchar(50) DEFAULT NULL,
  `num_container` int(11) DEFAULT NULL,
  `num_boite` int(11) DEFAULT NULL,
  `num_bac` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `s5_enzymes`
--

INSERT INTO `s5_enzymes` (`ID_s5`, `concentration`, `temperature`, `nom_tampon`, `num_container`, `num_boite`, `num_bac`) VALUES
(5, 77, 40, 'NEBuffer', 4, 3, 16),
(0, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `se_presenter`
--

CREATE TABLE `se_presenter` (
  `ID_chercheur` int(11) NOT NULL,
  `ID_reunion` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `se_presenter`
--

INSERT INTO `se_presenter` (`ID_chercheur`, `ID_reunion`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(4, 3),
(5, 3),
(6, 4),
(6, 5),
(7, 4),
(7, 5);

-- --------------------------------------------------------

--
-- Structure de la table `se_situer`
--

CREATE TABLE `se_situer` (
  `ID_adresse` int(11) NOT NULL,
  `ID_fournisseur` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tache`
--

CREATE TABLE `tache` (
  `ID_tache` int(11) NOT NULL,
  `description_tache` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `tache`
--

INSERT INTO `tache` (`ID_tache`, `description_tache`) VALUES
(0, 'Le chercheur n\'est pas responsable d\'aucune tache.'),
(1, 'Coordonner équipe'),
(2, 'Gestionner les produits'),
(3, ' Collecter des échantillons biologiques'),
(4, ' Préparer des présentations'),
(5, 'Valider les protocoles expérimentaux ');

-- --------------------------------------------------------

--
-- Structure de la table `utiliser_experience`
--

CREATE TABLE `utiliser_experience` (
  `ID_exp` int(11) NOT NULL,
  `ID_produit` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `utiliser_experience`
--

INSERT INTO `utiliser_experience` (`ID_exp`, `ID_produit`) VALUES
(1, 1),
(1, 2),
(2, 2),
(2, 3),
(3, 4),
(3, 5);

-- --------------------------------------------------------

--
-- Structure de la table `utiliser_materiel`
--

CREATE TABLE `utiliser_materiel` (
  `ID_produit` int(11) NOT NULL,
  `ID_rsv` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `utiliser_materiel`
--

INSERT INTO `utiliser_materiel` (`ID_produit`, `ID_rsv`) VALUES
(0, 0),
(1, 1),
(2, 2),
(3, 3),
(4, 4);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `adresse`
--
ALTER TABLE `adresse`
  ADD PRIMARY KEY (`ID_adresse`);

--
-- Index pour la table `animalerie`
--
ALTER TABLE `animalerie`
  ADD PRIMARY KEY (`ID_anim`),
  ADD UNIQUE KEY `ID_lab` (`ID_lab`),
  ADD KEY `Numero_PEA` (`Numero_PEA`);

--
-- Index pour la table `chercheur`
--
ALTER TABLE `chercheur`
  ADD PRIMARY KEY (`ID_chercheur`),
  ADD KEY `ID_tache` (`ID_tache`),
  ADD KEY `ID_ensg` (`ID_ensg`),
  ADD KEY `ID_doctorant` (`ID_doctorant`),
  ADD KEY `ID_ingenieur` (`ID_ingenieur`),
  ADD KEY `ID_lab` (`ID_lab`),
  ADD KEY `FK_Chercheur_Equipe` (`ID_equipe`);

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`ID_commande`),
  ADD KEY `ID_fournisseur` (`ID_fournisseur`),
  ADD KEY `ID_lab` (`ID_lab`);

--
-- Index pour la table `commander`
--
ALTER TABLE `commander`
  ADD PRIMARY KEY (`ID_produit`,`ID_commande`),
  ADD KEY `ID_commande` (`ID_commande`);

--
-- Index pour la table `contacter`
--
ALTER TABLE `contacter`
  ADD PRIMARY KEY (`ID_lab`,`ID_fournisseur`),
  ADD KEY `ID_fournisseur` (`ID_fournisseur`);

--
-- Index pour la table `doctorant`
--
ALTER TABLE `doctorant`
  ADD PRIMARY KEY (`ID_doctorant`);

--
-- Index pour la table `enseignant_chercheur`
--
ALTER TABLE `enseignant_chercheur`
  ADD PRIMARY KEY (`ID_ensg`);

--
-- Index pour la table `equipe`
--
ALTER TABLE `equipe`
  ADD PRIMARY KEY (`ID_equipe`),
  ADD KEY `ID_projet` (`ID_projet`);

--
-- Index pour la table `etre_composee`
--
ALTER TABLE `etre_composee`
  ADD PRIMARY KEY (`ID_chercheur`,`ID_equipe`),
  ADD KEY `ID_equipe` (`ID_equipe`);

--
-- Index pour la table `expérience`
--
ALTER TABLE `expérience`
  ADD PRIMARY KEY (`ID_exp`);

--
-- Index pour la table `fournisseur`
--
ALTER TABLE `fournisseur`
  ADD PRIMARY KEY (`ID_fournisseur`);

--
-- Index pour la table `ingenieur_`
--
ALTER TABLE `ingenieur_`
  ADD PRIMARY KEY (`ID_ingenieur`);

--
-- Index pour la table `laboratoire`
--
ALTER TABLE `laboratoire`
  ADD PRIMARY KEY (`ID_lab`),
  ADD UNIQUE KEY `ID_adresse` (`ID_adresse`);

--
-- Index pour la table `pea`
--
ALTER TABLE `pea`
  ADD PRIMARY KEY (`Numero_PEA`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`ID_produit`),
  ADD KEY `ID_s1` (`ID_s1`),
  ADD KEY `ID_s2` (`ID_s2`),
  ADD KEY `ID_s3` (`ID_s3`),
  ADD KEY `ID_s4` (`ID_s4`),
  ADD KEY `ID_s5` (`ID_s5`),
  ADD KEY `ID_lab` (`ID_lab`),
  ADD KEY `ID_chercheur` (`ID_chercheur`);

--
-- Index pour la table `projet`
--
ALTER TABLE `projet`
  ADD PRIMARY KEY (`ID_projet`),
  ADD UNIQUE KEY `ID_exp` (`ID_exp`);

--
-- Index pour la table `projet_experience`
--
ALTER TABLE `projet_experience`
  ADD PRIMARY KEY (`ID_Projet`,`ID_Experience`),
  ADD UNIQUE KEY `UQ_Projet_Experience` (`ID_Experience`);

--
-- Index pour la table `reservation_`
--
ALTER TABLE `reservation_`
  ADD PRIMARY KEY (`ID_rsv`),
  ADD KEY `ID_lab` (`ID_lab`),
  ADD KEY `ID_chercheur` (`ID_chercheur`);

--
-- Index pour la table `reunion`
--
ALTER TABLE `reunion`
  ADD PRIMARY KEY (`ID_reunion`),
  ADD KEY `ID_lab` (`ID_lab`);

--
-- Index pour la table `s1_culture_cellulaire`
--
ALTER TABLE `s1_culture_cellulaire`
  ADD PRIMARY KEY (`ID_s1`);

--
-- Index pour la table `s2_prod_chimique`
--
ALTER TABLE `s2_prod_chimique`
  ADD PRIMARY KEY (`ID_s2`);

--
-- Index pour la table `s3_consommable`
--
ALTER TABLE `s3_consommable`
  ADD PRIMARY KEY (`ID_s3`);

--
-- Index pour la table `s4_bio_moleculaire`
--
ALTER TABLE `s4_bio_moleculaire`
  ADD PRIMARY KEY (`ID_s4`);

--
-- Index pour la table `s5_enzymes`
--
ALTER TABLE `s5_enzymes`
  ADD PRIMARY KEY (`ID_s5`);

--
-- Index pour la table `se_presenter`
--
ALTER TABLE `se_presenter`
  ADD PRIMARY KEY (`ID_chercheur`,`ID_reunion`),
  ADD KEY `ID_reunion` (`ID_reunion`);

--
-- Index pour la table `se_situer`
--
ALTER TABLE `se_situer`
  ADD PRIMARY KEY (`ID_adresse`,`ID_fournisseur`),
  ADD KEY `ID_fournisseur` (`ID_fournisseur`);

--
-- Index pour la table `tache`
--
ALTER TABLE `tache`
  ADD PRIMARY KEY (`ID_tache`);

--
-- Index pour la table `utiliser_experience`
--
ALTER TABLE `utiliser_experience`
  ADD PRIMARY KEY (`ID_exp`,`ID_produit`),
  ADD KEY `ID_produit` (`ID_produit`);

--
-- Index pour la table `utiliser_materiel`
--
ALTER TABLE `utiliser_materiel`
  ADD PRIMARY KEY (`ID_produit`,`ID_rsv`),
  ADD KEY `ID_rsv` (`ID_rsv`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
