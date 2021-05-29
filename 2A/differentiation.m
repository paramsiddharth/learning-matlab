clc
clear all
syms x
f = input('Enter the function f(x): ');
p = input('Enter the value of x for the tangent: ');
xi = p-10:0.01:p+10;
df = subs(diff(f),x,p);
y0 = subs(f,x,p) + df*(x-p);
fi = subs(f,x,xi);
plot(xi,fi),hold on;
plot(xi,subs(y0,x,xi)),hold off;
xlabel('x-axis');ylabel('y-axis');
legend('f(x)','f''(x)'),grid on;