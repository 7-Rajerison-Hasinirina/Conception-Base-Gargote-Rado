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