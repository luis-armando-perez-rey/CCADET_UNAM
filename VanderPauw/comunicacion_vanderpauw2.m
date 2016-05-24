function [ A ] = Untitled2( obj1,pausa,corriente,medidas )
%%Condiciones iniciales
A=zeros((medidas),4); %Matriz de datos
fprintf(obj1,'smua.reset()');
fprintf(obj1,'display.smua.measure.func=display.MEASURE_DCVOLTS '); %Cantidad a medir
fprintf(obj1,'smua.measure.autorangei=smua.AUTORANGE_ON'); %Autorangos
fprintf(obj1,'smua.measure.autorangev=smua.AUTORANGE_ON'); %Autorangos
fprintf(obj1,'smua.source.func=smua.OUTPUT_DCAMPS'); %Fuente
fprintf(obj1,'smua.sense=smua.SENSE_REMOTE'); %Medición 4 puntas

fprintf(obj1,'beeper.beep(0.2,261)');
fprintf(obj1,'beeper.beep(0.1,329)');
fprintf(obj1,'beeper.beep(0.1,391)');
%%Buffer
fprintf(obj1,'smua.nvbuffer1.clear()');
fprintf(obj1,'smua.nvbuffer1.appendmode=1');
fprintf(obj1,'smua.nvbuffer1.collectsourcevalues = 1'); 

%%Mediciones
%Medición corriente en un sentido
fprintf(obj1,'smua.source.output=smua.OUTPUT_ON'); %Prender la fuente
    fprintf(obj1,strcat('smua.source.leveli=',num2str(corriente)));
    pause(pausa);
    for i=1:medidas
        fprintf(obj1,'smua.measure.v(smua.nvbuffer1)');
    end
fprintf(obj1,'smua.source.output=smua.OUTPUT_OFF');
pause(3*pausa/2);
%%Medición de corriente en otro sentido
fprintf(obj1,'smua.source.output=smua.OUTPUT_ON'); %Prender la fuente    
    fprintf(obj1,strcat('smua.source.leveli=',num2str(-corriente)));
    pause(pausa);
    for i=1:medidas
        fprintf(obj1,'smua.measure.v(smua.nvbuffer1)');
    end   
fprintf(obj1,'smua.source.output=smua.OUTPUT_OFF');   
    
%Impresión de cantidades 
%%Medida 1    
    for i=1:medidas
        A(i,1)=str2num(query(obj1,strcat('print(smua.nvbuffer1.sourcevalues[',num2str(i),'])')));
        A(i,2)=str2num(query(obj1,strcat('print(smua.nvbuffer1[',num2str(i),'])')));
    end
    
%%Medida 2    
    for i=1:(medidas)
        A(i,3)=str2num(query(obj1,strcat('print(smua.nvbuffer1.sourcevalues[',num2str(i),'])')));
        A(i,4)=str2num(query(obj1,strcat('print(smua.nvbuffer1[',num2str(i+medidas),'])')));
    end

    B=zeros(3,2);
%     B(1,1)=mean(A(:,1));
%     B(2,1)=mean(A(:,2));
%     B(1,2)=mean(A(:,3));
%     B(2,2)=mean(A(:,4));
%     B(3,1)=abs(100*std(A(:,2))/B(2,1));
%     B(3,2)=abs(100*std(A(:,4))/B(2,2));
fprintf(obj1,'beeper.beep(0.1,329)');
fprintf(obj1,'beeper.beep(0.1,293)');
fprintf(obj1,'beeper.beep(0.1,261)');



end

