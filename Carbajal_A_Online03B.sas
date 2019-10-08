DATA Questionnaire;
INPUT Question1 1 Question2 2 Question3 3 Question4 4 Question5 5;
LABEL Question1 = 'Out of the four colors, red, blue, green, and yellow, what is your favorite?'
Question2 = 'What is your favorite season?'
Question3 = 'What is your favorite subjuect out of the four main ones?'
Question4 = 'Out of the four elements, earth, fire, wind, and water, what is your favorite?'
Question5 = 'Are you a fan of chicken, beef, pork, or fish?';
DATALINES;
14223
32432
21111
43344
32223
31432
42143
24211
12323
33432
;
PROC FORMAT;
VALUE QuesOne 1 = 'Red'
            2 = 'Blue'
            3 = 'Green'
            4 = 'Yellow';
VALUE QuesTwo 1 = 'Spring'
            2 = 'Summer'
            3 = 'Fall'
            4 = 'Winter';
VALUE QuesThr 1 = 'English'
            2 = 'Math'
            3 = 'Science'
            4 = 'History';
VALUE QuesFou 1 = 'Earth'
            2 = 'Fire'
            3 = 'Wind'
            4 = 'Water';
VALUE QuesFiv 1 = 'Chicken'
            2 = 'Beef'
            3 = 'Pork'
            4 = 'Fish';
PROC PRINT DATA=Questionnaire;
VAR Question1 Question2 Question3 Question4 Question5;
FORMAT Question1 QuesOne.
       Question2 QuesTwo.
       Question3 QuesThr.
       Question4 QuesFou.
       Question5 QuesFiv.;
Run;
PROC FREQ DATA=Questionnaire;
TABLE Question1;
FORMAT Question1 Quesone.;
RUN;
PROC GCHART DATA=Questionnaire;
Title "Out of the four colors, red, blue, green, and yellow, what is your favorite?";
FORMAT Question1 QuesOne.;
pie Question1;
RUN;
