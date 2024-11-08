clear

% Exemplo

% ; não mostra os cálculos no Command Window

x=[1:2:10];

y=[-5:5];
y=[-5,-4 -4 -4 -5 5 2 2 3 4 5];

A=[1, 5, 1-j; 4, j, -1]

f=sin(x).*cos(x.^2) %vetor f

x(x<0)

% ~= diferente
% & "e" | "ou"


plot(x,y,'r-0')

% Exercicio 0
clear
x=linspace(-2*pi, 0)
y=sin(x).*exp(x)

plot(x,y,'r')
xlabel('xx')
ylabel('yy')
legend('seno x e^x')
grid
axis([-8 0 -0.5 0.8])

% Exercicio 1
clear
t = [-4:0.01:4]
G=(1/sqrt(2*pi))*t.^2.* exp(-t.^2/2)
B=G.*sin(6*pi*t)
hold on
plot(t,B,'b')
plot(t,G,'r')
hold off
xlabel('xx')
ylabel('yy')
legend('Ex2')
grid
axis([-4 4 -0.4 0.4])

%divide o gráfico segundo o terceiro elemento
subplot(2,2,1)
plot(t,B,'b')

subplot(2,2,2)
plot(t,G,'r')

subplot(2,2,[3,4]) %expande no vetor 3 e 4
plot(t,B,'b',t,G,'r')

plot(a+bj)

% plano complexo é só uma dimensão
x = real(z)

%Fazer exercicio ultimo slide











