CREATE SCHEMA IF NOT EXISTS bars;

SET search_path TO bars;


CREATE TABLE bars.quartier (
    id_quartier SERIAL PRIMARY KEY,
    nom VARCHAR(30) NOT NULL
);

CREATE TABLE bars.bar (
    id_bar SERIAL PRIMARY KEY,
    nom VARCHAR(30) NOT NULL,
    adresse VARCHAR(60) NOT NULL,
    id_quartier INT NOT NULL CHECK (id_quartier > 0),

    FOREIGN KEY (id_quartier) REFERENCES bars.quartier(id_quartier)
);

CREATE TABLE bars.biere (
    id_biere SERIAL PRIMARY KEY,
    nom VARCHAR(30) NOT NULL,
    degre NUMERIC(3,1) NOT NULL
);

CREATE TABLE bars.prix (
    id_prix SERIAL PRIMARY KEY,
    valeur NUMERIC(5,2) NOT NULL
);

CREATE TABLE bars.reference_de_biere (
    id_reference SERIAL PRIMARY KEY,
    id_bar INT NOT NULL CHECK (id_bar > 0),
    id_biere INT NOT NULL CHECK (id_biere > 0),
    id_prix INT NOT NULL CHECK (id_prix > 0),

    FOREIGN KEY (id_bar) REFERENCES bars.bar(id_bar),
    FOREIGN KEY (id_biere) REFERENCES bars.biere(id_biere),
    FOREIGN KEY (id_prix) REFERENCES bars.prix(id_prix),

    UNIQUE (id_bar, id_biere)
);

