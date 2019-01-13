%Name: Jacob Smith
%Date: September 25 2018
%Email:jsmith2021@brandeis.edu
%Assignment: ENGR 1125, Scale Lab
%  Calculates the deritive of an array with respect to a second time array

%calculates the derivative with respect to time of parallel array of measurment
%and time
%n is sampling interval, so n=10 would mean find difference across every 10
%elements
function [derivTimes,derivs]=calcDerivative(readings,times,n)
    %find length of voltages
    [numRows,numCols]=size(readings);
    %allocate size of derivatives array
    derivLength=ceil(numRows/n);
    derivTimes=zeros(derivLength);
    derivs=zeros(derivLength);
   
    derivTimes(1)=0;
    derivs(1)=0;
    curIndex=2;
    %find difference between every thenth value of voltage array, divide by
    %time difference
    for i=n+1:n:numRows
        dr=readings(i)-readings(i-n);
        dt=times(i)-times(i-n);
        disp(dt);
        derivs(curIndex)=dr/dt;
        derivTimes(curIndex)=dt+derivTimes(curIndex-1);
        curIndex=curIndex+1;
    end
end