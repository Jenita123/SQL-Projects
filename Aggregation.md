## Aggregate function

* COUNT()
* MIN()
* MAX()
* AVG()
* SUM()

Test_Table
new_id new_cat
100     A
200     B 
200     B
300     C
500     D
500     D
700     E

new_id  Row_Number Rank  Dense_Rank Percent_Rank
100       1         1        1         0
200       2         2        2         0.16
200       3         2        2         0.16
300       4         4        3         0.50
500       5         5        4         0.66
500       6         5        4         0.66
700       7         7        5           1

 ** Window Function**
  * Aggregation
  * Ranking
  * Value/Analytics
 
**  * AAgregation**
  * select new_id, new_cat,
  * SUM(new_id) over (partition by new_cat order by new_id) AS "total" from test_table;
 
  * SUM(new_id) over (order by new_id rows between unbounded preceding and unbounded following) As "total" from test table;
 
 ** * Ranking Function**
    Select new_id,
  * row_number() over (order by new_id) As "row_number",
  * rank() over (order by new_id) As "Rank",
  * dense_rank() over(order by new_id) As "dense_rank",
  * percent_rank() over (order by new_id) As "perent_rank"
  * FROM test_table

  *** Analytics Function**
    Select new_id,
  * First_value(new_id) over (order by new_id) as "First_Value",
  * Last_value(new_id) over (order by new_id) as "last_value",
  * Lead(new_id) over (order by new_id) as "Lead",
  * Lag(new_id) over (order by new_id) as "lag"
  * From test table

  * First_value  Last_value Lead  Lag
  * 100          100        200   null
  * 100          200        200   100
  * 100          200        300   200
  * 100          300        500   200
  * 100          500        500   300
  * 100          500        700   500
  * 100          700        null  500
    
IF MY VALUE WANT FIRST TWO ROWS NULL VALUE
  * Select new_id,
  * Lead (new_id, 2) over (order by new_id) AS "Lead_by2",
  * Lag (new_id,2) over (order by new_id) As "Lag_by2"
  * from test table
  
