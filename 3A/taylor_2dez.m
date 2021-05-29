clc
clearvars
close all
syms x
f = input('Enter the function f(x): ');
a = input('Enter the value of x at which the Taylor Series is sought: ');
n = input('Enter the order of the series: ');
t = taylor(f,x,a,'order',n);
subplot(1,2,1);
ezplot(f),grid on;
hold on;
plot(a,subs(f,x,a),'m*'),hold off
xlabel('x-axis');ylabel('y-axis');
title('Function');
subplot(1,2,2);
ezplot(t),grid on;
hold on;
plot(a,subs(f,x,a),'m*'),hold off
xlabel('x-axis');ylabel('y-axis');
title('Taylor Series');