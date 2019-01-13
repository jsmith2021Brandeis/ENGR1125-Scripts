% Name: Jacob Smith
% Date: October 22 2018
% Assignment: ENGR 1125 Problem Set 7,
%     generates a plot of the data given 
% Bugs: none
%Code Regerences:
%    https://www.mathworks.com/help/matlab/ref/matlab.graphics.illustration.legend-properties.html
%    https://www.mathworks.com/help/matlab/ref/subplot.html#btw1t4b-1-m

%generates a Bode plot from an input file from network analyzer
%also returns a vector of frequencies to be used in further calculations
function frequencies=genRealBode(fileName,titleName)
    %load data from file
    data  = readFile(fileName);

    frequencies= data(:,1);
    channel1Mag=data(:,2);
    channel2Mag=data(:,3);
    channel2Phase=data(:,4);
    
    %call genBode to create and graph bode plot
    genBode(titleName,frequencies,channel1Mag,channel2Phase);
   
    %add input voltage to first part of bode plot
    subplot(2,1,1);
    plot(frequencies,channel2Mag);

    %label plot
    legend('Input Voltage','Output Amplitude','Location','best');
   
   
end
