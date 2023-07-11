# Bdd Marvel

Stocker et manipuler des données dans une base de données.

![img_html](./img/marvel.jpeg)

## Contexte du projet

J'envisage de faire créer un site où les utilisateurs devront se connecter pour faire différentes opérations de recherches à propos des films, des acteurs/actrices ou des réalisateurs.  
Par contre, seul l'administrateur pourra ajouter, modifier ou supprimer des données. Pour chaque entrée dans la base de données, il y aura la date de création et de modification.

Mais la partie site web n'est pas pour tout de suite 😃

Avant celà, j'ai besoin d'une base de données afin de stocker des données appartenant à l'Univers Cinématographique Marvel.

## Modalités pédagogiques

### Structure de la base de donnée relationnelle

*Les films*  
Un film comporte un titre, un ou plusieurs acteurs, un réalisateur, une durée et l'année de sa sortie.

*Les acteurs, actrices*  
Nom, prénom, rôle et date de naissance.

*Les réalisateurs*  
Nom et prénom.

*Les utilisateurs*  
Nom, prénom, email, mot de passe, rôle et liste des films préférés.

### Les requêtes

Merci de me fournir ce jeu de requêtes pour tester la bdd :


- les titres et dates de sortie des films du plus récent au plus ancien
```sql
SELECT Titre_Fillms, AnnéeDeSortie_Fillms FROM `Fillms` order by AnnéeDeSortie_Fillms ASC;
```


- les noms, prénoms et âges des acteurs ou actrices de plus de 30 ans dans l'ordre alphabétique
```sql
SELECT Nom_Acteurs, Prénom_Acteurs, TIMESTAMPDIFF(YEAR, DateDeNaissance_Acteurs, CURDATE()) AS Age
FROM Acteurs
WHERE TIMESTAMPDIFF(YEAR, DateDeNaissance_Acteurs, CURDATE()) > 30
ORDER BY Nom_Acteurs, Prénom_Acteurs;
```


- la liste des actrices ou acteurs principaux pour un film donné
```sql
SELECT `Acteurs`.*, `Jouer`.*, `Fillms`.*
FROM `Acteurs` 
	LEFT JOIN `Jouer` ON `Jouer`.`Idacteurs_actrices_Acteurs` = `Acteurs`.`Idacteurs_actrices_Acteurs` 
	LEFT JOIN `Fillms` ON `Jouer`.`Idfilms_Fillms` = `Fillms`.`Idfilms_Fillms`
       WHERE `Jouer`.`Rôle_Acteurs` = 'Principal'AND `Titre_Fillms` = 'Thor';
```



- la liste des films pour une actrice ou un acteur donné
```sql
SELECT `Fillms`.*, `Jouer`.*, `Acteurs`.*
FROM `Fillms` 
	LEFT JOIN `Jouer` ON `Jouer`.`Idfilms_Fillms` = `Fillms`.`Idfilms_Fillms` 
	LEFT JOIN `Acteurs` ON `Jouer`.`Idacteurs_actrices_Acteurs` = `Acteurs`.`Idacteurs_actrices_Acteurs`
    
   WHERE `Acteurs`.`Idacteurs_actrices_Acteurs`= '21';

```


```sql
SELECT `Fillms`.*, `Jouer`.*, `Acteurs`.*
FROM `Fillms` 
	LEFT JOIN `Jouer` ON `Jouer`.`Idfilms_Fillms` = `Fillms`.`Idfilms_Fillms` 
	LEFT JOIN `Acteurs` ON `Jouer`.`Idacteurs_actrices_Acteurs` = `Acteurs`.`Idacteurs_actrices_Acteurs`
    
   WHERE `Fillms`. `Idfilms_Fillms`= '8';
   ```


- ajouter un film
```sql
INSERT INTO `Fillms`(`Titre_Fillms`, `Durée_Fillms`, `AnnéeDeSortie_Fillms`)
VALUES ('Captain America','02:28:00','2016:04:18')
```


- ajouter une actrice ou un acteur
```sql
INSERT INTO `Acteurs`( `Nom_Acteurs`, `Prénom_Acteurs`, `DateDeNaissance_Acteurs`)
VALUES ('Cavill','Henry ','1983/05/05')
```


- modifier un film
```sql
UPDATE Fillms SET  Titre_Fillms= 'Thordu', AnnéeDeSortie_Fillms= '2029:02:12'
WHERE `Idfilms_Fillms`= 5;
```


- supprimer une actrice ou un acteur
```sql
DELETE FROM Acteurs WHERE Idacteurs_actrices_Acteurs=31
```


- afficher les 3 derniers acteurs/actrices ajouté(e)s
```sql
SELECT Nom_Acteurs,Prénom_Acteurs FROM Acteurs ORDER BY Idacteurs_actrices_Acteurs DESC LIMIT 3;
```
​
### Contraintes

- utiliser AnalyseSi
- MySQL

## Modalités d'évaluation

Vos requêtes seront executées après avoir importé la bdd dans votre image docker.

## Livrables

Un dépôt GitHub contenant dans l'ordre :
- l'environnement docker
- le dictionnaire de données
- MCD
- MPD
- MLD
- un fichier au format *sql* (incluant quelques données)
- le jeu de requêtes dans le *README.md*

## Deadline

5 jours.

## Ressources

- environnement docker fourni
- [Comprendre les bases de données](https://www.base-de-donnees.com/comprendre-bases-de-donnees/)
- [Modèle Conceptuel des Données](https://www.base-de-donnees.com/mcd/)

## Authors

* [Nicolas Herbez](https://github.com/nicolas-herbez)
#   m a r v e l 
 
 


SELECT AGE(CURRENT_DATE, DateDeNaissance_Acteurs) FROM Acteurs

COUNT(Acteurs) WHERE DATEDIFF(CURRENT_DATE, .DateDeNaissance_Acteurs)=30;
