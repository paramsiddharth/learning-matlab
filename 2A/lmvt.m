clc
clear all
syms x
f = input('Enter the function f(x): ');
l = input('Enter the limits [a, b]: ');
a = l(1);b = l(2);
df = diff(f);
dff = (subs(f,x,b)-subs(f,x,a))/(b-a);
c = solve(df-dff);
v = [];fc = [];
for i = 1:length(c)
	if c(i)>a && c(i)<b
		v(end+1) = c(i);
		fc(end+1) = subs(f,x,c(i));
	end
end
xi = linspace(a,b,100);
fi = subs(f,x,xi);
plot(xi,fi,'b'), hold on;
for i = 1:length(v)
	y = fc(i) + dff*(x-v(i));
	plot(xi,subs(y,x,xi),'r');
	plot(v(i),fc(i),'ok');
end
hold off;
xlabel('x-axis');ylabel('y-axis');
legend('Function','Tangent');
title('Lagrange''s Mean Value Theorem');