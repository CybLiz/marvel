
Requêtes pour tester la bdd :


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
