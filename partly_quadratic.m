function y=partly_quadratic(x)
% y=partly_quadratic(x)
% input x (possibly a vector or matrix)
% output y, where
% for x<=0, y=0
% for x>0,  y=x(1-x)

y=(heaviside(x)-heaviside(x-1)).*x.*(1-x);