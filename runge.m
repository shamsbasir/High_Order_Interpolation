function y=runge(x)
% y=runge(x) computes the Runge function, y=1/(1+x^2)

% M. M. Sussman
% $Date: 2002/07/29 00:01:28 $

% componentwise multiplication
y=1./(1+x.^2);
