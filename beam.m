
l=0.5
b=0.02
h=0.01
I= (b*(h.^3))/12
x= linspace(0,0.5,500)
E= 200e9
p=100

c_1 = p.*x.^2.*(3.*l-x)
c_2 = 6.*E.*I
deflection = (c_1 ./ c_2)

plot(x,deflection)
max(deflection)


