% frequency ratios (wf/wn) named as wR
% damping factors (c/cc) named as cR
% transmissibility (Tm) named as Tm

wR=2.5;
cR=[0.2,0.4,0.6,0.8,1.0];
[cRrows,cRcolumns]=size(cR);
Tm=[0,0];

fileID1 = fopen('Question2Results.txt','w');
while cRcolumns>0
    cRtmp=cR(cRcolumns);
    Tm(cRcolumns)=sqrt((1+(2*wR*cRtmp)^2)/((1-wR^2)^2+(2*wR*cRtmp)^2));
    if Tm(cRcolumns)<=0.5
        disp("Tm = "+Tm(cRcolumns));
        disp("C/Cc = "+cRtmp);
        fprintf(fileID1,'Tm = %f -> C/Cc = %.1f\n',Tm(cRcolumns),cRtmp);
    end
    cRcolumns=cRcolumns-1;
end
fclose(fileID1);
