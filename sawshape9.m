function y=sawshape9(x)
% y=sawshape9(x)
% input x (possibly a vector or matrix)
% output y, where
%   y=(x+1) for -1<x<0
%   y=0     for  x=0
%   y=(x-1) for  0<x<1

% M. M. Sussman
% $Id: sawshape9.m,v 1.2 2015/10/29 22:48:54 mike Exp $

y= heaviside(-x).*(x+1) + heaviside(x).*(x-1);
