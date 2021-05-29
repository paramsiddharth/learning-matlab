% vpa allows approximating to 3 decimal places

clc
clear all
syms x
f = input('Enter the curve function f(x): ');
c = input('Enter the line constant c: ');
li = input('Enter the limits [a, b]: ');
a = li(1); b = li(2);
volume = int(pi*(f-c)^2,x,a,b);
disp(['Volume: ' char(vpa(volume,4)) ' (' char(volume) ')']);
xi = linspace(a,b,30);
yf = subs(f,x,xi);
yc = ones(1,30).*c;
plot(xi,yf), hold on;
plot(xi,yc), hold off;
xlabel('x-axis');ylabel('y-axis');
legend('y=f(x)','y=c'),grid on;