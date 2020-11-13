function my_pole_zero()
N = [1 0 -16];
D = [1 8 22 20];
n = roots(N);
d = roots(D);
plot(n, 'o')
hold on
plot(d, 'x')
axis nd
xlabel ("Real Part"); ylabel("Imaginary Part");
grid on
end