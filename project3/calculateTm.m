% frequency ratios (wf/wn) named as wR
% damping factors (c/cc) named as cR
% transmissibility (Tm) named as Tm

wR=0:0.01:5;
cR=[0.2,0.4,0.6,0.8,1.0];

[wRrows,wRcolumns]=size(wR);
[cRrows,cRcolumns]=size(cR);
Tm=[0,0;0,0];
while cRcolumns>0
    cRtmp=cR(cRcolumns);
    
    wRcoltmp=wRcolumns;
    while wRcoltmp>0
        wRtmp=wR(wRcoltmp);
        Tm(cRcolumns,wRcoltmp)=sqrt((1+(2*wRtmp*cRtmp)^2)/((1-wRtmp^2)^2+(2*wRtmp*cRtmp)^2));
        wRcoltmp=wRcoltmp-1;
    end
    
    cRcolumns=cRcolumns-1;
end

% plot the figure
% Tm--(wf/wn) for different (c/cc)
figure(1);
fig1=plot(wR,Tm(1,:),wR,Tm(2,:),wR,Tm(3,:),wR,Tm(4,:),wR,Tm(5,:));
hold on
legend([fig1(1),fig1(2),fig1(3),fig1(4),fig1(5)],'C/Cc = 0.2','C/Cc = 0.4','C/Cc = 0.6','C/Cc = 0.8','C/Cc = 1.0');
title('Transmissibility (Tm) for frequency ratios (wf/wn)');
xlabel('wf/wn');
ylabel('Tm');


