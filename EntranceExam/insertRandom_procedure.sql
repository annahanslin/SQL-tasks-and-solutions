-- Example (will generate 15 rows with random score [0;100])
-- EXEC [dbo].[p_insert_ExamRes] 15

/****** Object:  StoredProcedure [dbo].[p_insert_ExamRes]    Script Date: 25.10.2023 13:47:50 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- inserts @cnt rows with random score from 0 till 100 
CREATE PROCEDURE [dbo].[p_insert_ExamRes] @cnt INT 
AS 
BEGIN
	DELETE FROM t_exam_result;

	DECLARE @i INT;
	SET @i = 1;
    
	WHILE @i<= @cnt
	BEGIN
	   INSERT INTO t_exam_result ( id,score) VALUES(@i,FLOOR(RAND()*(100)))
	   SET @i = @i + 1;
	END;

END;


GO


