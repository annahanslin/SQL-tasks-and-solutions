a Movie theatre
----------------
There is a table with the showtimes in the movie theatre and table with visitors (visitor and arrival time at the cash desk):

t_showtimes
---------------------------------------
show_id 		| unique movieshow id  
m_name  		| movie name
start_time  	|movie starts
duration_min 	| - movie's duration
---------------------------------------

t_visitors
---------------------------------------
visitor_id      |unique visitor_id id 
came_at         |time when the customer came to cashier
---------------------------------------


All movies start in different time.
The last time to buy ticket to a movie show is 10 minutes before start.
Visitors always chose the earliest possible show.

Make a query which shows number of visitors for every movie show where has been at least one visitor:
(show_id, visitors_cnt)

----------------------------------------------------------------------
EXAMPLES
----------------------------------------------------------------------
show_id	|m_name							|start_time		|duration_min
----------------------------------------------------------------------
1		|ANTERO VAROVAINEN JA ONNENKIVI	|10:00			|120
2		|DUMB MONEY						|12:00			|115
3		|KILLERS OF THE FLOWER MOON		|12:15			|100
4		|KUOLLEET LEHDET				|14:00			|100
5		|DUMB MONEY						|14:30			|115
6		|LEO							|15:00			|120
7		|MANAAJA: USKON MERKKI			|17:00			|200
8		|KILLERS OF THE FLOWER MOON		|19:00			|100
9		|KUOLLEET LEHDET				|21:00			|100
------------------------------------------------------------------------

visitor_id	|came_at
--------------------
1			|09:50
2			|10:00
3			|11:20
4			|13:00
5			|18:50
--------------------

So:
visitor1 -> showid=1
visitor2 -> showid=2 (he cant not anymore buy ticket for the first show because ticket sales has ended at 9:50 - 10 min before show starts)
visitor2 -> showid=3
visitor4 -> showid=3
visitor5 -> showid=8

=> Result is
show_id| visitors_cnt
1	   | 1
2	   | 1
3	   | 2
8	   | 1


