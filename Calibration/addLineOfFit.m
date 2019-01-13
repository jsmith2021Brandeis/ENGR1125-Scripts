% Name: Jacob Smith
% Date: December 11 2018
% Assignment: ENGR 1125 Problem Set,
%     estimates a linear line to fit linear data, to be used with genCalibrationPlot function
% Bugs:

%fileName=the name of the file, titleName=the title of the graph
%X an array of the x values for the calibration
%Y an array of the y values used for the calibration
function addLineOfFit(X,Y)
%Create Line of Best fit
dx=X(length(X))-X(1);
dy=Y(length(Y))-Y(1);
rate=(dy/dx);%mv per pF
yIntercept=Y(1)-rate*X(1);%pF
yFit=X*rate+yIntercept;
plot(X,yFit);
bestFitReport="Line of Best Fit"+newline+"Rate:"+rate+newline+"yIntercept:"+yIntercept;
legend("Original Points",bestFitReport,'Location','best');

end
