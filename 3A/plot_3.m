clc
clear all
x = -1:.05:1;
y = x;
[x y] = meshgrid(x,y);
z = x.*y.^2-x.^3;
surf(x,y,z);
colormap spring
shading interp