function yval=eval_legen(d,xval)
% yval=eval_legen(d,xval)
% evaluates the lengedre approximation to a legendre
% fuction with coefficients of d

% Shamsulhaq Basir ,27 November 2018 

n = numel(d);
yval = 0;
for k=1:n
  yval = d(k).*legen(k-1,xval) + yval;
end
