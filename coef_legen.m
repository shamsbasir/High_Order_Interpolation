function d=coef_legen(func,n)
% d=coef_legen(func,n)
% comments

% Shamsulhaq Basir ,27 November 2018 

for k=1:n
  d(k,1) = ((2*k-1)/2) * ntgr8(@(x) func(x).*legen(k-1,x));
end