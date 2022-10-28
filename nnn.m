clc;
close all;

t=-20:0.01:20;
j=1;
for k=-20:20
    ak1(j)=((-1)^k-1)/(k*pi)^2;
    ak2(j)=(1-(-1^k))/(2*1i*pi*k);
    ak3(j)=(-1/(1i*k*2*pi));
    ak4(j)=1/(k*pi);
    ak8(j)=((-1)^k-1)/(-1i*2*pi*k);
    ak9(j)=(1-exp(-1))/(1+1i*pi*2*k);
    ak10(j)=(2*(-1)^k)/(pi*(1-4*k^2));
    j=j+1;
end
l=-20:20;
ak5=zeros(1, length(l));
ak5(20:22)=[0.5*exp(-1i*pi/4),0,0.5*exp(1i*pi/4)];
ak6=zeros(1, length(l));
ak6(19:23)=[0.5,0.5,0,0.5,0.5];
ak7=zeros(1, length(l));
ak7(19:21)=[-0.5,0,0.5];
ak1(21)=0.5;
ak2(21)=0.5;
ak3(21)=0.5;
ak4(21)=0.5;
ak8(21)=0.5;
ak9(21)=(1-exp(-1));
ak10(21)=0;
%plot 11
subplot(10,2,1);
stem(l,abs(ak1));
xlabel('k');
ylabel('abs(ak1)');
%plot 12
subplot(10,2,2);
stem(l,angle(ak1));
xlabel('k');
ylabel('angle(ak1)');
%plot 21
subplot(10,2,3);
plot(l,abs(ak2));
xlabel('k');
ylabel('abs(ak2)');
%plot 22
subplot(10,2,4);
plot(l,angle(ak2));
xlabel('k');
ylabel('angle(ak2)');
%plot 31
subplot(10,2,5);
plot(l,abs(ak3));
xlabel('k');
ylabel('abs(ak3)');
%plot 32
subplot(10,2,6);
stem(l,angle(ak3));
xlabel('k');
ylabel('angle(ak3)');
%plot 41
subplot(10,2,7);
plot(l,abs(ak4));
xlabel('k');
ylabel('abs(ak4)');
%plot 42
subplot(10,2,8);
stem(l,angle(ak4));
xlabel('k');
ylabel('angle(ak4)');
%plot 51
subplot(10,2,9);
plot(l,abs(ak5));
xlabel('k');
ylabel('abs(ak5)');
%plot 52
subplot(10,2,10);
stem(l,angle(ak5));
xlabel('k');
ylabel('angle(ak5)');
%plot 61
subplot(10,2,11);
plot(l,abs(ak6));
xlabel('k');
ylabel('abs(ak6)');
%plot 62
subplot(10,2,12);
stem(l,angle(ak6));
xlabel('k');
ylabel('angle(ak6)');
%plot 71
subplot(10,2,13);
plot(l,abs(ak7));
xlabel('k');
ylabel('abs(ak7)');
%plot 72
subplot(10,2,14);
stem(l,angle(ak7));
xlabel('k');
ylabel('angle(ak7)');
%plot 81
subplot(10,2,15);
plot(l,abs(ak8));
xlabel('k');
ylabel('abs(ak8)');
%plot 82
subplot(10,2,16);
stem(l,angle(ak8));
xlabel('k');
ylabel('angle(ak8)');
%plot 91
subplot(10,2,17);
plot(l,abs(ak9));
xlabel('k');
ylabel('abs(ak8)');
%plot 92
subplot(10,2,18);
stem(l,angle(ak9));
xlabel('k');
ylabel('angle(ak9)');
%plot 101
subplot(10,2,19);
plot(l,abs(ak10));
xlabel('k');
ylabel('abs(ak10)');
%plot 102
subplot(10,2,20);
stem(l,angle(ak10));
xlabel('k');
ylabel('angle(ak10)');
