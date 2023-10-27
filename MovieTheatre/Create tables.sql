CREATE TABLE t_showtimes
(
  show_id INT 
, m_name VARCHAR(100) -- movie name
, start_time TIME -- movie starts
, duration_min INT -- movie's duration
PRIMARY KEY(show_id)
);

CREATE TABLE t_visitors
(
  visitor_id INT 
, came_at TIME -- time when visitor came to cashier
PRIMARY KEY(visitor_id)
);



