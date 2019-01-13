% Name: Jacob Smith
% Date: December 11 2018
% Assignment: ENGR 1125 Problem Set,
%     generates a plot with the given calibration data
% Bugs: this function assumes axis titles, but they may not be correct



%generates a voltage plot from the given numbers only csv file
%fileName=the name of the file, titleName=the title of the graph
%x an array of the x values for the calibration
%y an array of the y values for the calibration
%numCannels=the number of channels used
%xAxisName= the name of the first channel
% yAxisName=the name of the second channel, right none if no second
function genCalibrationPlot(x,y,titleName,xAxisName,yAxisName)
  
    %create the figure
    figure('Name',titleName);
    
    %plot the voltages with respect to time
    plot(x,y,'*');
 
    %label plot
    xlabel(xAxisName);
    ylabel(yAxisName);
    space={' '};
    title(strcat('Calibration Plot of ',space,titleName));
   
end
