% Exercise 3.1 and 3.2

f  = @(x) ( (x - 2).*x + 1 ).*x - 3;
df = @(x) ( 3*x - 4 ).*x + 1;
x0 = 3;
nmax = 5;

r  = Newton(f,df,x0,nmax);

format long
Table = [ (0:nmax)' , r , f(r) ]