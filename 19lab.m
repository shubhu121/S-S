clear all;
close all;
clc;
x1=0; x2=20;
h1=0; h2=20;
xi1=x1+h1;
xi2=x2+h2;
if xi1>xi2
  t=-ceil(xi1):ceil(xi1);
elseif xi2>xi1
  t=-ceil(xi2):ceil(xi2);
end
x=t;
h=t;
X=zeros(1,length(t));
H=zeros(1,length(t));
H(t<=h2 & t>=h1)=h(t<=h2 & t>=h1)
X(t>=x1 & t<=x2)=x(t>=x1 & t<=x2)
subplot(3,1,1)
stem(t,X,'r','linewidth',2); grid on;
title('x(t)');
subplot(3,1,2)
stem(t,H,'b','linewidth',2); grid on;
title('h(t)');
for i=xi1:xi2
  H1=fliplr(H);             %Flipping
  H1=circshift(H1,[0,i]);   %Shifting
  a=H1.*X;                  %Scaling
  Y(t==i)=sum(a);
end
subplot(3,1,3)
stem(t,Y,'g','linewidth',2); grid on;
title('convolution y(t)');
