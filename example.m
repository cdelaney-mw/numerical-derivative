%[text] Numerical Derivative Example
%[text] Show an example of using the numerical_derivative function
f = @(x) sin(x);
x = linspace(0, 2*pi, 100);
d = numerical_derivative(f, x);

plot(x, d, 'r', x, cos(x), 'b--');
legend('Numerical Derivative', 'Analytical Derivative');
title('Derivative of sin(x)');
%[text] *Copyright 2025 The MathWorks, Inc.*

%[appendix]{"version":"1.0"}
%---
%[metadata:view]
%   data: {"layout":"inline","rightPanelPercent":40}
%---
