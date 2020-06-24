N=1000;
n=0:N-1;
fm=1000;
fa=100;
fb=600;
fc=1900;

subplot(2,1,1)
t=0:0.0001:0.01;
y=sin(2*pi*fa*t) + sin(2*pi*fb*t) + sin(2*pi*fc*t);
plot(t,y,'color','blue')
axis([0 0.01 -5 5])
title('suma de las señales senoidal 100,600,1900 Hz','color','blue')
grid on
xlabel('(t)','color','blue')
ylabel('x(t)','color','blue')

subplot(2,1,2)
x=sin(2*pi*fa*n/fm)+ sin(2*pi*fb*n/fm)+ sin(2*pi*fc*n/fm);
stem(n,x,'color','blue')
axis([0 10 -5 5])
title('Señal muestrada de 1KHz en 100mseg.','color','blue')
grid on
xlabel('[n]','color','blue')
ylabel('x[n]','color','blue')

figure
x=sin(2*pi*fa*n/fm)+ sin(2*pi*fb*n/fm)+ sin(2*pi*fc*n/fm);
plot(-N/2:N/2-1,abs(fftshift(fft(x))),'color','blue')
grid on
axis([-500 500 0 500])
title('Espectro de la señal senoidal a 1KHz','color','blue')
xlabel('Frecuencia','color','blue')
ylabel('Amplitud','color','blue')