USE sports_analytics;

 -- Selecciona las victorias máximas y mínimas para cada equipo diferente en la tabla de seasons.
 
 # Dado que no hay información sobre las victorias en la tabla seasons, entiendo que la consulta he de hacerla sobre la tabla stats. Procedo:
 
 
 SELECT DISTINCT team_id, MAX(w), MIN(w)
	FROM stats; # Esta consulta me devuelve un error 1140, que sugiere que me falta una función llamada GROUP BY. Consulto documentación para resolver el ejercicio.
    
 SELECT DISTINCT team_id, MAX(w), MIN(w)
	FROM stats
    GROUP BY team_id;
 
 -- Obtén los primeros 10 resultados de la tabla de teams
 
SELECT *
	FROM teams
    LIMIT 10;
    
 -- Selecciona todos los datos de los equipos que tengan entre 20 y 30 victorias de la tabla stats.
 
 SELECT *
	FROM stats
    WHERE w BETWEEN 20 AND 30;
 
 -- Realiza un cuenteo de número total de equipos que existende la tabla teams.
 
 SELECT COUNT(*)
	FROM teams;
 
 -- Calcula la media de todos los puntos conseguidos de la tabla stats
 
 SELECT AVG(pts) AS media_de_puntos
	FROM stats;
 
 -- Selecciona el máximo de victorias, máximo de puntos y la diferencia entre el máximo de puntos con la media de puntos como diferencia_media de la tabla stats.
 
 SELECT MAX(w) AS maximo_victorias, MAX(pts) AS maximo_puntos,  (MAX(pts) - AVG(pts)) AS diferencia_media
	FROM stats;
 