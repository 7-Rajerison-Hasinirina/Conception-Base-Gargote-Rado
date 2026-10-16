CREATE TABLE categorie(
    id SERIAL PRIMARY KEY,
    nom VARCHAR(100) NOT NULL
);

INSERT INTO categorie(nom) VALUES
( 'plats malagasy'),
( 'plats chinois'),
('soupes'),
( 'desserts et gouter'),
( 'boissons');

ALTER TABLE plats ADD COLUMN id_categorie INTEGER REFERENCES categorie(id);

UPDATE plats SET id_categorie = 1 WHERE id = 1;
UPDATE plats SET id_categorie = 1 WHERE id = 2;
UPDATE plats SET id_categorie = 1 WHERE id = 3;
UPDATE plats SET id_categorie = 2 WHERE id = 4;
UPDATE plats SET id_categorie = 3 WHERE id = 5;
UPDATE plats SET id_categorie = 4 WHERE id = 6;
UPDATE plats SET id_categorie = 5 WHERE id = 7;

ALTER TABLE plats ALTER COLUMN id_categorie SET NOT NULL;
