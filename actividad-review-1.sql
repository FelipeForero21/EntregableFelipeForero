-- LUIS FELIPE FORERO PAEZ

-- Cordial saludo compañeros,

-- Cliente:
-- Como cliente tengo la necesidad de crear una base de datos que me permita almacenar la información de los estudiantes, materias y notas obtenidas por los estudiantes sobre las materias.

-- Se deben insertar en la base de datos 10 estudiantes
-- Se deben registrar 10 materias
-- Cada estudiante deberá tener como mínimo 3 materias asociadas.

CREATE TABLE estudiantes (
    id_estudiante INT PRIMARY KEY AUTO_INCREMENT,
    nombre_completo VARCHAR(45) NOT NULL
    );

-- INSERTAMOS LOS DATOS A ESA TABLA
INSERT INTO estudiantes (id_estudiante, nombre_completo ) VALUES
(1, 'Juan'),
(2, 'María'),
(3, 'Carlos'),
(4, 'Ana'),
(5, 'Luis'),
(6, 'Laura'),
(7, 'Pedro'),
(8, 'Sofía'),
(9, 'Diego'),
(10, 'Elena');



CREATE TABLE materias (
    id_materia INT PRIMARY KEY AUTO_INCREMENT,
    materia VARCHAR(45) NOT NULL
);

-- Insertar datos de materias
INSERT INTO materias (id_materia, materia) VALUES
(1, 'Matemáticas'),
(2, 'Ciencias'),
(3, 'Historia'),
(4, 'Literatura'),
(5, 'Inglés'),
(6, 'Programación'),
(7, 'Arte'),
(8, 'Economía'),
(9, 'Geografía'),
(10, 'Física');

-- Crear tabla de Notas
CREATE TABLE notas (
    id_estudiante INT,
    id_materia INT,
    nota FLOAT,
    PRIMARY KEY (id_estudiante, id_materia),
    FOREIGN KEY (id_estudiante) REFERENCES estudiantes(id_estudiante),
    FOREIGN KEY (id_materia) REFERENCES materias(id_materia)
);

-- Insertar notas para cada estudiante con al menos 3 materias asociadas
INSERT INTO notas (id_estudiante, id_materia, nota) VALUES
(1, 1, 85), (1, 2, 78), (1, 3, 90),
(2, 4, 88), (2, 5, 82), (2, 6, 75),
(3, 7, 92), (3, 8, 85), (3, 9, 78),
(4, 1, 90), (4, 2, 84), (4, 3, 87),
(5, 4, 80), (5, 5, 76), (5, 6, 89),
(6, 7, 91), (6, 8, 83), (6, 9, 88),
(7, 1, 85), (7, 2, 77), (7, 3, 91),
(8, 4, 89), (8, 5, 80), (8, 6, 82),
(9, 7, 93), (9, 8, 88), (9, 9, 79),
(10, 1, 88), (10, 2, 81), (10, 3, 86);

