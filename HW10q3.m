% Jonathan Lopez
% ECE 2311 CONTINUOUS-TIME SIGNAL AND SYSTEM ANALYSIS
% Homework 10
% Question 3
t = -.5:0.01:.5;
k = -9:9;
T = .25;
to = 1;
wo = 2*pi/to;
xt = (square((t+T/2),to/T)+1)/2;
xtf = zeros(length(k),length(t));
for i = 1:length(k)
    dk = sin(k(i)*wo*T/2)/(k(i)*pi);
    if i == floor(length(k)/2) + 1
        dk = T/to;
    end
    xtf(i,:) = dk * exp(j*k(i)*wo.*t);
end
xtf = sum(xtf,1);
plot(t, xt)
hold on
plot(t, xtf);
holf off

    