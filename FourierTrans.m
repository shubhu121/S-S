clear all;
close all;
clc;
w = linspace(-pi,pi,1000);
H1 = (1 + exp(-1i*w) + exp(-2*1i*w) + exp(-3*1i*w) + exp(-4*1i*w) + exp(-5*1i*w) + exp(-6*1i*w) + exp(-7*1i*w) + exp(-8*1i*w) + exp(-9*1i*w))/10;
subplot(131);
plot(w,abs(H1));

H2 = (1 - exp(-1i*w) + exp(-2*1i*w) - exp(-3*1i*w) + exp(-4*1i*w) - exp(-5*1i*w) + exp(-6*1i*w) - exp(-7*1i*w) + exp(-8*1i*w) - exp(-9*1i*w))/10;
subplot(132);
plot(w,abs(H2));
h = ones(1,10)/10;
H = zeros(1,1000);
for b = 0:length(h)-1
    H = H + 0.1*exp(1i*(w+pi/4)*b);
end
subplot(133);
plot(w,abs(H));
