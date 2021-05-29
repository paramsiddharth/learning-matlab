clc
clearvars
close all
syms x
f = input('Enter the function f(x): ');
a = input('Enter the value of x at which the Taylor Series is sought: ');
n = input('Enter the order of the series: ');
t = taylor(f,x,a,'order',n);
if a ~= 0
	xi = linspace(a*(0.5),a*(1.5),100);
else
	xi = linspace(-2*pi,2*pi,100);
end
fi = subs(f,x,xi);
ti = subs(t,x,xi);
subplot(1,2,1);
plot(xi,fi),grid on;
hold on;
plot(a,subs(f,x,a),'m*'),hold off
xlabel('x-axis');ylabel('y-axis');
title('Function');
subplot(1,2,2);
plot(xi,ti),grid on;
hold on;
plot(a,subs(f,x,a),'m*'),hold off
xlabel('x-axis');ylabel('y-axis');
title('Taylor Series');