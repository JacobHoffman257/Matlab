clear;clc;
disp('Problem 1')
syms x
area = 0.5*x+sin(x);
int(area,2,8);
double(int(area,2,8))

area = @(x) 0.5*x+sin(x);
integral(area,2,8)

%%
clear;clc;
disp('Problem 2')
syms x
disp = 0.5*x+sin(x);
X = solve(diff(disp)==0);
X = double(X);
X(X>0)

%%
clear;clc;
disp('Problem 3')
syms x y
f1 = x == 21 + 3*y;
f2 = 4*y - 10 == -2*x;
[x1, y1] = solve(f1,f2);
double(x1)
double(y1)

A = [1 3 ; 2 4];
b = [21 ; 10];
A\b

%%
clear;clc;
disp('Problem 4')
syms r h
Va = pi*r^2*20 + pi*r^2*(20/3) == 7000;
A = double(solve(Va));
A(A>0)

Vb = pi*10^2*h + pi*10^2*(h/3) == 7000;
B = double(solve(Vb));
B(B>0);
fprintf('h = %2.4f\n',B)
