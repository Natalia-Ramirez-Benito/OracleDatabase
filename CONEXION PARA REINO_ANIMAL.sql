CREATE TYPE tFamilia AS OBJECT (
  idFamilia INT,
  familia VARCHAR2(50)
);

CREATE TABLE FAMILIA OF tFamilia;
ALTER TABLE FAMILIA ADD PRIMARY KEY (idFamilia);

insert into familia values (1, 'Aves');
insert into familia values (2, 'Mamíferos');
insert into familia values (3, 'Peces');

SELECT * FROM familia;

CREATE TYPE tNombres IS VARRAY(20) OF VARCHAR2(50);

CREATE TYPE tAnimal AS OBJECT (
  idAnimal NUMBER,
  idFamilia NUMBER,
  Animal VARCHAR2(50),
  nombres tNombres,
  MEMBER FUNCTION ejemplares RETURN VARCHAR2
) NOT FINAL;

CREATE OR REPLACE TYPE BODY tAnimal AS
  MEMBER FUNCTION ejemplares RETURN VARCHAR2 IS
  BEGIN
    RETURN 'Hay ' || nombres.COUNT || ' animales de la especie ' || Animal;
  END ejemplares;
END;

CREATE TABLE Animal OF tAnimal;

ALTER TABLE Animal ADD PRIMARY KEY (idAnimal);
ALTER TABLE Animal ADD FOREIGN KEY (idFamilia) REFERENCES Familia(idFamilia);

-- Aves
INSERT INTO Animal (idAnimal, idFamilia, Animal, nombres) VALUES (1, 1, 'Garza Real', tNombres('Calíope', 'Izaro'));
INSERT INTO Animal (idAnimal, idFamilia, Animal, nombres) VALUES (2, 1, 'Cigüeña Blanca', tNombres('Perica', 'Clara', 'Miranda'));
INSERT INTO Animal (idAnimal, idFamilia, Animal, nombres) VALUES (3, 1, 'Gorrión', tNombres('Coco', 'Roco', 'Loco', 'Peco', 'Rico'));

-- Mamíferos
INSERT INTO Animal (idAnimal, idFamilia, Animal, nombres) VALUES (4, 2, 'Zorro', tNombres('Lucas', 'Mario'));
INSERT INTO Animal (idAnimal, idFamilia, Animal, nombres) VALUES (5, 2, 'Lobo', tNombres('Pedro', 'Pablo'));
INSERT INTO Animal (idAnimal, idFamilia, Animal, nombres) VALUES (6, 2, 'Ciervo', tNombres('Bravo', 'Listo', 'Rojo', 'Astuto'));

-- Peces
INSERT INTO Animal (idAnimal, idFamilia, Animal, nombres) VALUES (7, 3, 'Pez globo', tNombres('Pepe', 'Burbujitas'));
INSERT INTO Animal (idAnimal, idFamilia, Animal, nombres) VALUES (8, 3, 'Pez payaso', tNombres('Marina', 'Dor'));
INSERT INTO Animal (idAnimal, idFamilia, Animal, nombres) VALUES (9, 3, 'Ángel llama', tNombres('Mandarina'));

select * from animal;

SELECT a.Animal, f.familia, a.ejemplares() AS "Cantidad de ejemplares por animal"
FROM Animal a
JOIN Familia f ON a.idFamilia = f.idFamilia;

