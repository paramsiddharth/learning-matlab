clc
clear all
syms y
f = input('Enter the right curve f(y): ');
g = input('Enter the left curve g(y): ');
l = input('Enter the limits [a, b]: ');
a = l(1); b = l(2);
area = int(f-g,y,a,b);
disp([ 'Bounded area: ', char(area) ])
y0 = linspace(a,b,20);
xf = subs(f,y,y0);
xg = subs(g,y,y0);
plot(xf,y0), hold on;
plot(xg,y0), hold off;
xlabel('x-axis');ylabel('y-axis');
legend('f(y)','g(y)'), grid on;