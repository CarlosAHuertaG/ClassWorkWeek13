Q = [-12 12; 3 -3];
index=1;
for t=0:0.01:10
  P = expm(Q*t);
  ROW1_1(index) = P(1,1);
  ROW1_2(index) = P(1,2);
  ROW2_1(index) = P(2,1);
  ROW2_2(index) = P(2,2);
  index = index +1;
endfor
t = 0:0.01:10;
figure(1);
plot(t,ROW1_1,'b',t,ROW1_2,'r',t,ROW2_1,'y',t,ROW2_2,'m');
figure(2);
semilogx(t,ROW1_1,'b',t,ROW1_2,'r',t,ROW2_1,'y',t,ROW2_2,'m');