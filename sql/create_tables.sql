CREATE TABLE people(
  id INT,
  age TINYINT NOT NULL,
  cat_veh TINYINT,
  place TINYINT,
  security TINYINT NOT NULL,
  gravity TINYINT,
  PRIMARY KEY(id)
);

CREATE TABLE athmo(
  id_athmo TINYINT,
  type VARCHAR(20),
  PRIMARY KEY(id_athmo)
);

CREATE TABLE agglo(
  id_agglo TINYINT,
  type VARCHAR(20),
  PRIMARY KEY(id_agglo)
);

CREATE TABLE lum(
  id_lum TINYINT,
  type VARCHAR(20),
  PRIMARY KEY(id_lum)
);

CREATE TABLE surf(
  id_surf TINYINT,
  type VARCHAR(20),
  PRIMARY KEY(id_surf)
);

CREATE TABLE accident(
  id_surf TINYINT,
  id_agglo TINYINT,
  id_lum TINYINT,
  id_athmo TINYINT,
  num_acc VARCHAR(50),
  lat DECIMAL(15,13) NOT NULL,
  lon DECIMAL(15,13) NOT NULL,
  ville VARCHAR(37),
  date_hour DATETIME NOT NULL,
  PRIMARY KEY(id_surf, id_agglo, id_lum, id_athmo, num_acc),
  FOREIGN KEY(id_surf) REFERENCES surf(id_surf),
  FOREIGN KEY(id_agglo) REFERENCES agglo(id_agglo),
  FOREIGN KEY(id_lum) REFERENCES lum(id_lum),
  FOREIGN KEY(id_athmo) REFERENCES athmo(id_athmo)
);

CREATE TABLE implique(
  id_surf TINYINT,
  id_agglo TINYINT,
  id_lum TINYINT,
  id_athmo TINYINT,
  num_acc VARCHAR(50),
  id INT,
  PRIMARY KEY(id_surf, id_agglo, id_lum, id_athmo, num_acc, id),
  FOREIGN KEY(id_surf, id_agglo, id_lum, id_athmo, num_acc) REFERENCES accident(id_surf, id_agglo, id_lum, id_athmo, num_acc),
  FOREIGN KEY(id) REFERENCES people(id)
);
