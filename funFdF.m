function [F,dF] = funFdF(X)
F = [X(1).^2 + 2*X(2) - 2; X(1) + 4*X(2).^2 - 4];

dF = [2*X(1), 2; 1, 8*X(2)];