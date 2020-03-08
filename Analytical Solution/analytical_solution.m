theta= [0 45 90 135 180 225 270 315 360 ]; %% degree

airgap= [0.5 1.5 2.5 1.5 0.5 1.5 2.5 1.5 0.5 ]; % mm

mu=4*pi*1e-7;

App= (2*pi*12.5*20)*76/360; %% mm^2

R=1e3*2*airgap/(mu*App);

N= 250;

L= N^2./R;


figure();
plot(theta,R,'LineWidth',2);
title('Effective reluctance according to position');
ylabel('Airgap(mm)');
xlabel('Position(Degree)');
grid on;



figure();
plot(theta,L,'LineWidth',2);
title('Effective inductance according to position');
ylabel('Airgap(mm)');
xlabel('Position(Degree)');
grid on;



%%
theta= [0 45 90 135 180 225 270 315];
dL= L(2:end)-L(1:end-1);
dL_theta= dL*4/pi;

T= 4.5*dL_theta;

figure();
plot(theta,T,'LineWidth',2);
title('Effective Torque according to position');
ylabel('Torque(N.m)');
xlabel('Position(Degree)');
grid on;

