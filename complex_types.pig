-- Bag of tuples: Group by gender
gender_group = GROUP students BY gender;

result = FOREACH gender_group GENERATE
    group AS gender,
    students AS student_bag;   -- Bag of tuples

DUMP result;

-- Map Example (roll -> name)
student_map = FOREACH students GENERATE
    roll,
    TOTUPLE(name) AS details;

DUMP student_map;
