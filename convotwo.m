recObj = audiorecorder;
disp('Start')
recordblocking(recObj,5);
disp('End');

x=getaudiodata(recObj);
L=length(x);
h=audioread('sample.wav');
M=length(h);

N=L+M-1;
X=[x;zeros(N-L,1)];
H=[h;zeros(N-M,1)];
Y=[zeros(1,N)];
X=X';
Y=Y';
for n=1:N
	for m=1:N
    	if(n-m<0)
        	k=N+n-m+1;
    	else
        	k=n-m+1;
    	end
        Y(n)=Y(n)+(X(k)*H(m));
	end
end
sound(Y)

