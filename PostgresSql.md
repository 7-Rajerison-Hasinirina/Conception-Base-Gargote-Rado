# PostgreSQL

## 1. Création de table
```sql
CREATE TABLE etudiant (
    id SERIAL PRIMARY KEY,
    nom VARCHAR(50) NOT NULL,
    prenom VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    date_naissance DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

## 2. Insertion
```sql
INSERT INTO etudiant (nom, prenom, email, date_naissance)
VALUES ('Ali', 'Benali', 'ali@email.com', '2002-05-14');
```

## 3. Sélection
```sql
SELECT * FROM etudiant;
SELECT nom, email FROM etudiant WHERE id = 1;
```

## 4. Update
```sql
UPDATE etudiant
SET nom = 'Amine'
WHERE id = 1;
```

## 5. Delete
```sql
DELETE FROM etudiant WHERE id = 1;
```

## 6. Alter table
```sql
ALTER TABLE etudiant ADD ville VARCHAR(50);
ALTER TABLE etudiant ALTER COLUMN nom TYPE VARCHAR(100);
```

## 7. Clé étrangère
```sql
CREATE TABLE classe (
    id SERIAL PRIMARY KEY,
    nom_classe VARCHAR(50) NOT NULL
);

CREATE TABLE etudiant (
    id SERIAL PRIMARY KEY,
    nom VARCHAR(50) NOT NULL,
    classe_id INT,
    FOREIGN KEY (classe_id) REFERENCES classe(id)
);
```

## 8. View
```sql
CREATE VIEW vue_etudiant AS
SELECT id, nom, email
FROM etudiant;
```

## 9. Cas particulier PostgreSQL
PostgreSQL utilise souvent :
- `SERIAL` pour l’auto-incrément
- `VARCHAR`, `TEXT`, `DATE`, `TIMESTAMP`
- `CURRENT_TIMESTAMP`
- `RETURNING` après insert/update

Exemple :
```sql
INSERT INTO etudiant (nom, email)
VALUES ('Ali', 'ali@email.com')
RETURNING id;
```
