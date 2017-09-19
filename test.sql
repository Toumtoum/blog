-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:8889
-- Généré le :  Mar 19 Septembre 2017 à 11:57
-- Version du serveur :  5.6.35
-- Version de PHP :  7.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `test`
--

-- --------------------------------------------------------

--
-- Structure de la table `billets`
--

CREATE TABLE `billets` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `contenu` text NOT NULL,
  `dateCreation` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `billets`
--

INSERT INTO `billets` (`id`, `titre`, `contenu`, `dateCreation`) VALUES
(1, 'Mon premier Billet', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2017-09-15 09:31:00'),
(3, 'Amazon Music Unlimited : le service de streaming musical est disponible en France', 'Amazon est le champion incontesté de l’e-commerce. Au-delà de ça, l’entreprise a largement diversifié ses activités et propose notamment Prime Video, une plateforme SVoD pour regarder des films et séries, marchant ainsi sur les plates-bandes de Netflix.Mais Amazon est également en concurrence avec des services tels que Spotify, Apple Music ou Google Play Musique. La firme de Jeff Bezos dispose en effet d’une plateforme de streaming musical baptisée Amazon Music Unlimited. La recette est classique : en s’abonnant, l’utilisateur peut profiter d’un grand nombreux de morceaux à écouter, « plus de 50 millions de titres », si l’on en croit l’entreprise. Music Unlimited est désormais disponible en France et affiche sa grille tarifaire. L’abonnement coûte 9,99 euros par mois dans sa version classique, mais il existe également une offre familiale — jusqu’à 6 personnes — qui s’élève à 14,99 euros par mois.', '2017-09-15 11:04:00');

-- --------------------------------------------------------

--
-- Structure de la table `commentaires`
--

CREATE TABLE `commentaires` (
  `id` int(11) NOT NULL,
  `idBillet` int(11) NOT NULL,
  `auteur` varchar(255) NOT NULL,
  `commentaire` text NOT NULL,
  `dateCommentaire` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `commentaires`
--

INSERT INTO `commentaires` (`id`, `idBillet`, `auteur`, `commentaire`, `dateCommentaire`) VALUES
(1, 1, '@med', 'vous avez déjà un premier commentaires pour cet article très intéressant.', '2017-09-15 09:33:00'),
(3, 3, '@med', 'vous n\'avez qu\'un lecteur apparemment, ce post ressemble à un copiez-collez!!!!!!!!!!!! ', '2017-09-15 11:35:00'),
(4, 1, '@med', 'ceci est un test', '0000-00-00 00:00:00'),
(5, 1, '@med', 'ceci est un test', '0000-00-00 00:00:00'),
(6, 3, 'abdelbachir', 'nouveau test', '0000-00-00 00:00:00'),
(7, 1, 'aa', 'aa', '0000-00-00 00:00:00'),
(8, 1, 'lala', 'test d\'insertion dans phpmyadmin', '0000-00-00 00:00:00'),
(9, 1, 'AAA', 'AAAA', '0000-00-00 00:00:00'),
(10, 1, 'bbb', 'bbb', '0000-00-00 00:00:00'),
(11, 1, 'cc', 'cc', '0000-00-00 00:00:00'),
(12, 1, 'dd', 'dd', '0000-00-00 00:00:00'),
(13, 1, 'ee', 'ee', '0000-00-00 00:00:00'),
(14, 1, 'ff', 'ff', '0000-00-00 00:00:00'),
(15, 1, 'ff', 'ff', '0000-00-00 00:00:00'),
(16, 1, 'gg', 'gg', '0000-00-00 00:00:00'),
(17, 1, 'hh', 'hh', '0000-00-00 00:00:00'),
(18, 1, 'ii', 'ii', '0000-00-00 00:00:00'),
(19, 1, 'jj', 'jj', '0000-00-00 00:00:00'),
(20, 3, 'aa', 'aa', '0000-00-00 00:00:00'),
(21, 3, 'bb', 'bb', '0000-00-00 00:00:00'),
(22, 3, 'c', 'c', '2017-09-16 22:28:46'),
(23, 3, 'd', 'd', '2017-09-17 22:57:29');

-- --------------------------------------------------------

--
-- Structure de la table `jeux_video`
--

CREATE TABLE `jeux_video` (
  `ID` int(10) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `possesseur` varchar(255) NOT NULL,
  `console` varchar(255) NOT NULL,
  `prix` double NOT NULL DEFAULT '0',
  `nbre_joueurs_max` int(11) NOT NULL DEFAULT '0',
  `commentaires` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `jeux_video`
--

INSERT INTO `jeux_video` (`ID`, `nom`, `possesseur`, `console`, `prix`, `nbre_joueurs_max`, `commentaires`) VALUES
(1, 'Super Mario Bros', 'Florent', 'NES', 4, 1, 'Un jeu d\'anthologie !'),
(2, 'Sonic', 'Patrick', 'Megadrive', 2, 1, 'Pour moi, le meilleur jeu du monde !'),
(3, 'Zelda : ocarina of time', 'Florent', 'Nintendo 64', 15, 1, 'Un jeu grand, beau et complet comme on en voit rarement de nos jours'),
(4, 'Mario Kart 64', 'Florent', 'Nintendo 64', 25, 4, 'Un excellent jeu de kart !'),
(5, 'Super Smash Bros Melee', 'Michel', 'GameCube', 55, 4, 'Un jeu de baston délirant !'),
(6, 'Dead or Alive', 'Patrick', 'Xbox', 60, 4, 'Le plus beau jeu de baston jamais créé'),
(7, 'Dead or Alive Xtreme Beach Volley Ball', 'Patrick', 'Xbox', 60, 4, 'Un jeu de beach volley de toute beauté o_O'),
(8, 'Enter the Matrix', 'Michel', 'PC', 45, 1, 'Plutôt bof comme jeu, mais ça complète bien le film'),
(9, 'Max Payne 2', 'Michel', 'PC', 50, 1, 'Très réaliste, une sorte de film noir sur fond d\'histoire d\'amour. A essayer !'),
(10, 'Yoshi\'s Island', 'Florent', 'SuperNES', 6, 1, 'Le paradis des Yoshis :o)'),
(11, 'Commandos 3', 'Florent', 'PC', 44, 12, 'Un bon jeu d\'action où on dirige un commando pendant la 2ème guerre mondiale !'),
(12, 'Final Fantasy X', 'Patrick', 'PS2', 40, 1, 'Encore un Final Fantasy mais celui la est encore plus beau !'),
(13, 'Pokemon Rubis', 'Florent', 'GBA', 44, 4, 'Pika-Pika-chu !!!'),
(14, 'Starcraft', 'Michel', 'PC', 19, 8, 'Le meilleur jeux pc de tout les temps !'),
(15, 'Grand Theft Auto 3', 'Michel', 'PS2', 30, 1, 'Comme dans les autres Gta on ecrase tout le monde :) .'),
(16, 'Homeworld 2', 'Michel', 'PC', 45, 6, 'Superbe ! o_O'),
(17, 'Aladin', 'Patrick', 'SuperNES', 10, 1, 'Comme le dessin Animé !'),
(18, 'Super Mario Bros 3', 'Michel', 'SuperNES', 10, 2, 'Le meilleur Mario selon moi.'),
(19, 'SSX 3', 'Florent', 'Xbox', 56, 2, 'Un très bon jeu de snow !'),
(20, 'Star Wars : Jedi outcast', 'Patrick', 'Xbox', 33, 1, 'Encore un jeu sur star-wars où on se prend pour Luke Skywalker !'),
(21, 'Actua Soccer 3', 'Patrick', 'PS', 30, 2, 'Un jeu de foot assez bof ...'),
(22, 'Time Crisis 3', 'Florent', 'PS2', 40, 1, 'Un troisième volet efficace mais pas vraiment surprenant'),
(23, 'X-FILES', 'Patrick', 'PS', 25, 1, 'Un jeu censé ressembler a la série mais assez raté ...'),
(24, 'Soul Calibur 2', 'Patrick', 'Xbox', 54, 1, 'Un jeu bien axé sur le combat'),
(25, 'Diablo', 'Florent', 'PS', 20, 1, 'Comme sur PC mais la c\'est sur un ecran de télé :) !'),
(26, 'Street Fighter 2', 'Patrick', 'Megadrive', 10, 2, 'Le célèbre jeu de combat !'),
(27, 'Gundam Battle Assault 2', 'Florent', 'PS', 29, 1, 'Jeu japonais dont le gameplay est un peu limité. Peu de robots malheureusement'),
(28, 'Spider-Man', 'Florent', 'Megadrive', 15, 1, 'Vivez l\'aventure de l\'homme araignée'),
(29, 'Midtown Madness 3', 'Michel', 'Xbox', 59, 6, 'Dans la suite des autres versions de Midtown Madness'),
(30, 'Tetris', 'Florent', 'Gameboy', 5, 1, 'Qui ne connait pas ? '),
(31, 'The Rocketeer', 'Michel', 'NES', 2, 1, 'Un super un film et un jeu de m*rde ...'),
(32, 'Pro Evolution Soccer 3', 'Patrick', 'PS2', 59, 2, 'Un petit jeu de foot sur PS2'),
(33, 'Ice Hockey', 'Michel', 'NES', 7, 2, 'Jamais joué mais a mon avis ca parle de hockey sur glace ... =)'),
(34, 'Sydney 2000', 'Florent', 'Dreamcast', 15, 2, 'Les JO de Sydney dans votre salon !'),
(35, 'NBA 2k', 'Patrick', 'Dreamcast', 12, 2, 'A votre avis :p ?'),
(36, 'Aliens Versus Predator : Extinction', 'Michel', 'PS2', 20, 2, 'Un shoot\'em up pour pc'),
(37, 'Crazy Taxi', 'Florent', 'Dreamcast', 11, 1, 'Conduite de taxi en folie !'),
(38, 'Le Maillon Faible', 'Mathieu', 'PS2', 10, 1, 'Le jeu de l\'émission'),
(39, 'FIFA 64', 'Michel', 'Nintendo 64', 25, 2, 'Le premier jeu de foot sur la N64 =) !'),
(40, 'Qui Veut Gagner Des Millions', 'Florent', 'PS2', 10, 1, 'Le jeu de l\'émission'),
(41, 'Monopoly', 'Sebastien', 'Nintendo 64', 21, 4, 'Bheuuu le monopoly sur N64 !'),
(42, 'Taxi 3', 'Corentin', 'PS2', 19, 4, 'Un jeu de voiture sur le film'),
(43, 'Indiana Jones Et Le Tombeau De L\'Empereur', 'Florent', 'PS2', 25, 1, 'Notre aventurier préféré est de retour !!!'),
(44, 'F-ZERO', 'Mathieu', 'GBA', 25, 4, 'Un super jeu de course futuriste !'),
(45, 'Harry Potter Et La Chambre Des Secrets', 'Mathieu', 'Xbox', 30, 1, 'Abracadabra !! Le célebre magicien est de retour !'),
(46, 'Half-Life', 'Corentin', 'PC', 15, 32, 'L\'autre meilleur jeu de tout les temps (surtout ses mods).'),
(47, 'Myst III Exile', 'Sébastien', 'Xbox', 49, 1, 'Un jeu de réflexion'),
(48, 'Wario World', 'Sebastien', 'Gamecube', 40, 4, 'Wario vs Mario ! Qui gagnera ! ?'),
(49, 'Rollercoaster Tycoon', 'Florent', 'Xbox', 29, 1, 'Jeu de gestion d\'un parc d\'attraction'),
(50, 'Splinter Cell', 'Patrick', 'Xbox', 53, 1, 'Jeu magnifique !');

-- --------------------------------------------------------

--
-- Structure de la table `minichat`
--

CREATE TABLE `minichat` (
  `id` int(11) NOT NULL,
  `pseudo` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `minichat`
--

INSERT INTO `minichat` (`id`, `pseudo`, `message`, `date`) VALUES
(1, 'med', 'premier test', '0000-00-00 00:00:00'),
(2, 'JEAN', 'DEUXIÈME TEST', '0000-00-00 00:00:00'),
(3, 'MICHEL', 'TROISIÈME TEST\r\n', '0000-00-00 00:00:00'),
(4, 'hector', 'quatrième test', '0000-00-00 00:00:00'),
(5, 'mouloud', 'cinquième test\r\n', '0000-00-00 00:00:00'),
(6, 'albert', 'sixième test', '0000-00-00 00:00:00'),
(7, 'abdelbachir', 'septième test', '0000-00-00 00:00:00'),
(8, 'bob', 'huitième test', '0000-00-00 00:00:00'),
(9, 'med', 'neuvième test', '0000-00-00 00:00:00'),
(10, 'jean', 'dixième test', '0000-00-00 00:00:00'),
(11, 'med', 'test de l\'affichage des 10 dernier message', '0000-00-00 00:00:00'),
(12, 'mehdi', 'test des strip tags', '0000-00-00 00:00:00'),
(13, 'med', 'nouveau test des strips tags', '0000-00-00 00:00:00'),
(14, 'med', 'test cookie', '0000-00-00 00:00:00'),
(16, 'mehdi', 'test session', '0000-00-00 00:00:00'),
(17, 'med', 'test', '0000-00-00 00:00:00'),
(18, 'MEHDI', 'TEST', '0000-00-00 00:00:00'),
(19, 'mehdi', 'test', '0000-00-00 00:00:00'),
(20, 'med', 'test', '0000-00-00 00:00:00'),
(21, 'med', 'test1', '0000-00-00 00:00:00'),
(22, 'med', 'test2', '0000-00-00 00:00:00'),
(23, 'med', 'test3\r\n', '0000-00-00 00:00:00'),
(24, 'med', 'aa', '0000-00-00 00:00:00'),
(25, 'med', 'test', '0000-00-00 00:00:00'),
(26, 'ben', 'test', '0000-00-00 00:00:00'),
(27, 'ben', 'test2', '0000-00-00 00:00:00'),
(28, 'MED', 'TEST', '0000-00-00 00:00:00'),
(29, 'MED', 'TEST', '0000-00-00 00:00:00'),
(30, 'MED', 'TEST2', '0000-00-00 00:00:00'),
(31, 'gjgg', 'ghjgg', '0000-00-00 00:00:00'),
(32, 'gjgg', 'hghvhg', '0000-00-00 00:00:00'),
(33, 'aaaa', 'aaa', '0000-00-00 00:00:00'),
(34, 'med', 'test du refresh', '0000-00-00 00:00:00'),
(35, 'med', 'test du refresh', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `contenu` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `news`
--

INSERT INTO `news` (`id`, `titre`, `contenu`) VALUES
(1, 'Ma première news', 'Ceci est un test pour afficher ma première news.'),
(2, 'deuxième news', 'deuxième test, tu vois où je veux en venir'),
(3, 'troisième news', 'c\'est sûr maintenant tu as compris oû je voulais en venir.');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `billets`
--
ALTER TABLE `billets`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `commentaires`
--
ALTER TABLE `commentaires`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `jeux_video`
--
ALTER TABLE `jeux_video`
  ADD KEY `ID` (`ID`);

--
-- Index pour la table `minichat`
--
ALTER TABLE `minichat`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `billets`
--
ALTER TABLE `billets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `commentaires`
--
ALTER TABLE `commentaires`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT pour la table `jeux_video`
--
ALTER TABLE `jeux_video`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;
--
-- AUTO_INCREMENT pour la table `minichat`
--
ALTER TABLE `minichat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT pour la table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
