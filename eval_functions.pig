-- AVG, SUM, COUNT
grouped = GROUP students ALL;
summary = FOREACH grouped GENERATE 
    COUNT(students) AS total_students,
    AVG(students.marks) AS avg_marks,
    SUM(students.marks) AS total_marks;

DUMP summary;
