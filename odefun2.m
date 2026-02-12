% Stating the differential equation
function dzdt = odefun(x,z)
dzdt = [z(2); (1/7)*(-z(2)+z(1)^2-x)];
