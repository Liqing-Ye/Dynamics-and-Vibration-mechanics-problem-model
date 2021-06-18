t=0:0.05:2.05; %time
theta=0.5*3*(t.*t); % angle theta
[rows,columns]=size(theta);
while columns>0
    % get the angular velocity
    [a1,a2,a3]=velocitySolution(theta(columns));
    b0(columns)=theta(columns);
    b1(columns)=a1;
    b2(columns)=a2;
    b3(columns)=a3;
    %get the angular acceleration
    [c1,c2,c3]=accelerationSolution(theta(columns),a1,a2,a3);
    d1(columns)=c1;
    d2(columns)=c2;
    d3(columns)=c3;
    
    columns=columns-1;
end

% plot the figure
% angular velocity -- time
figure(1);
fig1=plot(t,b1,t,b2,t,b3);
hold on
legend([fig1(1),fig1(2),fig1(3)],'w1','w2','w3');
title('Angular Velocity of L1, L2 and L3');
xlabel('time (s)');
ylabel('angular velocity (rad/s)');

% angular velocity -- theta
figure(2);
fig2=plot(b0,b1,b0,b2,b0,b3);
hold on
legend([fig2(1),fig2(2),fig2(3)],'w1','w2','w3');
title('Angular Velocity of L1, L2 and L3');
xlabel('theta (rad)');
ylabel('angular velocity (rad/s)');

% angular acceleration -- time
figure(3);
fig3=plot(t,d1,t,d2,t,d3);
hold on
legend([fig3(1),fig3(2),fig3(3)],'arufa1','arufa2','arufa3');
title('Angular Acceleration of L1, L2 and L3');
xlabel('time (s)');
ylabel('angular acceleration (rad/s^2)');

% angular acceleration -- theta
figure(4);
fig4=plot(b0,d1,b0,d2,b0,d3);
hold on
legend([fig4(1),fig4(2),fig4(3)],'arufa1','arufa2','arufa3');
title('Angular Acceleration of L1, L2 and L3');
xlabel('theta (rad)');
ylabel('angular acceleration (rad/s^2)');