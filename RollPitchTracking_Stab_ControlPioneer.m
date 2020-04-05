% clear all
% clc

%Lateral (Roll) 

%Pioneer Roll Tracking 
Along = struct2cell(load('A_long.mat'));
Alat = struct2cell(load('A_latdir.mat'));
Blong = struct2cell(load('B_long.mat'));
Blat = struct2cell(load('B_latdir.mat'));

Along = Along{1,1};
Alat = Alat{1,1};
Blong = Blong{1,1};
Blat = Blat{1,1};

% Alat(3,:) = zeros();
% Alat(:,3) = zeros();
% Blat(:,2) = [];
% Blat(3,1) = zeros();

% Feedback Stability Control Desing
P2 = [-8.5123 -1.3262+3.8977i -1.3262-3.8977i 0.1163];
K2=place(Alat,Blat,P2);
% 
eig(Alat-Blat*K2)

% Convert State Space to Transfer Functions of Root Locus Analysis for 
% Roll transfer function

% Open Loop
[numOL2,DenOL2]=ss2tf(Alat,Blat,eye(4,4),zeros(4,2),1)
tf(numOL2(4,:),DenOL2)
roots([DenOL2])

% Closed Loop
Alat_cl = Alat-Blat*K2;
[numCL2,DenCL2]=ss2tf(Alat_cl,Blat,eye(4,4),zeros(4,2),1)
sys_input=tf(numCL2(4,:),DenCL2)
roots([DenCL2])

% figure
% rlocus(sys_input)

%Longitudinal (Pitch) 

% Feedback Stability Control Desing
P1 = [-3.01+5.87i -3.01-5.87i -0.0255+0.307i -0.0255-0.307i];
K1=place(Along,Blong,P1);
% 
eig(Along-Blong*K1)

% Convert State Space to Transfer Functions of Root Locus Analysis for 
% Roll transfer function

% Open Loop
[numOL1,DenOL1]=ss2tf(Along,Blong,eye(4,4),zeros(4,1),1)
tf(numOL1(4,:),DenOL1)
roots([DenOL1])

% Closed Loop
Along_cl = Along-Blong*K1;
[numCL1,DenCL1]=ss2tf(Along_cl,Blong,eye(4,4),zeros(4,1),1)
sys_input=tf(numCL1(4,:),DenCL1)
roots([DenCL1])
