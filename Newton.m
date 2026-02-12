function X = Newton(f,df,x0,nmax)
%NEWTON  Implementation of Newton's method.
%
%   X = Newton(f,df,x0,nmax)
%
% Solve f(x)=0 by Newton's method, with the starting guess x0 and nmax iterions.
%
% Input:  f    = function to calculate f(x)
%         df   = function to calculate f'(x)
%         x0   = starting guess
%         nmax = the number of iterations
%
% Output: X    = vector to store all iterates

% Per Christian Hansen, DTU Compute, Feb. 12, 2016.

n = 0;
x = x0;
X = zeros(nmax+1,1);
X(1) = x;
for n=1:nmax
    fx = f(x);
    fp = df(x);
    x = x - fx/fp;
    X(n+1) = x;
end