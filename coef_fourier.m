function [z,s,c]=coef_fourier(func,n)
% [z,s,c]=coef_fourier(func,n)
% This function finds the 2n+1 coefficients of the Fourier series

%shamsulhaq basir 

z = (ntgr8(@(x)func(x)./sqrt(2)));
%z = round(ntgr8(@(x)func(x)./sqrt(2)));

for k = 1:n
    
s(k) = (ntgr8(@(x) func(x).* sin(k*pi*x)));
c(k) = (ntgr8(@(x) func(x).* cos(k*pi*x)));

%s(k) = round(ntgr8(@(x) func(x).* sin(k*pi*x)));
%c(k) = round(ntgr8(@(x) func(x).* cos(k*pi*x)));
end

