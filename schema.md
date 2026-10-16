# Conception relationnele
## Niveau 1
### Etaoe 1:
- *Objectifs: on veut avoir la liste des plats*
- Table: plats ( **id**, nom, prix );
- D'apres la consigne :**Les montants sont en ariary, sans centimes : utilisez des entiers.**, j'ai utilié *INTEGER*, et tant que Ariary, on n'a pas besoin que de integer mais en cas de remise , on peut avoir un prix avec des virgules alros je vais utiliser NUMERIC(10,2) pour le prix. mais pourtant , je choisis INTEGER

## Etape 2:
- *objectifs: « Je range mes plats par catégorie : plats malagasy, plats chinois, soupes, desserts, boissons. »*
- Je dois creer une table categorie( **id**, nom );
- j'ai ajoute une colonne id_categorie dans la table plats pour faire le lien entre les deux tables.
- On n'a pas ajoute tout simplement une colonne categorie VARCHAR(50) dans la table plats car si on le fait a chaque fois , peut etre que l'utilisateur fait boisson, autre bosson, boisssons , et on ne peut pas regrouper la meme categorie. on n'a pas de cle unique si c'est pour cela 
- La table plats devient plats (**id**, nom, prix, #id_categorie )

## Etape 3:
- *Objectifs: « J'enregistre les commandes : la date, quels plats, et combien de chaque. »*
- Je cree une table commande( **id**, descirption?, date_heure )
- Je cree une table detail_commande( **id**, #id_commande, #id_plat, quantite, prix )
- je vais placer la quantite dans la table detail_commande

## Etape 4:
- *objectif: « Certains clients sont des habitués, je veux les reconnaître. Mais la plupart sont de passage et je ne leur demande rien. »*
- je vais creer une table client( **id**, nom)
- la cle etranger id_client dans la table commande n'est pas NOT NULL car le client n'est pas obligé etre reconnu 
- Pour ne perdre aucune commande , on fait LEFT JOIN dont la table commande est a la partie gauche 
