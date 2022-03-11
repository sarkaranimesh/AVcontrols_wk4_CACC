%%
clc; clear all ; close all;

%% CACC vehicle parameters
% headway const
h =0.9;

% lead vehicle drive dynamics
tau0 = 0.1; % lead vehicle time const
tau = 0.002;  % feed forward filter closed loop bandwidth

% platoon vehicle parameters.
 tau1 = 0.5;
 tau2 = 0.7;
 tau3 = 0.3;
%     tau4 = 0.7;

Lambda1 = 0.5;
Lambda2 = 0.7;
Lambda3 = 0.75;

% controller parameters
Kp =1.5;
Kd = 1.2;


%%  simulaiton plots
