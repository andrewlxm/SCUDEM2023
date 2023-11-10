function [f] = fun(x,y)
f = y(1); g = y(2); P = y(3);
% f_dot1= f - f*g - (1 - g*P);
% f_dot2= f*g - g;
% f_dot3= P*(1000-P) - f + g;

f_dot1 = g;
f_dot2 = -0.5*f + 2.5*g + 10*x;
f_dot3 = P;

f = [f_dot1, f_dot2, f_dot3];
end