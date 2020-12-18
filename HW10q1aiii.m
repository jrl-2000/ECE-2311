% Jonathan Lopez
% ECE 2311 CONTINUOUS-TIME SIGNAL AND SYSTEM ANALYSIS
% Homework 10
% Question 1 a (iii)
t = 0:0.01:2;
xt = t.^2;
k = -6:6;
xtf = zeros(length(k), length(t));
for i = 1:length(k)
    dk = (2+j*2*pi*k(i)) / (pi^2*k(i)^2);
    if i == floor(length(k)/2)+1
        dk = 4/3;
    end
    xtf(i,:) = dk * exp(j*k(i)*pi.*t);
end
xtf = real(sum(xtf));
plot (t, xt)
hold on
plot(t, xtf)
hold off

    

