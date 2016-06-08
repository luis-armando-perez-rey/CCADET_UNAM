function [A]=cuatro_puntas(obj1,i0,i1,p,d)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
ip=(i1-i0)/p;
A=zeros(p+1,4);
fprintf(obj1,'smua.reset()');
fprintf(obj1,'display.smua.measure.func=display.MEASURE_DCVOLTS ');
fprintf(obj1,'smua.measure.autorangei=smua.AUTORANGE_ON');
fprintf(obj1,'smua.measure.autorangev=smua.AUTORANGE_ON');
fprintf(obj1,'smua.source.func=smua.OUTPUT_DCAMPS'); %Fuente
fprintf(obj1,'smua.sense=smua.SENSE_REMOTE'); %Medición 4 puntas


fprintf(obj1,'beeper.beep(0.2,261)');
fprintf(obj1,'beeper.beep(0.1,329)');
fprintf(obj1,'beeper.beep(0.1,391)');
%%Buffer
fprintf(obj1,'smua.nvbuffer1.clear()');
fprintf(obj1,'smua.nvbuffer1.appendmode=1');
fprintf(obj1,'smua.nvbuffer1.collectsourcevalues = 1'); 


fprintf(obj1,'smua.source.output=smua.OUTPUT_ON'); %Prender la fuente
  
%%Mediciones
    for i=0:p
        fprintf(obj1,strcat('smua.source.leveli=',num2str(i0+ip*i)));
        pause(d);
        fprintf(obj1,'smua.measure.v(smua.nvbuffer1)');
    end
    
fprintf(obj1,'smua.source.output=smua.OUTPUT_OFF');


    for i=1:p+1
        fprintf(obj1,strcat('print(smua.nvbuffer1.sourcevalues[',num2str(i),'])'));
        A(i,1)=str2num(fscanf(obj1));
        A(i,2)=str2num(query(obj1,strcat('print(smua.nvbuffer1[',num2str(i),'])')));
        fprintf(obj1,strcat('print(smua.nvbuffer1.sourceranges[',num2str(i),'])'));
        A(i,3)=str2num(fscanf(obj1));
        A(i,4)=str2num(query(obj1,strcat('print(smua.nvbuffer1.measureranges[',num2str(i),'])')));
        switch A(i,3)
            case 100e-9
                A(i,3)=abs(A(i,1)*0.0006)+100e-12;
            case 1e-6
                A(i,3)=abs(A(i,1)*0.0003)+800e-12;
            case 10e-6
                A(i,3)=abs(A(i,1)*0.0003)+5e-9;
            case 100e-6
                A(i,3)=abs(A(i,1)*0.0003)+60e-9;
            case 1e-3
                A(i,3)=abs(A(i,1)*0.0003)+300e-9;
            case 10e-3
                A(i,3)=abs(A(i,1)*0.0003)+6e-6;
            case 100e-3
                A(i,3)=abs(A(i,1)*0.0003)+30e-6;
            case 1
                A(i,3)=abs(A(i,1)*0.0005)+1.8e-3;
            case 3
                A(i,3)=abs(A(i,1)*0.0006)+4e-3;
            case 10
                A(i,3)=abs(A(i,1)*0.005)+40e-3;
        end
        switch A(i,4)
            case 100e-3
                A(i,4)=abs(A(i,2)*0.0002)+250e-6;
            case 1
                A(i,4)=abs(A(i,2)*0.0002)+400e-6;
            case 6
                A(i,4)=abs(A(i,2)*0.0002)+1.8e-3;
            case 40
                A(i,4)=abs(A(i,2)*0.0002)+12e-3;     
         end
    end
fprintf(obj1,'beeper.beep(0.1,329)');
fprintf(obj1,'beeper.beep(0.1,293)');
fprintf(obj1,'beeper.beep(0.1,261)');
end

