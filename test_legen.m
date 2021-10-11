%n= [1,2,3,4,5,6,10,20,30,40,50];
n= [5,10,20,40,80,160,320,640];
%fprintf(' n  relative Error \n');
fprintf('n relative errorElapesd time(seconds)   \n');
for i=1:numel(n)
    
  % func=@runge;
   % func=@partly_quadratic;
   func=@sawshape9;
 
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
fprintf('%2.0f  %e  %3.6f \n',n(i),relativeError,stop);
%fprintf('%2.0f  %e  \n',n(i),relativeError);
end

