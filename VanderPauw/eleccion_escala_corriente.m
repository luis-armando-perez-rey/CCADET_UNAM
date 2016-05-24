function [ corriente_salida ] = eleccion_escala_corriente( eleccion,corriente )
    switch eleccion
        case 1
            corriente_salida=corriente*1e-9;
        case 2
            corriente_salida=corriente*1e-6;
        case 3
            corriente_salida=corriente*1e-3;
        otherwise
            corriente_salida=0;
            errordlg('Error en la corriente','Error');
    end
end

