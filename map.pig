IMPORT '/home/kartik/BDA_EVAL3/main/pig_scripts/load_students.pig';

-- Map Example (roll -> name)
student_map = FOREACH students GENERATE
    roll,
    TOTUPLE(name) AS details;

DUMP student_map;
