
n=0:19;
fm=1000;
fa=500;

t=0:0.0001:10/500;
y=cos(2*pi*fa*t);
subplot(3,1,1)
plot(t,y,'color','red');
axis([0 10/500 -1.5 1.5])
grid on
ylabel('x(t)')
title('señal cosenoidal de 500Hz en 10 periodos','color','red')

subplot(3,1,2)
x=cos(2*pi*fa*n/fm);
stem(n,x,'color','green')
axis([0 20 -1.5 1.5])
title('señal muestrada a 1kHz de 10 periodos','color','green')
grid on
ylabel('x[n]')

n=0:5/3;
subplot(3,1,3)
x=cos(2*pi*fa*n/fm);
stem(n,x)
axis([0 4 -1.5 1.5])
grid on
title('señal muestrada 1kHz en 2 periodos fundamentales','color','blue')
ylabel('x[n]')