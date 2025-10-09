IMPORT '/home/kartik/BDA_EVAL3/main/pig_scripts/load_students.pig';

-- Bag of tuples: Group by gender
gender_group = GROUP students BY gender;

result = FOREACH gender_group GENERATE
    group AS gender,
    students AS student_bag;   -- Bag of tuples

DUMP result;
