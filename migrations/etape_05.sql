CREATE TABLE salle(
    id SERIAL PRIMARY KEY,
    nom VARCHAR(10)
);

CREATE TABLE tables (
    id SERIAL PRIMARY KEY,
    numero VARCHAR(10),
    id_salle INTEGER NOT NULL,
    FOREIGN KEY (id_salle) REFERENCES salle(id)
);

CREATE TABLE serveur(
    id SERIAL PRIMARY KEY,
    nom VARCHAR(100),
    id_salle INTEGER NOT NULL,
    FOREIGN KEY (id_salle) REFERENCES salle(id)
);

CREATE TABLE status_commande(
    id SERIAL PRIMARY KEY,
    libelle VARCHAR(10)
);

CREATE TABLE commande_serveur(
    id SERIAL PRIMARY KEY,
    id_commande INTEGER NOT NULL,
    id_serveur INTEGER NOT NULL,
    date_heure TIMESTAMP NOT NULL,
    id_status INTEGER NOT NULL,
    FOREIGN KEY (id_commande) REFERENCES commande(id),
    FOREIGN KEY (id_serveur) REFERENCES serveur(id),
    FOREIGN KEY (id_status) REFERENCES status_commande(id)
);


INSERT INTO salle(nom) VALUES
('Salle 1');

INSERT INTO tables(numero, id_salle) VALUES
('Table 1', 1),
('Table 2', 1),
('Table 3', 1),
('Table 4', 1),
('Table 5', 1),
('Table 6', 1),
('Table 7', 1),
('Table 8', 1);



INSERT INTO serveur(nom, id_salle) VALUES
('Njaka Rakoto', 1),
('Lalao Rasoa', 1);

INSERT INTO status_commande(libelle) VALUES
('En cours'),
('Terminé'),
('Annulé');

INSERT INTO commande_serveur(id_commande, id_serveur, date_heure, id_status) VALUES
(1, 1, '2024-06-01 12:00:00', 1),
(2, 2, '2024-06-01 12:30:00', 2),
(3, 1, '2024-06-01 13:00:00', 3);

