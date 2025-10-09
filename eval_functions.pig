IMPORT '/home/kartik/BDA_EVAL3/main/pig_scripts/load_students.pig';

-- Group all rows together
grouped = GROUP students ALL;

-- Flatten the bag so AVG/SUM/COUNT work on marks field
summary = FOREACH grouped GENERATE 
    COUNT(students)        AS total_students,
    AVG(students.marks)    AS avg_marks,
    SUM(students.marks)    AS total_marks;

DUMP summary;
STORE summary INTO '/user/kartik/output/summary' USING PigStorage(',');
