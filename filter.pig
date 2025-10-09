-- Import loader script
IMPORT '/home/kartik/BDA_EVAL3/main/pig_scripts/load_students.pig';

-- Remove header row (assume roll numbers start from 1)
students_noheader = FILTER students BY roll > 0;

-- Convert marks to int safely
students_casted = FOREACH students_noheader GENERATE
    roll,
    name,
    ( (IsEmpty(marks) OR marks == '') ? 0 : (int)marks ) AS marks;

-- FILTER: Students with marks > 70
high_scorers = FILTER students_casted BY marks > 70;

-- Debug output
DUMP high_scorers;

-- Store result
STORE high_scorers INTO '/user/kartik/output/summary'
    USING PigStorage(',');

