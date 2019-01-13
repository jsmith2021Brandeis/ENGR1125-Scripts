function genBodeImaginary(title,frequencies,VoutVin)
    %frequenices is in hertz
    %voutVin is vector of complex numbers no units?

    %magnitude starts out unitless, is converted to decibels
    magnitude=abs(VoutVin);
    magnitude=toDecibels(magnitude);
    %phaseShifts starts it in radians, is converted to degrees
    phaseShifts=angle(VoutVin);
    phaseShifts=phaseShifts*pi/180;
    genBode(title,frequencies,magnitude,phaseShifts);
end