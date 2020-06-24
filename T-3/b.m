N=1000;
n=0:N-1;
fm=1000;
fa=100;
fb=200;
fc=600;
fd=2100;

t=0:0.0001:0.01;
y=cos(2*pi*fa*t) + cos(2*pi*fb*t) + cos(2*pi*fc*t) + cos(2*pi*fd*t);
subplot(2,1,1);
plot(t,y,'color','green');
axis([0 0.01 -5 5])
grid on
title('suma de las 4 señales')
xlabel('(t)','color','green')
ylabel('x(t)','color','green')

subplot(2,1,2)
x=cos(2*pi*fa*n/fm)+ cos(2*pi*fb*n/fm)+ cos(2*pi*fc*n/fm) + cos(2*pi*fd*n/fm);
stem(n,x,'color','green')
axis([0 10 -5 5])
grid on
title('Señal muestrada 1KHz durante 100mseg.','color','green')
xlabel('[n]','color','green')
ylabel('x[n]','color','green')

figure
x=cos(2*pi*fa*n/fm)+ cos(2*pi*fb*n/fm)+ cos(2*pi*fc*n/fm) + cos(2*pi*fd*n/fm);
plot(-N/2:N/2-1,abs(fftshift(fft(x))),'color','green')
axis([-500 500 0 1000])
grid on
title('Espectro de las señales cosenoidadeles a 1KHz','color','green')
xlabel('Frecuencia en Hz','color','green')
ylabel('Amplitud','color','green')
