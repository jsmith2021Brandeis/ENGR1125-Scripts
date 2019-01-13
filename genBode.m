% Name: Jacob Smith
% Date: November 6 2018
% Assignment: ENGR 1125 Problem Set 9,
%     generates a plot of the data given 
% Bugs: none
%Code References:
%https://www.mathworks.com/matlabcentral/answers/98692-why-does-strcat-function-ignore-trailing-white-spaces-in-matlab
%    https://www.mathworks.com/help/matlab/ref/matlab.graphics.illustration.legend-properties.html
%    https://www.mathworks.com/help/matlab/ref/subplot.html#btw1t4b-1-m

%generates a Bode plot from an input file from network analyzer
%also returns a vector of frequencies to be used in further calculations
%frequencies must be in Hz
%magnitude must be in decibels
%phaseShifts mus be in degrees
function frequencies=genBode(titleName,frequencies,magnitudes,phaseShifts)
    %Plot amplitude bode plot
    figure('Name',titleName);
    subplot(2,1,1);
    semilogx(frequencies,magnitudes);
    hold on;
    
    %label plot
    xlabel('frequency (Hz)');
    ylabel('Ampltidue (decibels)');
    space={' '}; 
    title(strcat('Amplitude Bode Plot of',space,titleName));
    legend('Output Amplitude','Location','best');
    
    %plot phase shift bode plot
    subplot(2,1,2);
    semilogx(frequencies,phaseShifts);
    hold on;
    
    %label phase shft bode plot
    xlabel('frequency (Hz)');
    ylabel('Phase Shift (degrees)');
    title(strcat('Phase shift bode plot of',space,titleName));
    legend('Phase Shift with varying voltage frequency','Location','best');
   
end
