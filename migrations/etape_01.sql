CREATE DATABASE gargote;
\c gargote;

CREATE TABLE plats(
    id SERIAL PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    prix INTEGER 
);

INSERT INTO plats( nom, prix) VALUES
( 'Romazava', 7000),
( 'Ravitoto sy henakisoa', 8000),
('Akoho sy voanio', 8500),
( 'Mi sao', 8000),
( 'Soupe chinoise', 5000),
( 'Mofo gasy (les 4)', 1000),
( 'Ranon apango', 500);



