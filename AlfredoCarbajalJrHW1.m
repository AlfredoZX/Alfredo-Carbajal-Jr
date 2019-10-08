%% MATH401 HW1
% Alfredo Carbajal Jr
%% 2.8
% a
M = [0.02 0.06 0.1; 0 0.4 0.04; 0.18 0.01 0.1];
D = [200; 180; 175];
P = inv(eye(3)-M)*D
%%
% b If sector 2 change by 1, then sector 3 changes is 2575/64697. If sector
% change by 2, the sector 3 changes is 5150/64697. If sector 2 change by
% -1, then changes is -2575/64697.
syms S(x)
S(x) = [0; x; 0];
inv(eye(3)-M)*S(1)
inv(eye(3)-M)*S(2)
inv(eye(3)-M)*S(-1)
%%
% c
inv(eye(3)-M)
%% 2.18
% Product 1 has a surplus of 825 and Product 2 has a surplus of 1260.
M = [0.1 0.05; 0.06 0.12];
P = [1000; 1500];
D = (eye(2)-M)*P
%% 3.9
%
syms T(a,b) R(p)
T(a,b) = [1 0 a; 0 1 b; 0 0 1];
R(p) = [cos(p) -sin(p) 0; sin(p) cos(p) 0; 0 0 1];
S = [6 4 7; 3 1 1; 1 1 1];
SN = T(8,2)*R(pi/3)*T(-8,-2)*S
scatter(S(1,:),S(2,:),'filled')
hold on
scatter(SN(1,:),SN(2,:),'filled')
axis square
axis ([-10 10 -10 10])
hold off
%% 3.16
% 
syms T(a,b,c) RZ(p)
T(a,b,c) = [1 0 0 a; 0 1 0 b; 0 0 1 c; 0 0 0 1];
RZ(p) = [cos(p) -sin(p) 0 0; sin(p) cos(p) 0 0; 0 0 1 0; 0 0 0 1];
S = [0 -6 3; 3 3 1; 1 1 10; 1 1 1];
Tran = T(2,-3,-6)*S
New = RZ(7*pi/6)*Tran
%% 3.17
%
syms P(d)
P(d) = [1 0 0 0; 0 1 0 0; 0 0 0 0; 0 0 -1/d 1];
S = [1 -2 3; 2 3 2; 3 1 2; 1 1 1];
F = [10/7 0 0; 0 10/9 0 ; 0 0 5/4];
A = P(10)*S*F
scatter(A(1,:),A(2,:),'filled')