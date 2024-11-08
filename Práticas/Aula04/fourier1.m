function [x,t] = fourier1(periodo_amostragem, frequencia, n_periodos, a_k, b_k);
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

% Number of samples to consider in the composed signal
N = round(n_periodos/(frequencia*periodo_amostragem))

% Reserving memory space for the composed signal
x = zeros(N,1)
periodo = 1/frequencia;
t= 0:periodo_amostragem:n_periodos*periodo - periodo_amostragem;

% Creating the composed signal
for k=1:length(a_k)
    x = x + a_k(k)*cos(2*pi*frequencia*t'*(k-1))+b_k(k)*sin(2*pi*frequencia*t'*(k-1));
end

end