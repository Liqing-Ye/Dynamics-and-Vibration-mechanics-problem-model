fun = @(x)7.848+0.75*x(1) - 5.886*x(2);

A = [];
b = [];
Aeq = [0.4187,-1];
beq = 0;
lb = [0,0];
ub = [1.2,0.6];
x0 = [1,0.5];
[x,fval,exitflag,output] = fmincon(fun,x0,A,b,Aeq,beq,lb,ub)