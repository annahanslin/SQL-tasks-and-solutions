To get to a training program candidates should pass the entrance exam.
Results are saved to the table t_exam_result(id, score).

There are only 10 places in the training available, so only the best candidates will get the place. From the score result table will be selected top 10 people with best results and minimum score from this list is named 'passing score'.

If it happens that there are more than 10 people who have gained at least minimum passing score, organisers have decided to organise interviews for those candidates who have gained a minimum passing score.

Make a query which will show the id of candidates which were invited for an interview.

Example 1:
Passing score = 87 (10th result). But the 11th result is also 87, so candidates with id=(10, 21, 74, 63) will be invited for an interview.  
----------------
    |id	  |score
----------------
1   |14   |94
2   |60   |94
3   |31   |92
4   |77   |92
5   |85   |89
6   |92   |88
7   |29   |88
8   |10   |87
9   |21   |87
10  |74   |87
11  |63   |87
12  |69   |85

Example 2:
Passing score = 56 (10th result). The 11th result is 52, so candidates with best scores are 10 and no need to organise the interview. Solution query's result will be empty.
----------------
     |id	score
-----------------
1    |14   |94
2    |13   |84
3    |9    |83
4    |15   |80
5    |12   |76
6    |5    |75
7    |8    |72
8    |6    |70
9    |2    |65
10   |10   |56
11   |11   |52
12   |7    |50
13   |1    |30


---------------------------------------
File description
---------------------------------------
Test solution
1. Execute script from insertTest1.sql. Then execute script Solution.sql. 
Expected result:

id	|score
-----------
10	|87
21	|87
74	|87
63	|87


2. Execute script from insertTest2.sql. Then execute script Solution.sql. 
Expected result:
id	|score
-----------
5	|30
12	|30

3. Execute script from insertTest3.sql. Then execute script Solution.sql. 
Expected result:
empty


4. For random tests: this script will generate 15 rows with random score [0;100])
   EXEC [dbo].[p_insert_ExamRes] 15

