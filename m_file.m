function m_file(R, C, V)
%ECE 2311 HW8 Question 4
t = 0:C:5*R*C;
I = (1/R)*exp(-t/(R*C));
J = ((1-V)/R)*exp(-t/(R*C));
plot(t, I, 'm')
hold on
plot (t, J, 'b')
hold off
grid on
xlabel ("Time (s)"); ylabel("Current (A)");
end













