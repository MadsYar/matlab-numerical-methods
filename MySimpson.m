function S = MySimpson(f,a,b,n)
% Input
% f: a function handle defined for an x. f = @(x) (f(x))
% a: lower bound of the interval
% b: upper bound of interval
% n: number of subintervals

% If n is not an even number, it displays an error message
if mod(n,2)~=0
    disp('An error occurred - n has to be an even number');
    S=NaN; return;
end

% Calculating the interval in n subintervals
h = (b-a)/n; 
S1=0;

for i = 1:n/2
    x=a+(2*i-1)*h;
    S1=S1+f(x);
end

S2=0;
for i = 1:(n-2)/2
    x=a+2*i*h;
    S2=S2+f(x);
end

% Applying it to the composite Simpson's rule
S = h/3*( f(a) + f(b) ) + 4*h/3*S1 + 2*h/3*S2 ;
end