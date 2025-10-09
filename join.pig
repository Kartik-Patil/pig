IMPORT '/home/kartik/BDA_EVAL3/main/pig_scripts/load_students.pig';


-- JOIN: Students with subject names
student_subjects = JOIN students BY sub_id, subjects BY sub_id;
DUMP student_subjects;

STORE student_subjects INTO '/user/kartik/output/summary' USING PigStorage(',');
