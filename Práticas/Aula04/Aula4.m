%% 2. Desenvolva uma função em MATLAB que produza o sinal resultante da série de Fourier
clc;clear; close all;

periodo_amostragem = 0.001;
frequencia = 1;
n_periodos = 2;
K = 30;
a_k = zeros(K,1);
b_k = zeros(K-1,1);

ind=1:2:K-1;
b_k(ind)=4./(pi*ind);
b_k = [0; b_k];
a_k = zeros(size(b_k));

[x,t] = fourier1(periodo_amostragem, frequencia, n_periodos,a_k, b_k);

figure(5);
y = square(2*pi*1*t);
plot(t,y,'r')
hold on
plot(t,x,'b')
grid;
legend('Square Wave');


% 3 fazer somatórios sawtooth
% pega no x' (linha) produto interno f (coluna) para n precisar de fazer 2
% for de 1:N e por x(N) e t(N) dentro do for já existente

periodo_amostragem = 0.001;
frequencia = 1;
n_periodos = 4;
K = 10;
N = round(Np)

