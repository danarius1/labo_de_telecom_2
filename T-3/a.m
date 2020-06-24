N=1000;
n=0:N-1;
fm=1000;
fa=100;

t=0:0.0001:5/100;
y=cos(2*pi*fa*t);
subplot(2,1,1)
plot(t,y,'color','red')
axis([ 0 5/100 -1.5 1.5])
grid on
title('senal cosenoidal 100Hz en 5 periodos','color','red')
ylabel('x(t)')

subplot(2,1,2)
x=cos(2*pi*fa*n/fm);
stem(n,x,'color','red')
axis([ 0 50 -1.5 1.5])
title('senal cosenoidal 1KHz en 5 periodos','color','red')
grid on
ylabel('x[n]')

figure
x=cos(2*pi*fa*n/fm);
plot(-N/2:N/2-1,abs(fftshift(fft(x))),'color','red')
title('Espectro de la señal de 100Hz en 1 seg.','color','red')
xlabel('Frecuencia')
ylabel('Amplitud')
grid on