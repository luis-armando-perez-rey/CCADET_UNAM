function [A] = cuatro_puntas1(i_0,i_f,pasos,duracion)
format shortEng
global obj1;
obj1 = instrfind('Type', 'visa-usb', 'RsrcName', 'USB0::0x05E6::0x2601::4046332::0::INSTR', 'Tag', '');
% Create the VISA-USB object if it does not exist
% otherwise use the object that was found.
if isempty(obj1)
    obj1 = visa('NI', 'USB0::0x05E6::0x2601::4046332::0::INSTR');
else
    fclose(obj1);
    obj1 = obj1(1)
end

% Connect to instrument object, obj1.
fopen(obj1);
fprintf(obj1,'smua.reset()');
% Communicating with instrument object, obj1.

A=cuatro_puntas(obj1,i_0,i_f,pasos-1,duracion);



% Disconnect all objects.
fclose(obj1);

% Clean up all objects.
delete(obj1);



end

