% Name: Jacob Smith
% Date: October 22 2018
% Assignment: ENGR 1125 Laboratory 7
%     generates an XY plot given a csv file of x and y voltages
% Bugs: this function assumes axis titles, but they may not be correct



%generates a voltage plot from the given numbers only csv file
%fileName=the name of the file, titleName=the title of the graph
%titleName, the title of the graph
function genXYPlotFromFile(fileName,titleName)
 
    %load data from file
    data  = readFile(fileName);
    X= data(:,1);
    Y=data(:,2);
    
    genXYPlot(X,Y,titleName);   
end
