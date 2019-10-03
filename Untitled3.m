clc;
clear all;
close all;
x = [1 2 3 4];
h = [2 1 2 1];

n=10;
x1=zeros(1,n);
for i=1:n
    x1(i)=(0.5)^(i-1);
end


y = myCirConvMat(x,h);
y1= myCirConvMat(x1,h);
z=cconv(x,h,4);
z1=cconv(x1,h,10);
figure(1);
subplot(2,2,1);
stem(y);
subplot(2,2,2);
stem(z);
subplot(2,2,3);
stem(y1);
subplot(2,2,4);
stem(z1);




figure(2);

x11=[ 1 2 3 4 5 6 7 8];
h11=[ 2 1 2 1 2 1 2 1];

n_x = length(x11);
n_h = length(h11);
N = max(n_x,n_h);

l=myDft(N);
X=real(x11*l);
H=real(h11*l);

Y=X.*H;



subplot(2,2,1);
stem(Y);

yz=cconv(x11,h11,8);
subplot(2,2,2);
YZ=fft(yz);
stem(YZ);

% y7=inv(real(myDft(8))).*Y;
% subplot(2,2,3);
% stem(y7);

z1=myDft(8);
z2=inv(z1)
z3=abs(z1*z2);
z4=4.*z3;
display(z4);





