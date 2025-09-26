lines = LOAD '/user/kartik/input/words.csv' USING PigStorage(' ') AS (word:chararray);

-- Flatten each word
words = FOREACH lines GENERATE FLATTEN(TOKENIZE(word)) AS word;

-- Group and count
grouped = GROUP words BY word;
wordcount = FOREACH grouped GENERATE group, COUNT(words);

DUMP wordcount;
