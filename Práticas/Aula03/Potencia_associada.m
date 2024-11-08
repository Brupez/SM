function [potencia] = Potencia_associada(x, periodo_amostragem, periodo)
%POTENCIA_ASSOCIADA Summary of this function goes here
%   Detailed explanation goes here

N = (periodo / periodo_amostragem);
potencia = (1 / N)*sum(abs(x(1:N)).^2);
end

