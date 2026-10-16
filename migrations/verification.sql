---etape_01 liste de plats avec leur prix
SELECT * FROM plats;

---etpae_02 nombre de plats par categorie
SELECT c.nom, COUNT(p.id) AS nombre_de_plats FROM categorie c JOIN plats p ON c.id = p.id_categorie GROUP BY c.nom; 

---etape_03: montant total de chaque commande
SELECT id_commande, (SUM(quantite * prix )) AS montant_total  FROM detail_commande GROUP BY id_commande ORDER BY id_commande;

---etape_04 liste des commandes avec leurs noms
SELECT co.id , co.description, co.date, cl.nom FROM commande co LEFT JOIN client cl ON co.id_client = cl.id;



