function yval=eval_fourier(z,s,c,xval)
% yval=eval_fourier(z,s,c,xval)
% more comments

% shamsulhaq basir

yval = 0;
for k = 1:numel(c)
    part = s(k).*sin(k.*pi.*xval)+c(k).*cos(k.*pi.*xval);
    yval = yval + part;
end
yval = yval + z./sqrt(2);