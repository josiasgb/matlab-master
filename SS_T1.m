%% SS model
clear all; close all; clc;
%manipulator
g = 9.8052;
m2 = 12.632222;
m3 = 23.735183;
m1 = m2 + m3;
I3 = [8.51];
d3 = 0.9;

%% modelo
Den = (4*m2*d3 + I3);
A = [0 0 1 0;
     0 0 0 1;
     0 0 (m2*d3)/Den m1/Den;
     0 0 0 0]; 
B = [0; 0; 0; 1/Den];
C = [1 0 0 0;
     0 0 1 0];
D = [0; 0];
sys_ss = ss(A, B, C, D)
sys_tf = tf(sys_ss)

%% plot
figure(1)
step(sys_tf)
figure(2)
step(sys_ss)
