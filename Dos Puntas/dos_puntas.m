function [A]=dos_puntas(obj1,v,p,d)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
A=zeros(2*p+1,4);
fprintf(obj1,'smua.reset()');
fprintf(obj1,'display.smua.measure.func=display.MEASURE_DCAMPS ');
fprintf(obj1,'smua.measure.autorangei=smua.AUTORANGE_ON');
fprintf(obj1,'smua.measure.autorangev=smua.AUTORANGE_ON');
fprintf(obj1,'smua.source.func=smua.OUTPUT_DCVOLTS'); %Fuente
fprintf(obj1,'smua.sense=smua.SENSE_LOCAL'); %Medición 2 puntas


fprintf(obj1,'beeper.beep(0.2,261)');
fprintf(obj1,'beeper.beep(0.1,329)');
fprintf(obj1,'beeper.beep(0.1,391)');
%%Buffer
fprintf(obj1,'smua.nvbuffer1.clear()');
fprintf(obj1,'smua.nvbuffer1.appendmode=1');
fprintf(obj1,'smua.nvbuffer1.collectsourcevalues = 1'); 


fprintf(obj1,'smua.source.output=smua.OUTPUT_ON'); %Prender la fuente
  
%%Mediciones
fprintf(obj1,'smua.source.levelv=0'); 
pause(d);
fprintf(obj1,'smua.measure.i(smua.nvbuffer1)'); 

    for i=1:p
        fprintf(obj1,strcat('smua.source.levelv=',num2str(i*v/p)));
        pause(d);
        fprintf(obj1,'smua.measure.i(smua.nvbuffer1)');
        pause(d);
        fprintf(obj1,strcat('smua.source.levelv=',num2str(-i*v/p)));
        pause(d);
        fprintf(obj1,'smua.measure.i(smua.nvbuffer1)');
    end
    
fprintf(obj1,'smua.source.output=smua.OUTPUT_OFF');


    for i=1:2*p+1
        fprintf(obj1,strcat('print(smua.nvbuffer1.sourcevalues[',num2str(i),'])'));
        A(i,1)=str2num(fscanf(obj1));
        A(i,2)=str2num(query(obj1,strcat('print(smua.nvbuffer1[',num2str(i),'])')));
        fprintf(obj1,strcat('print(smua.nvbuffer1.sourceranges[',num2str(i),'])'));
        A(i,3)=str2num(fscanf(obj1));
        A(i,4)=str2num(query(obj1,strcat('print(smua.nvbuffer1.measureranges[',num2str(i),'])')));
        switch A(i,4)
            case 100e-9
                A(i,4)=abs(A(i,2)*0.0005)+100e-12;
            case 1e-6
                A(i,4)=abs(A(i,2)*0.00025)+500e-12;
            case 10e-6
                A(i,4)=abs(A(i,2)*0.00025)+1.5e-9;
            case 100e-6
                A(i,4)=abs(A(i,2)*0.0002)+25e-9;
            case 1e-3
                A(i,4)=abs(A(i,2)*0.0002)+200e-9;
            case 10e-3
                A(i,4)=abs(A(i,2)*0.0002)+2.5e-6;
            case 100e-3
                A(i,4)=abs(A(i,2)*0.0002)+20e-6;
            case 1
                A(i,4)=abs(A(i,2)*0.0003)+1.5e-3;
            case 3
                A(i,4)=abs(A(i,2)*0.0005)+3.5e-3;
            case 10
                A(i,4)=abs(A(i,2)*0.004)+25e-3;
        end
        switch A(i,3)
            case 100e-3
                A(i,3)=abs(A(i,1)*0.0002)+250e-6;
            case 1
                A(i,3)=abs(A(i,1)*0.0002)+400e-6;
            case 6
                A(i,3)=abs(A(i,1)*0.0002)+1.8e-3;
            case 40
                A(i,3)=abs(A(i,1)*0.0002)+12e-3;     
         end
    end
    [values, order] = sort(A(:,1));
    A;
    A = A(order,:);
fprintf(obj1,'beeper.beep(0.1,329)');
fprintf(obj1,'beeper.beep(0.1,293)');
fprintf(obj1,'beeper.beep(0.1,261)');
end

