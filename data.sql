INSERT INTO `Acteurs` (`Idacteurs_actrices_Acteurs`, `Nom_Acteurs`, `Prénom_Acteurs`, `DateDeNaissance_Acteurs`) VALUES
(21, 'Chris', 'Hemsworth', '1983-08-11'),
(22, 'Natalie', 'Hershlag', '1981-06-09'),
(24, 'Tom', 'Holland', '1996-06-01'),
(26, 'Robert John', 'Downey', '1965-04-04'),
(27, 'Sophie Belinda', 'Turner', '1996-02-21'),
(28, 'James', 'Mcavoy', '1979-04-21'),
(29, 'Hugh', 'Jackman', '1968-12-10'),
(31, 'Cavill', 'Henry ', '1983-05-05');


INSERT INTO `Fillms` (`Idfilms_Fillms`, `Titre_Fillms`, `Durée_Fillms`, `AnnéeDeSortie_Fillms`) VALUES
(5, 'Thor', '01:55:00', '2027-04-11'),
(6, 'Spider-Man :Homecoming', '02:13:00', '2012-07-17'),
(7, 'X-MEN: Dark Phoenix ', '01:54:00', '2009-06-19'),
(8, 'AVENGERS: Infinity War', '02:36:00', '2025-04-18'),
(9, 'Captain America', '02:28:00', '2016-04-18');

INSERT INTO `Réalisateurs` (`IdRéalisateurs_Réalisateurs`, `Nom_Réalisateurs`, `Prénom_Réalisateurs`) VALUES
(1, 'Kenneth', 'Branagh'),
(2, 'Jon', 'Watts'),
(3, 'Simon', ' Kinberg'),
(4, 'Christopher', 'Markus');

INSERT INTO `Utilisateurs` (`IdUtilisateurs_Utilisateurs`, `Nom_Utilisateurs`, `Prénom_Utilisateurs`, `Email_Utilisateurs`, `MotDePasse_Utilisateurs`, `Rôle_Utilisateurs`) VALUES
(1, 'Delecroix', 'Alexis', 'd-alexis@hotmail.fr', 'humbleGepeto', '[value-5]'),
(2, 'François', 'Jean-Pierre', 'jeanpierrefrancois49@gmail.com', 'jefaiscommejaienvie', '[value-5]'),
(3, 'Bahloul', 'Liza', 'liza.bahloul@gmail.com', 'devWeb', '[value-5]'),
(4, 'Asloum', 'Sana', 'sana.asloum@gmail.com', 'chutejedors', '[value-5]');

INSERT INTO `FilmsFavoris` (`IdUtilisateurs_Utilisateurs`, `Idfilms_Fillms`) VALUES
(1, 5),
(4, 6),
(3, 7),
(2, 8);

INSERT INTO `Jouer` (`Idfilms_Fillms`, `Idacteurs_actrices_Acteurs`, `Rôle_Acteurs`) VALUES
(5, 21, 'Principal'),
(5, 22, 'Secondaire'),
(6, 24, 'Principal'),
(6, 26, 'Principal'),
(7, 27, 'Secondaire'),
(7, 28, 'Secondaire'),
(7, 29, 'Principal'),
(8, 21, 'Principal'),
(8, 26, 'Principal');

INSERT INTO `Réaliser` (`Idfilms_Fillms`, `IdRéalisateurs_Réalisateurs`) VALUES
(5, 1),
(6, 2),
(7, 3),
(8, 4);