function [F]=factor_correccion(Q)
        F=1.0;
        valor=1;
        while valor>0.01 && F>=0.0
            valor=real(((Q-1)/(Q+1))-((F/0.693)*acosh(exp(0.693/F)/2)));
            F=F-0.001;
        end
end