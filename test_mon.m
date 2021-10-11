n= [1,2,3,4,5,6,10,20,30,40];
for (i=1:numel(n))
 % func=@partly_quadratic;
  % func=@runge;
   % func=@sawshape9;
tic;
d=coef_legen(func,n(i));
xval=linspace(-1,1,10000);
yval=eval_legen(d,xval);
stop = toc;
yexact=func(xval);
 
% relative Euclidean norm is approximating
% the relative integral least-squares (L2 norm)
% using an approximate trapezoid rule
format short e
relativeError=norm(yexact-yval)/norm(yexact);
fprintf('n: %3.3f  relative error : %e \n',n(i),relativeError);
end
