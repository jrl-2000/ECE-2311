function my_pole_zero()
%ECE 2311 HW 6 Problem 1
N = [1 0 16];
D = [1 8 22 20];
n = roots(N);
d = roots(D);
plot(n, 'o')
hold on
plot(d, 'x')
axis auto
xlabel ("Real Part"); ylabel("Imaginary Part");
grid on
end