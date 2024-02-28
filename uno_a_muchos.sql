--LUIS FELIPE FORERO PAEZ


--creacion de tablas
CREATE TABLE
    marcas (
        id INT PRIMARY KEY AUTO_INCREMENT,
        marca VARCHAR(45)
    );

CREATE TABLE
    tipo_vehiculo (
        id INT PRIMARY KEY AUTO_INCREMENT,
        tipo_vehiculo VARCHAR(45),
        marcas_id INT
    );

CREATE TABLE
    vehiculos (
        id INT PRIMARY KEY AUTO_INCREMENT,
        modelo INT (4),
        placa VARCHAR(10) UNIQUE,
        colores_id INT,
        tipo_vehiculo_id INT
    );

CREATE Table
    colores (
        id INT PRIMARY KEY AUTO_INCREMENT,
        color VARCHAR(45)
    )

    -- Insertar datos a tablas
INSERT INTO
    marcas (marca)
VALUES
    ("TOYOTA"),
    ("HONDA");

INSERT INTO
    tipo_vehiculo (tipo_vehiculo)
VALUES
    ("camioneta"),
    ("deportivo");

INSERT INTO
    vehiculos (modelo, placa)
VALUES
    (2023, "HIK266"),
    (2020, "LD868"),
    (1996, "JHD444"),
    (2000, "ASG789"),
    (2024, "AGR546"),
    (2006, "GOP942"),
    (2016, "REM881"),
    (2016, "IAO885"),
    (2023, "CQF694"),
    (2023, "HIA568");

INSERT INTO
    colores (color)
VALUES
    ("blanco"),
    ("negro");

ALTER TABLE vehiculos ADD FOREIGN KEY (colores_id) REFERENCES colores (id)


ALTER Table vehiculos ADD FOREIGN KEY (tipo_vehiculo_id) REFERENCES tipo_vehiculo (id)


ALTER TABLE tipo_vehiculo ADD FOREIGN KEY (marcas_id) REFERENCES marcas (id)

SELECT
    vehiculos.id,
    vehiculos.placa,
    colores.color
FROM
    vehiculos
    INNER JOIN colores
WHERE
    vehiculos.id = colores.id



SELECT
    vehiculos.modelo,
    vehiculos.placa,
    marcas.marca,
    colores.color,
    tipo_vehiculo.tipo_vehiculo
    
FROM
    vehiculos
    INNER JOIN colores
    INNER JOIN marcas
    INNER JOIN tipo_vehiculo
WHERE
    vehiculos.id = colores.id
    AND vehiculos.id = tipo_vehiculo.id

-- modelo
--placa,  marca color tipovehiculo
