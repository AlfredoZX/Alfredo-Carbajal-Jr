DATA FrogJump;
INPUT Weight Jump1;
DATALINES;
2.3 1.9
4.6 2.5
7.1 2.2
4.5 3.2
3.8 1.3
5.7 2.2
;
PROC PLOT DATA=FrogJump;
PLOT Weight*Jump1;
RUN;
PROC UNIVARIATE DATA=FrogJump noprint;
HISTOGRAM Jump1 /
ENDPOINTS = 1.2 TO 3.3 by .3;
RUN;