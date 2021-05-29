clear all
clc
syms x
f = input('Enter the upper curve f(x): ');
g = input('Enter the lower curve g(x): ');
l = input('Enter the limits of x [a, b]: ');
a = l(1); b = l(2);
area = int(f-g,x,a,b);
disp(['Bounded area: ',char(area)])
x0 = linspace(a,b,20);
yf = subs(f,x,x0);
yg = subs(h,x,x0);
plot(x0,yf), hold on;
plot(x0,yg), hold off;
xlabel('x-axis');ylabel('y-axis');
legend('f(x)','g(x)'), grid on;