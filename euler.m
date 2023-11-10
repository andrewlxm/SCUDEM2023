clear all; clc


a = 0;
b = 1;
n = 100;
h = (b-a)/n;

y(1,:) = [0 0 0];
x(1) = a;
i = 0;

for j = a:h:b
    i= i+1;
    x(i+1) = x(i) + h;
    %Euler method
    ye = y(i,:) + h * fun(x(i),y(i,:));
    %Euler cai tien
    y(i+1,:) = y(i, :) + 0.5 * h * (fun(x(i), y(i,:)) + fun(x(i+1), ye));
    xx(i) = j;
end

plot(xx, y(1:n+1,1), xx, y(1:n+1, 2), xx, y(1:n+1, 3))
legend('1st Eq', '2nd Eq', '3rd Eq')
grid on
  


