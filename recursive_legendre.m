function yval = recursive_legendre ( k , xval )
% yval = recursive_legendre ( k , xval )
% yval = values of the k-th Legendre polynomial
% at values xval

if k<0
  error('recursive_legendre: k must be nonnegative.');
elseif k==0    % WARNING: no space between else and if!
  yval = ones(size(xval));
elseif k==1    % WARNING: no space between else and if!
  yval = xval;
else
  yval = ((2*k-1)*xval.*recursive_legendre(k-1,xval) ...
          - (k-1)*recursive_legendre(k-2,xval) )/k;
end