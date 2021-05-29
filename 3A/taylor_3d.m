clc
clearvars
close all
syms x y
f = input('Enter the function f(x,y): ');
l = input('Enter the point at which the Taylor Series is sought [x,y]: ');
% a = l(1);b = l(2);
n = input('Enter the order of the series: ');
t = taylor(f,[x y],l,'order',n);
if l(1) ~= 0
	xi = linspace(0.5*l(1),1.5*l(1),100);
else
	xi = linspace(-2*pi,2*pi,100);
end
if l(2) ~= 0
	yi = linspace(0.5*l(2),1.5*l(2),100);
else
	yi = linspace(-2*pi,2*pi,100);
end
[xi yi] = meshgrid(xi,yi);
fv = inline(vectorize(f));
fi = fv(xi,yi);
subplot(1,2,1)
surf(xi,yi,fi),hold on
shading interp
plot3(l(1),l(2),fv(l(1),l(2)),'m*'),hold off
xlabel('x-axis');ylabel('y-axis');zlabel('z-axis');
title('Function');
tv = inline(vectorize(t));
subplot(1,2,2)
surf(xi,yi,tv(xi,yi)),hold on
shading interp
plot3(l(1),l(2),tv(l(1),l(2)),'m*'),hold off
xlabel('x-axis');ylabel('y-axis');zlabel('z-axis');
title('Taylor Series');