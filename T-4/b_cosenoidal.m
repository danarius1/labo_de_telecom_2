N=1000;
n=0:N-1;
fm=1000;
fa=100;
fb=600;
fc=1900;

subplot(2,1,1)
t=0:0.0001:0.01;
y=cos(2*pi*fa*t) + cos(2*pi*fb*t) + cos(2*pi*fc*t);
plot(t,y,'color','black')
axis([0 0.01 -5 5])
title('suma de las señales cosenoidal 100,600,1900 Hz','color','black')
grid on
xlabel('(t)','color','black')
ylabel('x(t)','color','black')

subplot(2,1,2)
x=cos(2*pi*fa*n/fm)+ cos(2*pi*fb*n/fm)+ cos(2*pi*fc*n/fm);
stem(n,x,'color','black')
axis([0 10 -5 5])
title('Señal muestrada de 1KHz en 100mseg.','color','black')
grid on
xlabel('[n]','color','black')
ylabel('x[n]','color','black')

figure
x=cos(2*pi*fa*n/fm)+ cos(2*pi*fb*n/fm)+ cos(2*pi*fc*n/fm);
plot(-N/2:N/2-1,abs(fftshift(fft(x))),'color','black')
grid on
axis([-500 500 0 500])
title('Espectro de la señal cosenoidal a 1KHz','color','black')
xlabel('Frecuencia','color','black')
ylabel('Amplitud','color','black')