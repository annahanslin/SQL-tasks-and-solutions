WITH cte AS 
(	
	SELECT 
		e.*
		, ROW_NUMBER() OVER (ORDER BY SCORE DESC) AS rn
		, LAG(score) OVER (ORDER BY SCORE DESC) AS prev_res
	FROM [dbo].[t_exam_result] e
	
 )

 SELECT a.id, a.score 
 FROM cte a
	JOIN cte b

	-- candidate's score is the same like min pass score
	ON a.score = (SELECT score FROM cte WHERE cte.rn = 10)

	-- there is at least one more candidate than is planned to take
	AND b.prev_res = a.score AND b.rn = 11
	AND b.score = a.score 
 GROUP BY a.id, a.score 