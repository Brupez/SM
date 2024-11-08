%% a) 𝑥(𝑡)=2sin(4𝜋𝑡)

clc;clear; close all;

periodo_amostragem = 0.001;
numero_periodos = 4;

frequencia = 2;
periodo = 1 / frequencia;

t=0:periodo_amostragem:numero_periodos*periodo - periodo_amostragem;

y=2*sin(4*pi*t);
plot(t, y);
grid on;

potencia_a = Potencia_associada(y,periodo_amostragem, periodo)

%% b) 𝑦(𝑡)=sin(10𝜋𝑡+𝜋/2)
clc;clear; close all;

periodo_amostragem = 0.001;
numero_periodos = 4;

frequencia = 5;
periodo = 1 / frequencia;

t=0:periodo_amostragem:numero_periodos*periodo - periodo_amostragem;

y=sin(10*pi*t+pi/2);
plot(t, y);
grid on;

potencia_b = Potencia_associada(y,periodo_amostragem, periodo)


%% c) 𝑝(𝑡)=sin(20𝜋𝑡+70𝜋/180)+sin(20𝜋𝑡+200𝜋/180)
clc;clear; close all;

periodo_amostragem = 0.001;
numero_periodos = 4;

frequencia = 10;
periodo = 1 / frequencia;
 
t=0:periodo_amostragem:numero_periodos*periodo - periodo_amostragem;

y=sin(20*pi*t+70*pi/180)+sin(20*pi*t+200*pi/180);
plot(t, y);
grid on;
max(y)

potencia_c = Potencia_associada(y,periodo_amostragem, periodo)


%% d) 𝑧(𝑡)=sin(6𝜋𝑡)+sin(8𝜋𝑡)
clc;clear; close all;

periodo_amostragem = 0.001;
numero_periodos = 4;

frequencia = 1;
periodo = 1 / frequencia;
 
t=0:periodo_amostragem:numero_periodos*periodo - periodo_amostragem;

y=sin(6*pi*t)+sin(8*pi*t);
plot(t, y);
grid on;
max(y) 

potencia_d = Potencia_associada(y,periodo_amostragem, periodo)


%% e) 𝑤(𝑡)=sin(6𝜋𝑡)+sin(8𝜋𝑡+0.1)
clc;clear; close all;

periodo_amostragem = 0.001;
numero_periodos = 4;

frequencia = 1;
periodo = 1 / frequencia;
 
t=0:periodo_amostragem:numero_periodos*periodo - periodo_amostragem;

y=sin(6*pi*t)+sin(8*pi*t+0.1);
plot(t, y);
xlabel('Tempo(s)');
ylabel('w(t)')
grid on;
max(y)

potencia_e = Potencia_associada(y,periodo_amostragem, periodo)


%% f) 𝑞(𝑡)=sin(6𝜋𝑡)+sin(7𝜋𝑡)+sin(8𝜋𝑡)
clc;clear; close all;

periodo_amostragem = 0.001;
numero_periodos = 4;

frequencia = 1/2;
periodo = 1 / frequencia;
 
t=0:periodo_amostragem:numero_periodos*periodo - periodo_amostragem;

y=sin(6*pi*t)+sin(7*pi*t)+sin(8*pi*t);
plot(t, y);
xlabel('Tempo(s)');
ylabel('w(t)')
grid on;

max(y)
gcd(3,4)

potencia_f = Potencia_associada(y,periodo_amostragem, periodo);


%% 3) Função Potência associada ao sinal
clc;clear; close all;


numero_periodos = periodo / periodo_amostragem;


t=0:periodo_amostragem:numero_periodos*periodo - periodo_amostragem;


%% 4) 
clc;clear; close all;

N = 3;
A1 = 1;
A2 = 1;
A3 = 1;

f1 = 10;
f2 = 20;
f3 = 30;

frequencia = 10;
periodo_amostragem = 0.001;
periodo = 1 / frequencia;
 
t=0:periodo_amostragem:N*periodo - periodo_amostragem;
phi = 2+pi*rand(1,3)-pi;

y = A1*sin(2*pi*f1*t + phi(1)) + A2*sin(2*pi*f2*t + phi(2)) + A3*sin(2*pi*f3*t + phi(3));

plot(t,y);
grid on;

potencia_f = Potencia_associada(y,periodo_amostragem, periodo)
max(y)

%% A potência é sempre a mesma pois não depende da fase





