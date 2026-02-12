function [ l ] = CardinalPolynomial(nodes,i,t)
%CardinalPolynomial: Calculate the function values of i'th cardinal 
%              polynomial in all t-values based on the nodes 
%
% Input:
%    i      the index (between 1 and n+1) of the cardinal polynomial
%    nodes: the nodes [x_1 ... x_(n+1)]
%    t      a row vector [t1 ... tm]. The function will evaluate the 
%           i'th cardinal polynomial to all values in t.  
% Output:
%    l      a row vector with the m function values of the
%           i'th cardinal polynomial

l=ones(size(t)); % Accepting both a row vector and a column vector
m=length(nodes);
for j=[1:i-1 i+1:m]
    l=l.*(t-nodes(j))./(nodes(i)-nodes(j));
end

