% Name: Jacob Smith
% Date: October 22 2018
% Assignment: ENGR 1125 Laboratory 7
%     generates an XY plot given the x and y vectors
% Bugs: this function assumes axis titles, but they may not be correct




%generates a voltage plot from the given x and y vectors
%x vector of numbers to put on x axis
%y vector of numbers to put on y axis
function genXYPlot(X,Y,titleName)
 
   
    %create the figure, commented out for random error
    figure('Name',titleName);
    
    %plot the voltages with respect to time
    plot(X,Y);
    
    %label plot
    xlabel('X Voltage (Volts)');
    ylabel('Y Voltage (Volts)');
    space={' '};
    title(strcat('XY Voltage Plot of ',space,titleName));
   
end
