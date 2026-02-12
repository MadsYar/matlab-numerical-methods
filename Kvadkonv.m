%Exercise 3.2 Quadratic convergence
clear, clc

f  = @(x) x.^2 - 0.8*x - 0.2;
df = @(x) 2*x - 0.8;
x0 = 4.6;
nmax = 12;
r = 2;

X  = Newton(f,df,x0,nmax);

E = abs(r-X);
Table = [ (0:nmax)' , X , E ];

disp('   Iteration           root                 error              error_i /(error_(i-1))^2')
Table(2:end,4) = E(2:end)./(E(1:end-1).^2)

disp('The theoretical constant:')
t = abs( 0.5*2/(2-0.8) );
disp(t)
disp('We approximate this constant very well (^_^)')