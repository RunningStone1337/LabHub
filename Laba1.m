c=1.52
a=-2.4
x=0.29
k=3
y=((log(x)+a^2)^(1/3))/(0.47*(x^2))-abs((0.47*(x^2))-((10^4)/7)*cos(k)*cos(k))-c/x
y=-1.37
mas= [a c k x y]
mas=mas.^2
[sorted, ind] = sort(mas)
sum= mas + sorted