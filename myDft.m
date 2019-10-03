function [C] = myDft(N)


for n=1:1:N
    for k=1:1:N
        
        C(n,k) = exp((-1j)*2*pi*(n-1)*(k-1)/N);
    end
end
    
end

