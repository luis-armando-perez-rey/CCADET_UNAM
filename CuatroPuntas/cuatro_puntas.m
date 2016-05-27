function [A]=cuatro_puntas(obj1,i0,i1,p,d)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
ip=(i1-i0)/p;
A=zeros(p+1,2);
fprintf(obj1,'smua.reset()');
fprintf(obj1,'display.smua.measure.func=display.MEASURE_DCVOLTS ');
fprintf(obj1,'smua.measure.autorangei=smua.AUTORANGE_ON');
fprintf(obj1,'smua.measure.autorangev=smua.AUTORANGE_ON');
fprintf(obj1,'smua.source.func=smua.OUTPUT_DCAMPS'); %Fuente
fprintf(obj1,'smua.sense=smua.SENSE_REMOTE'); %Medición 4 puntas

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
    end
end

