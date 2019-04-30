clc;clear *;close all;

A=[-12,12;3,-3];
index=1;
for t=0:0.01:10
    B = expm(A*t);
    Values1(index) = B(1,1);
    Values2(index) = B(1,2);
    Values3(index) = B(2,1);
    Values4(index) = B(2,2);
    index=index+1;
end
t=0:0.01:10;
Fig1=figure(1);
semilogx(Values1);
grid on,hold on;
semilogx(Values2);
hold on;
semilogx(Values3);
hold on;
semilogx(Values4);
Fig2=figure(2);
plot(t,Values1);
grid on,hold on;
plot(t,Values2);
hold on;
plot(t,Values3);
hold on;
plot(t,Values4);