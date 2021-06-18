function [w1K,w2K,w3K] = velocitySolution(theta)
% xita是未知数 w1随着xita的变化而变化
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

%angular velocity
arufa1=[0,0,3];
w1=[0,0,(sqrt(2*arufa1(3)*theta))];
syms w2unknown w3unknown
w2=[0,0,w2unknown]; 
w3=[0,0,w3unknown]; 
vA=cross(w1,OA);
vB=[-w3(3)*CB(2),w3(3)*CB(1),0]; %=cross(w3,CB); 
vRotate=[-w2(3)*AB(2),w2(3)*AB(1),0]; %=cross(w2,AB)
f=vB-vA-vRotate; % =[0,0,0]; 
fresult=solve(f==0);
w1K=w1(3);
w2K=fresult.w2unknown;
w3K=fresult.w3unknown;
end
