students = LOAD '/user/kartik/input/students.csv' USING PigStorage(',') 
           AS (roll:int, name:chararray, age:int, gender:chararray, marks:int, sub_id:int);

subjects = LOAD '/user/kartik/input/subjects.csv' USING PigStorage(',') 
           AS (sub_id:int, sub_name:chararray);


