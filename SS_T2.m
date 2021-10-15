%% SS model
clear all; close all; clc;
%manipulator
g = 9.8052;
m2 = 12.632222;
m3 = 23.735183;
m1 = m2 + m3;
I3 = [8.51];

%% modelo
A = [0 1;
     0 0]; 
B = [0; (-g*(m2 + m3)/m3)];
C = [1 0;
     0 0];
D = [0; 0];
sys_ss = ss(A, B, C, D)
sys_tf = tf(sys_ss)
n=10;
%for i=1:n
     %sys(:,i)=ss(A,B(:,i),C,D);
%end
figure(1)
step(sys_tf)
figure(2)
step(sys_ss)