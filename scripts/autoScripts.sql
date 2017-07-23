\c indexed_cars;

/*
To add an index:

CREATE INDEX [index name]
  ON [table name] ([column name(s) index]);
*/

CREATE INDEX LAMB ON car_models (make_code);

CREATE INDEX YEAR ON car_models ( year );

--Run a query to get a list of all make_title values from the car_models table where the make_code is 'LAM', without any duplicate rows, and note the time somewhere. (should have 1 result)

SELECT DISTINCT make_title FROM car_models WHERE make_code = 'LAM';
--28.637ms  --car_modelIndex--> 1.432ms --yearIndex--> 1.248ms


--Run a query to list all model_title values where the make_code is 'NISSAN', and the model_code is 'GT-R' without any duplicate rows, and note the time somewhere. (should have 1 result)

SELECT DISTINCT model_title FROM car_models WHERE make_code = 'NISSAN' AND model_code = 'GT-R';
--23.684ms --car_modelIndex--> 1.297ms --yearIndex--> 1.202ms

--Run a query to list all make_code, model_code, model_title, and year from car_models where the make_code is 'LAM', and note the time somewhere. (should have 1360 rows)

SELECT make_code, model_code, model_title, year FROM car_models WHERE make_code ='LAM';
--25.861ms --car_modelIndex--> .953ms --yearIndex--> .958ms

--Run a query to list all fields from all car_models in years between 2010 and 2015, and note the time somewhere (should have 78840 rows)

SELECT * FROM car_models WHERE year >= 2010 AND year <= 2015;
--71.283ms --car_modelIndex--> 79.586ms --yearIndex--> 63.646ms

--Run a query to list all fields from all car_models in the year of 2010, and note the time somewhere (should have 13140 rows)

SELECT * FROM car_models WHERE year = 2010;
--36.347ms --car_modelIndex--> 37.785ms --yearIndex--> 12.713ms