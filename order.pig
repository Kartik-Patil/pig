IMPORT '/home/kartik/BDA_EVAL3/main/pig_scripts/load_students.pig';
-- ORDER: Order by marks descending
ordered = ORDER students BY marks DESC;

DUMP ordered;

STORE ordered INTO '/user/kartik/output/summary' USING PigStorage(',');
