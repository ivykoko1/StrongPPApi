CREATE TABLE User(id INT(6) NOT NULL AUTO_INCREMENT PRIMARY KEY, username VARCHAR(25), pass VARCHAR(50) NOT NULL, registered_on DATETIME);
CREATE TABLE Exercise(id INT(6) NOT NULL AUTO_INCREMENT PRIMARY KEY,
	ex_name VARCHAR(50) NOT NULL,
	img_url VARCHAR NOT NULL);
CREATE TABLE Entrenamiento(id INT(6) NOT NULL AUTO_INCREMENT PRIMARY KEY, fecha DATETIME NOT NULL, user_id INT(6) NOT NULL, FOREIGN KEY (user_id) REFERENCES User(id) ON DELETE CASCADE);
CREATE TABLE Serie(id INT(6) NOT NULL AUTO_INCREMENT PRIMARY KEY, id_entrenamiento INT(6) NOT NULL REFERENCES Entrenamiento(id) ON DELETE CASCADE, id_ejercicio INT(6) NOT NULL REFERENCES Exercise(id) ON DELETE CASCADE);
CREATE TABLE Repeticion(id INT(10) NOT NULL AUTO_INCREMENT PRIMARY KEY, id_serie INT(6) NOT NULL REFERENCES(Serie(id), orden INT(3), peso FLOAT(4));
CREATE TABLE User_Session(id INT(10) NOT NULL AUTO_INCREMENT PRIMARY KEY, token VARCHAR(50) NOT NULL, user_id INT(6) NOT NULL REFERENCES User(id), start_time DATETIME, timeout_s INT);