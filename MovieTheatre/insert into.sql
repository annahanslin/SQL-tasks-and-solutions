DELETE FROM t_showtimes;
DELETE FROM  t_visitors;

-- INSERT INTO t_showtimes
INSERT INTO t_showtimes (show_id, m_name , start_time , duration_min) 
VALUES(1, 'ANTERO VAROVAINEN JA ONNENKIVI', '10:00', 120);

INSERT INTO t_showtimes(show_id, m_name , start_time , duration_min)
VALUES (2, 'DUMB MONEY', '12:00', 115);

INSERT INTO t_showtimes(show_id, m_name , start_time , duration_min)
VALUES(3, 'KILLERS OF THE FLOWER MOON', '12:15', 100);

INSERT INTO t_showtimes(show_id, m_name , start_time , duration_min)
VALUES(4, 'KUOLLEET LEHDET', '14:00', 100);

INSERT INTO t_showtimes(show_id, m_name , start_time , duration_min)
VALUES(5, 'DUMB MONEY', '14:30', 115);

INSERT INTO t_showtimes(show_id, m_name , start_time , duration_min)
VALUES(6, 'LEO', '15:00', 120);

INSERT INTO t_showtimes(show_id, m_name , start_time , duration_min)
VALUES(7, 'MANAAJA: USKON MERKKI', '17:00', 200);

INSERT INTO t_showtimes(show_id, m_name , start_time , duration_min)
VALUES(8, 'KILLERS OF THE FLOWER MOON', '19:00', 100);

INSERT INTO t_showtimes(show_id, m_name , start_time , duration_min)
VALUES(9, 'KUOLLEET LEHDET', '21:00', 100);

-- INSERT INTO t_visitors
INSERT INTO t_visitors (visitor_id, came_at) VALUES(1, '9:50');
INSERT INTO t_visitors (visitor_id, came_at) VALUES(2, '10:00'); 
INSERT INTO t_visitors (visitor_id, came_at) VALUES(3, '11:20');
INSERT INTO t_visitors (visitor_id, came_at) VALUES(4, '13:00');
INSERT INTO t_visitors (visitor_id, came_at) VALUES(5, '18:50');
