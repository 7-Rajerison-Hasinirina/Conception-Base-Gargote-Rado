CREATE TABLE commande(
    id SERIAL PRIMARY KEY,
    description TEXT,
    date DATE NOT NULL
);

INSERT INTO commande( date) VALUES
('2026-10-16');

CREATE TABLE detail_commande(
    id SERIAL PRIMARY KEY,
    id_commande INTEGER NOT NULL,
    id_plat INTEGER NOT NULL,
    quantite NUMERIC(10,2),
    prix INTEGER,
    FOREIGN KEY (id_commande) REFERENCES commande(id),
    FOREIGN KEY (id_plat) REFERENCES plats(id)
);

INSERT INTO detail_commande(id_commande, id_plat, quantite, prix) VALUES
(1,4, 2, 8000),
(1,5, 2, 5000),
(2,5, 3, 5000);

