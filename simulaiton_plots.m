%% CACC simulation data
time = out.tout;
lead_v = out.v_0;
vehicle1_v = out.v_1;
vehicle2_v = out.v_2;
vehicle3_v =out.v_3;
% position
lead_x = out.x_0;
vehicle1_x = out.x_1;
vehicle2_x = out.x_2;
vehicle3_x = out.x_3;

%% plots
figure()
plot(time , lead_v, 'linewidth',2); xlabel('time (s)'); ylabel('Velocity mps'); grid on;
hold on;
plot(time , vehicle1_v, 'linewidth',2);
plot(time , vehicle2_v, 'linewidth',2);
plot(time , vehicle3_v, 'linewidth',2);
legend('lead vehicle', 'vehicle 1','vehicle 2', 'vehicle 3');

figure()
plot(time , lead_x, 'linewidth',2); xlabel('time (s)'); ylabel('Position m'); grid on;
hold on;
plot(time , vehicle1_x, 'linewidth',2);
plot(time , vehicle2_x, 'linewidth',2);
plot(time , vehicle3_x, 'linewidth',2);
legend('lead vehicle', 'vehicle 1','vehicle 2', 'vehicle 3');

%% time headway
t_h1 = (lead_x-vehicle1_x)./vehicle1_v;
t_h2 = (vehicle1_x-vehicle2_x)./vehicle2_v;
t_h3 =  (vehicle2_x-vehicle3_x)./vehicle3_v;

figure()
plot(t_h1,'linewidth',2 ); hold on ; grid on 
plot(t_h2,'linewidth',2);
plot(t_h3,'linewidth',2);
legend('lead vehicle & vehicle 1', 'vehicle 1 & vehicle 2','vehicle 2 & vehicle 3');

