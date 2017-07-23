-- db indexed_cars
DROP TABLE IF EXISTS car_models;

CREATE TABLE IF NOT EXISTS car_models
(
 id serial PRIMARY KEY,
 make_code character varying(125) NOT NULL,
 make_title character varying(125) NOT NULL,
 model_code character varying(125) NOT NULL,
 model_title character varying(125) NOT NULL,
 year integer NOT NULL
);

CREATE INDEX make_index ON car_models (make_code);

CREATE INDEX YEAR ON car_models ( year );
