DATA Frog;
INPUT Name $ 1-6
      Weight 7-9
      Jump1 10-12
      Jump2 13-15
      Jump3 16-18;
AverageJump=(Jump1+Jump2+Jump3)/3;
DATALINES;
Lucky 2.31.92.33.0
Spot  4.62.53.10.5
Tubs  7.12.23.13.8
Hop   4.53.21.92.6
Noisy 3.81.31.81.5
Winner5.72.21.32.8
;
PROC MEANS DATA=Frog mean;
VAR Weight AverageJump;
RUN;