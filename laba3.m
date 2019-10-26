figure
x1= [-15: 0.005 : 15]
y1 = sin(x1).*sin(x1)
y2= cos(x1).*cos(x1)
y3= x1
hold on
grid on
plot(x1,y1, '--r')
plot (x1,y2, 'm')
plot (x1,y3, 'y')
legend('sin^2(x)','cos^2(x)','x')
xlabel('x')
ylabel('y')
hold off

figure 
x2=[-15: 0.005 : 15];
for i = 1:length(x2)
if x2(i)<=0
y(i) = (sqrt(1+abs(x2(i))))/(2+abs(x2(i)));
else
y(i) = (1+x2(i))/(2+(cos(x2(i)))^3);
end
end
plot(x2,y),
legend('f(x)')
grid on
xlabel('x')
ylabel('y')

figure
x=[-15: 0.005 : 15];
for i=1:length(x)
if x(i)<=0
y1(i) = (sqrt(1+abs(x(i))))/(2+abs(x(i)));
else
y1(i) = (1+x(i))/(2+(cos(x(i)))^3);
end
end
y2 = ((sqrt(1.+abs(x)))./(2.+abs(x))).*(x<=0)+((1.+x)./(2.+(cos(x).^3))).*(x>0);
subplot(2, 1, 1);
plot(x, y1, 'r--');
legend('y with standart logic construction')
xlabel('x')
ylabel('y')
subplot(2, 1, 2);
plot(x, y2, 'm:');
legend('y with MatLab functions')
xlabel('x')
ylabel('y')