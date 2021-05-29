clc
clearvars
close all
syms x y
f = input('Enter the function f(x,y): ');
l = input('Enter the point at which the Taylor Series is sought [x,y]: ');
% a = l(1);b = l(2);
n = input('Enter the order of the series: ');
t = taylor(f,[x y],l,'order',n);
fv = inline(vectorize(f));
subplot(1,2,1)
ezsurf(f),hold on
shading interp
plot3(l(1),l(2),fv(l(1),l(2)),'m*'),hold off
xlabel('x-axis');ylabel('y-axis');zlabel('z-axis');
title('Function');
tv = inline(vectorize(t));
subplot(1,2,2)
ezsurf(t),hold on
shading interp
plot3(l(1),l(2),tv(l(1),l(2)),'m*'),hold off
xlabel('x-axis');ylabel('y-axis');zlabel('z-axis');
title('Taylor Series');