
n=0:24;
fm=1000;
fa=200;

t=0:0.0001:5/200;
y=cos(2*pi*fa*t);
subplot(3,1,1)
plot(t,y,'color','red');
axis([0 5/200 -1.5 1.5])
grid on
ylabel('x(t)')
title('señal cosenoidal de 200Hz en 5 periodos','color','red')

subplot(3,1,2)
x=cos(2*pi*fa*n/fm);
stem(n,x,'color','green')
axis([0 25 -1.5 1.5])
title('señal muestrada a 1kHz de 5 periodos','color','green')
grid on
ylabel('x[n]')

n=0:9;
subplot(3,1,3)
x=cos(2*pi*fa*n/fm);
stem(n,x)
axis([0 10 -1.5 1.5])
grid on
title('señal muestrada 1kHz en 2 periodos fundamentales','color','blue')
ylabel('x[n]')