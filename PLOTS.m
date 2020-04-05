%Plots for every part of final report 
close all;
clc;

%Load all the data files before graphing 
load('Ideal_waypoints');
load('Jammed_R');
load('Jammed_L');
load('Actual');
load('Ideal_waypoints');
load('Normal_case');
load('Phi');
load('Psi');
load('Theta');
load('Velocity');
load('Xs');
load('Ys');
load('Zs');

%Ideal Waypoints map 
figure(1)
x1_axis = Ideal_waypoints(:,3);
y2_axis = Ideal_waypoints(:,2);
plot(x1_axis,y2_axis,'bl','Linewidth',1.5);
hold on 
xlabel('X-AXIS');
ylabel('Y-AXIS');
title('Ideal Waypoint Results');
set(gca, 'XLim', [0 5000])
set(gca, 'Xtick',(0: 1000: 5000))
set(gca, 'YLim', [0 3000])
set(gca, 'Ytick',(0: 500: 3000))

%Jammed Right Aileron Waypoints case 
figure(2) 
x1_axis = Jammed_R(:,2);
y1_axis = Jammed_R(:,3);
xn_axis = Ideal_waypoints(:,3);
yn_axis = Ideal_waypoints(:,2);
plot(x1_axis,y1_axis,'--bl','Linewidth',2);
hold on;
plot(xn_axis,yn_axis,'r','Linewidth',1);
xlabel('X-AXIS');
ylabel('Y-AXIS');
title('Normal vs Jammed Right Aileron Waypoint Results');
set(gca, 'XLim', [0 5000])
set(gca, 'Xtick',(0: 1000: 5000))
set(gca, 'YLim', [0 3000])
set(gca, 'Ytick',(0: 500: 3000))
legend('Jammed Right Aileron Case', 'Normal Case');

% %Jammed Left Aileron Waypoints case 
figure(3)
x1_axis = Jammed_L(:,2);
y1_axis = Jammed_L(:,3);
xn_axis = Ideal_waypoints(:,3);
yn_axis = Ideal_waypoints(:,2);
plot(x1_axis,y1_axis,'--bl','Linewidth',2);
hold on;
plot(xn_axis,yn_axis,'r','Linewidth',1);
xlabel('X-AXIS');
ylabel('Y-AXIS');
title('Normal vs Jammed Left Aileron Waypoint Results');
set(gca, 'XLim', [0 5000])
set(gca, 'Xtick',(0: 1000: 5000))
set(gca, 'YLim', [0 3000])
set(gca, 'Ytick',(0: 500: 3000))
legend('Jammed Left Aileron Case', 'Normal Case');

%Jammed Right Aileron Waypoints case 
figure(4) 
xn_axis = Normal_case(:,2);
yn_axis = Normal_case(:,3);
plot(xn_axis,yn_axis,'bl','Linewidth',1.5);
xlabel('X-AXIS');
ylabel('Y-AXIS');
title('Normal Waypoint Results');
set(gca, 'XLim', [0 5000])
set(gca, 'Xtick',(0: 1000: 5000))
set(gca, 'YLim', [0 3000])
set(gca, 'Ytick',(0: 500: 3000))

%graphs for theta and altitude 
figure(5)
subplot(2,1,1)
ideal = Altitude(:,2);
real = Altitude(:,3);
time = Altitude(:,1);
plot(time,real,'bl','Linewidth',0.25);
hold on;
plot(time,ideal,'r','Linewidth',1);
xlabel('time (sec)');
ylabel('Altitude (m)');
title('Actual vs Reference Altitude');
legend('Actual Altitude', 'Reference Altitude');
subplot(2,1,2);
ideal = Theta(:,2);
real = Theta(:,3);
time = Theta(:,1);
plot(time,real,'bl','Linewidth',1);
hold on;
plot(time,ideal,'r','Linewidth',0.25);
xlabel('time (sec)');
ylabel('Theta (rad)');
title('Actual vs Reference Pitch');
legend('Actual Pitch', 'Reference Pitch');

% %graphs for the normal case 
figure(6)
subplot(2,1,1)
ideal = Velocity(:,2);
real = Velocity(:,3);
time = Velocity(:,1);
plot(time,real,'bl','Linewidth',1);
hold on;
plot(time,ideal,'r','Linewidth',0.25);
xlabel('time (sec)');
ylabel('Velocity (m/s)');
title('Actual vs Reference Velocity');
legend('Actual Velocity', 'Reference Velocity');
subplot(2,1,2);
ideal = Phi(:,2);
real = Phi(:,3);
time = Phi(:,1);
plot(time,real,'bl','Linewidth',1);
hold on;
plot(time,ideal,'r','Linewidth',0.5);
xlabel('time (sec)');
ylabel('Phi (rad)');
title('Actual vs Reference Roll');
legend('Actual Roll', 'Reference Roll');

%graphs for the normal case 
figure(7)
ideal = Psi(:,2);
real = Psi(:,3);
time = Psi(:,1);
plot(time,real,'bl','Linewidth',1);
hold on;
plot(time,ideal,'r','Linewidth',0.25);
xlabel('time (sec)');
ylabel('Psi (rad)');
title('Actual vs Reference Yaw');
legend('Actual Yaw', 'Reference Yaw');

%X-position 
figure(8)
ideal = Xs(:,2);
real = Xs(:,3);
time = Xs(:,1);
plot(time,real,'--bl','Linewidth',1.5);
hold on;
plot(time,ideal,'r','Linewidth',0.75);
xlabel('time (sec)');
ylabel('X-position (m)');
title('Actual vs Reference X-Position');
legend('Actual X-Position', 'Reference X-Position');

%Y-position
figure(9)
ideal = Ys(:,2);
real = Ys(:,3);
time = Ys(:,1);
plot(time,real,'--bl','Linewidth',1.5);
hold on;
plot(time,ideal,'r','Linewidth',0.75);
xlabel('time (sec)');
ylabel('Y-position (m)');
title('Actual vs Reference Y-Position');
legend('Actual Y-Position', 'Reference Y-Position');

%Z-position 
figure(10)
ideal = Zs(:,2);
real = Zs(:,3);
time = Zs(:,1);
plot(time,real,'--bl','Linewidth',2);
hold on;
plot(time,ideal,'r','Linewidth',1);
xlabel('time (sec)');
ylabel('Z-position (m)');
title('Actual vs Reference Z-Position');
legend('Actual Z-Position', 'Reference Z-Position');