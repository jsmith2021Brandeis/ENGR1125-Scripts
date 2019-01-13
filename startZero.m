%Jacob Smith ENGR 1125 12.11.2018
%helper method to convert times array to start at 0
%convert the time to start at 0
%times an array of times to be returned starting at 0
function time=startZero(time)
    initTime=time(1);
    if (initTime<0)
        time=time-initTime;
    end
    
end