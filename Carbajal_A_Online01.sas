DATA Frog;
INPUT Name $ Weight Jump1 Jump2 Jump3;
AverageJump=(Jump1+Jump2+Jump3)/3;
DATALINES;
Lucky 2.3 1.9 2.3 3.0
Spot 4.6 2.5 3.1 0.5
Tubs 7.1 2.2 3.1 3.8
Hop 4.5 3.2 1.9 2.6
Noisy 3.8 1.3 1.8 1.5
Winner 5.7 2.2 1.3 2.8
;
PROC PRINT DATA=Frog;
VAR Name Weight Jump1 Jump2 Jump3 AverageJump;
PROC MEANS DATA=Frog mean MAXDEC=2;
VAR Jump1 Jump2 Jump3 AverageJump;
OUTPUT OUT=Frog mean=;
PROC PRINT DATA=Frog;
VAR Jump1 Jump2 Jump3;
RUN;