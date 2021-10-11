function c=coef_mon(func,n)
% c=coef_mon(func,n)
% func is a function handle
% This function computes the coefficient
% vector of the best L2 approximatin to a function 

% Shamsulhaq Basir 11/26/2018

for k=1:n
  % force b to be a column vector with second index
  b(k,1)=ntgr8(@(x) func(x).*x.^(n-k));
end

for k=1:n
  for ell=1:n
    H(k,ell)=ntgr8(@(x) x.^(2*n-k-ell));
  end
end

c=H\b;
