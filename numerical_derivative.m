function dydx = numerical_derivative(f, x)
%NUMERICAL_DERIVATIVE Approximate the derivative of f at points x
%   f : a function handle, e.g., @(x) sin(x)
%   x : vector of x values at which to compute the derivative

    h = 1e-5; % small step size for central difference
    dydx = (f(x + h) - f(x - h)) / (2*h);
end
