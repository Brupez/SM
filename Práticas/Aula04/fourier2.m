function [a_k, b_k] = fourier2(periodo_amostragem, To, x, K)
N = length(x);
t = [ 0:(N-1) ]'*periodo_amostragem;

frequencia=1/To

a_k = zeros(K+1,1);
b_k = zeros(K+1,1);
a_k(1) = mean(x);
b_k(1) = 0;

for k=2:K+1
    a_k(k) = (2/N)*x'*cos(2*pi*(k-1)*f*t);
    b_k(k) = (2/N)*x'*sin(2*pi*(k-1)*f*t);
end
 