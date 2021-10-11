function yval = legen ( n , xval)
% yval = legen ( n , xval)
% it computes nth legendre polynomial Pn using a loop. 
% Shamsulaq Basir 11/26/2016 

if n<0
  error('recursive_legendre: k must be nonnegative.');
elseif n==0    % WARNING: no space between else and if!
  yval = ones(size(xval));
elseif n==1    % WARNING: no space between else and if!
  yval = xval;
else
    ykm1 = ones(size(xval));
    yk   = xval;
    
  for (k=2:n)
      ykm2 = ykm1;
      ykm1= yk;
  yk = ((2*k-1)*xval.*ykm1-(k-1)*ykm2)/k;
  end
  yval =yk;
end

