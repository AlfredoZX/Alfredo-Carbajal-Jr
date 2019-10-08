%% MATH401 Groupwork 1
% By Alfredo Carbajal Jr, Young Lee, Alessandro Russo
%% 1
% a)
M = [0.02 0.04 0; 0.001 0.03 0.01; 0 0.02 0.025];
d = [210; 100; 500];
P = inv(eye(3)-M)*d
%% 
% b)
inv(eye(3)-M)
%%
% c)
% Sector 1 changes is 0.1557 and Sector 3 changes is 0.0783.
d2 = [0; 3.7; 0];
inv(eye(3)-M)*d2
%%
% d)
% 4 is the smallest n.
p1 = eye(3) + M
p2 = p1 + M.^2
p3 = p2 + M.^3
p4 = p3 + M.^4
%% 2
% A vector for eigenvalue 1 is 0.8105 and 0.5857.
M = [0.3157 0.9470; 0.6314 0.1263];
[V,D] = eig(M)
%% 3
% The reason is 1.05 is in the matrix. Since to produce 1 unit of product 3 you need
% 1.05 unit of product 3, wthis causes the products to be negative.