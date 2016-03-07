CREATE DATABASE "Stuff"
  WITH OWNER = postgres
       ENCODING = 'UTF8'
       TABLESPACE = pg_default
       LC_COLLATE = 'C'
       LC_CTYPE = 'C'
       CONNECTION LIMIT = -1;



/* Tablas*/
CREATE TABLE usuario
(
  idusuario integer NOT NULL,
  nombre character varying(25),
  appat character varying(25),
  apmat character varying(25),
  fechanac date,
  email character varying(40),
  CONSTRAINT idusuario PRIMARY KEY (idusuario)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE usuario
  OWNER TO postgres;







CREATE TABLE usuario_pass
(
  idusuario integer,
  password character varying(25),
  CONSTRAINT idusuario_pass FOREIGN KEY (idusuario)
      REFERENCES usuario (idusuario) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE usuario_pass
  OWNER TO postgres;
