DATA Blood_Type;
INFILE '/home/u42026687/my_courses/haticesahinoglu0/Blood_Type_gender.csv' delimiter=',' dsd;
INPUT BloodType $ Gender $;
PROC PRINT DATA=blood_type;
Run;
DATA Female;
SET Blood_Type;
If Gender='f';
RUN;
PROC FREQ DATA=Female;
Title 'Female';
RUN;
DATA Male;
SET Blood_Type;
If Gender='m';
RUN;
PROC FREQ DATA=Male;
Title 'Male';
RUN;