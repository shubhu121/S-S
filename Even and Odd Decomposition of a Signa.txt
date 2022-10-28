clc
clear all
close all
n1=input('Enter the time sample range of x');
x=input('Enter the sequence');
n2=-fliplr(n1);
y=fliplr(x);
u=min(min(n1),min(n2));
t=max(max(n1),max(n2));
r=u:1:t;
z1=[];
temp=1;
for i=1:length(r)
    if(r(i)<min(n1) || r(i)>max(n1))
      z1=[z1 0];
    else
        z1=[z1 x(temp)];
        temp=temp+1;
    end
end
z2=[];
temp=1;
for i=1:length(r)
    if(r(i)<min(n2) || r(i)>max(n2))
      z2=[z2 0];
    else
        z2=[z2 y(temp)];
        temp=temp+1;
    end
end
z3=(z1+z2)/2;%Even part
z=(z1-z2)/2;%Odd part
subplot(3,1,1);
stem(r,z1);
title('Original signal');
subplot(3,1,2);
stem(r,z3);
title('Even signal');
subplot(3,1,3);
stem(r,z);
title('Odd signal');