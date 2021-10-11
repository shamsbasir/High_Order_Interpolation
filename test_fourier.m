n= [1,2,3,4,5,6,10,50, 100,200,400,800];
fprintf('n relative errorElapesd time(seconds)   \n');
for i=1:numel(n)
    
   %func=@runge;
   %func=@partly_quadratic;
   func=@sawshape9;
   
 tic;
[z,s,c]=coef_fourier(func,n(i));
xval=linspace(-1,1,10000);
yval=eval_fourier(z,s,c,xval);
stop = toc;
yexact=func(xval);

% relative Euclidean norm is approximating
% the relative integral least-squares (L2 norm)
% using an approximate trapezoid rule
format short e
relativeError=norm(yexact-yval)/norm(yexact);
fprintf('%2.0f  %2.5f  %3.5f \n',n(i),relativeError,stop);
end

