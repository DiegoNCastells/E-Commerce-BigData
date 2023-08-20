-- Tabla de Hechos - Evento
CREATE TABLE Evento (
    event_time DATETIME,
    event_type VARCHAR(50),
    product_id INT,
    user_id INT,
    user_session VARCHAR(100),
    price DECIMAL(10, 2),
    PRIMARY KEY (event_time, user_session),
    FOREIGN KEY (product_id) REFERENCES Producto(product_id),
    FOREIGN KEY (user_id) REFERENCES Usuario(user_id),
    FOREIGN KEY (user_session) REFERENCES Sesion(user_session)
);

-- Tablas de Dimensiones
CREATE TABLE Producto (
    product_id INT PRIMARY KEY,
    category_id INT,
    category_code VARCHAR(50),
    brand VARCHAR(50)
);

CREATE TABLE Usuario (
    user_id INT PRIMARY KEY
);

CREATE TABLE Sesion (
    user_session VARCHAR(100) PRIMARY KEY
);
