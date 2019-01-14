%Name: Jacob Smith
% Email:jsmith2021@brandeis.edu
%Date Decemebr 15 2018
%Assignment for reading files in ENGR 1125 that have headers
%this function allows me to read a csv file ith have headers at the right
%column
function data=readFile(fileName)
    offset=0;
    correct=false;
    while (~correct && offset<100)
        try 
            data  = csvread(fileName,offset,0);
            correct=true;
        catch
            offset=offset+1;
        end
    end
    if (offset==100)
         ME = MException('Error, file not found');
        throw(ME);
    end
end