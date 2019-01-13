%Name: Jacob Smith
%Date: October 22 2018
%Assignment: ENGR 1125 Problem Set 7,
%    generates a plot of the data given by Scope in Waveforms
%Bugs: this function assumes axis titles, but they may not be correct



%generates a voltage plot from the given numbers only csv file
%fileName=the name of the file, titleName=the title of the graph
%numCannels=the number of channels used
%channel1Name= the name of the first channel
%channel2Name=the name of the second channel, right none if no second
%returns the array of times to be used in theoeritical calculations
function genVoltagePlot(fileName,titleName,numChannels,channel1Name,channel2Name)
 
    %load data from file
    data  = readFile(fileName);
    time= data(:,1);
    voltage1=data(:,2);
    
    if (numChannels==2)
        voltage2=data(:,3);
    end
    
    %convert the time to start at 0
    time=startZero(time);
    
    %create the figure
    figure('Name',titleName);
    
    %plot the voltages with respect to time
    plot(time,voltage1);
    hold on;
    if(numChannels==2)
        plot(time,voltage2);
    end
    
    %label plot
    xlabel('Time (s)');
    ylabel('Voltage (V)');
    space={' '};
    title(strcat('Voltage Over Time of ',space,titleName));
    if (numChannels==1)
           legend(channel1Name,'Location','best');
    else 
           legend(channel1Name,channel2Name,'Location','best');
    end
    
end
