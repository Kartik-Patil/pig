IMPORT '/home/kartik/BDA_EVAL3/main/pig_scripts/load_students.pig';
-- GROUP: Group by subject
grouped = GROUP students BY sub_id;


DUMP grouped;
STORE grouped INTO '/user/kartik/output/summary' USING PigStorage(',');
