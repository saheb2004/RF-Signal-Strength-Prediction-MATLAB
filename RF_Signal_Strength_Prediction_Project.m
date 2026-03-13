clc
clear
close all

% Distance from tower (km)
d = 0.1:0.1:5;

% Frequency values (MHz)
f1 = 900;
f2 = 1800;

% Path Loss Calculation
PL1 = 20*log10(d) + 20*log10(f1) + 32.44;
PL2 = 20*log10(d) + 20*log10(f2) + 32.44;

% Plot Graph
plot(d,PL1,'b','LineWidth',2)
hold on
plot(d,PL2,'r','LineWidth',2)

xlabel('Distance from Tower (km)')
ylabel('Path Loss (dB)')
title('RF Signal Strength Prediction')

legend('900 MHz','1800 MHz')

grid on