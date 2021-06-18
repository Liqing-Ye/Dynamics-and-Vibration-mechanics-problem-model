function [arufa1K,arufa2K,arufa3K] = accelerationSolution(theta,w1K,w2K,w3K)
%常量
L1=0.35;
L2=1;
L3=1;
a=0.6;
b=0.4;

%O,A,B,C 的坐标值
pointO=[0,0,0];
pointA=[L1*cos(theta),L1*sin(theta),0];
OA=pointA-pointO;
pointC=[a,b,0];
  %pointB->
AC=pointC-pointA;
AH=AC/2;   
lengthHB=sqrt(L2^2-(norm(AH))^2);
HB=[L1*sin(theta)-b,a-L1*cos(theta),0]*((lengthHB)/(norm(AH))); %
AB=AH+HB; %即rAB的长度
CB=AB-AC;

%angular acceleration of L1， L2， L3
arufa1=[0,0,3];
w2=[0,0,w2K];
syms arufa2Kunknown arufa3Kunknown
arufa2=[0,0,arufa2Kunknown];
arufa3=[0,0,arufa3Kunknown];
aA=(cross(arufa1,OA))+((-(w1K^2))*OA); 
aB=[-arufa3(3)*CB(2),arufa3(3)*CB(1),0]+((-(w3K^2))*CB); %=cross(arufa3,CB)
aRotate_t=[-arufa2(3)*AB(2),arufa2(3)*AB(1),0]; %=cross(arufa2,AB)
aRotate_n=(-w2(3)*w2(3))*AB; 
f=aB-aA-aRotate_t-aRotate_n; % =[0,0,0];
fresult=solve(f==0);
arufa1K=arufa1(3);
arufa2K=fresult.arufa2Kunknown;
arufa3K=fresult.arufa3Kunknown;
end

