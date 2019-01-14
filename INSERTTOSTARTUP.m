%Jacob Smith 1.14.2019 jsmith2021@brandeis.edu
%copy this script into the startup.m file, and insert wherever you
%downloaded the project as pathStart, this is what it was onmy computer
%to concatenate folders multisystem:https://www.mathworks.com/help/matlab/ref/fullfile.html
%to avoid string error with addpath:https://www.mathworks.com/help/matlab/ref/char.html

pathStart='C:\Users\jsmit\Dropbox\Previous Semesters\Fall Semester 2018\Engr 1125\Matlab Scripts\ENGR1125-Scripts';

%don't modify this code, it adds the directories for all the subfolders to
%mathlab's build path

%create array of all subfolder names
folders={'Bode','Calibration','File_Input','Voltage_Plot','XY_Plot'};
index=1;
length=size(folders,2);
%iterate over array, adding path names to matlab directory
while(index<=length)
    folder=folders(index);
    path=fullfile(pathStart,folder);
    charPath=char(path);
    addpath(charPath);
    index=index+1;
end