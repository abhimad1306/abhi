function [ y ] = myCirConvMat(x,h)

n_x = length(x);
n_h = length(h);
N = max(n_x,n_h);

x1=[x zeros(1,N-n_x)];
h1=[h zeros(1,N-n_h)];

y=zeros(1,N);
for i=1:N
    y(i)=0;
    for j=1:N
        index= mod((N-j+i),N)
        y(i)=y(i)+h1(j).*x1(index+1);
    end
end
end