%Jacob Smith 12.11.2018 ENGR 1125
%This function plots the analytical solution of an RC circuit, from my
%problem set 3
%bugs: there's some code corssover between the genVoltage function
%commented first plot out

%fileName the name of the file to load
%R the reistance of the reistor in Ohms
%C the capacitacne of the capacitor, in Farads
%v0 the inital voltage of the system
function plotAnalyticalSolution(fileName,R,C,v0)
    figure('Name','Voltage Drop with theoretical function');
    %load data from file
    data  = readFile(fileName);

    Times= data(:,1);
    Voltages=data(:,3);
    Times=startZero(Times);
    %plot Calibration data as stars 
    %commented out because it's not working
    plot (Times,Voltages,'.');
    hold on;

    %Plot analyitcal function 5Ve^-t/RC
    CalcVolts=v0*exp(-Times/(R*C));
    

    %plot that vector with the same time values
    plot(Times,CalcVolts);

    %label plot
    xlabel('time (seconds)');
    ylabel('Voltage (volts)');
    title('Voltage of Capacitor as it drains');
    legend('Original voltage measurements','Theoretical prediction V(t)=V(0)e^(-t/RC)');

end