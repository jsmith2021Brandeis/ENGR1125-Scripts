% Name: Jacob Smith
% Date: October 10 2018
% Assignment: ENGR 1125 Problem Set 5,
%     Generates theoretical bode plot
% Bugs: none
%Code Regerences:
%    https://www.mathworks.com/help/matlab/ref/matlab.graphics.illustration.legend-properties.html
%    https://www.mathworks.com/help/matlab/ref/subplot.html#btw1t4b-1-m



%Plots the theoretical ampltide and phase shift on an existing two part bode plot
%frequency should be in Hz, amplitude should be unitless
function genTheoryBode(frequencies,amplitude,phaseShifts)
%convert frequencies to hertz
frequencies=frequencies/2*pi;
%convert theoretical amplitude to decibels
amplitude=20*log10(amplitude);
subplot(2,1,1);
plot(frequencies,amplitude);
legend('Input Voltage','Output Amplitude','Theoretical Amplitude','Location','best');

subplot(2,1,2);
plot(frequencies,phaseShifts);
legend('Output Phase Shift','Theoretical Phase Shift','Location','best');
end
