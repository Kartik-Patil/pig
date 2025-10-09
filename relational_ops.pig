IMPORT '/home/kartik/BDA_EVAL3/main/pig_scripts/load_students.pig';

-- FILTER: Students with marks > 70
high_scorers = FILTER students BY marks > 70;

-- JOIN: Students with subject names
student_subjects = JOIN students BY sub_id, subjects BY sub_id;



-- ORDER: Order by marks descending
ordered = ORDER students BY marks DESC;

DUMP high_scorers;

DUMP ordered;
