% Stating the differential equation
function dzdt = odefun(x,z)
dzdt = [z(2); (1/7)*(-z(2)+z(1)^2-x)];

function y_end = phi(z)
% The given interval and initial values
tspan = [0, 2];
z0 = [7, z];
% Solving the ordinary differential equation
[z,y] = ode45(@odefun, tspan, z0);
y_end = y(end,1);  
end

% Computing the 61 initial values problem
z= linspace(-60,0,61);
z_end = zeros(length(z),1);
for i = 1:length(z)
    z_end(i) = (phi(z(i)));
end    

figure
plot(z,z_end)
xlabel('Z')
ylabel('phi(z)')
yline(9,'-','y(2) = 9','linewidth',2)
grid on
title('Phi(z) as a function of z')