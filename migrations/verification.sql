---etape_01
SELECT * FROM plats;

---etpae_02
SELECT c.nom, COUNT(p.id) AS nombre_de_plats FROM categorie c JOIN plats p ON c.id = p.id_categorie GROUP BY c.nom; 

---etape_03





