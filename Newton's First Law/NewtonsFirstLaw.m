clear;
clc;
close all;

mass = 5; %mass - kg
x = [0, 0]; %initial position - m
v = [5, 0];  %initial velocity - m/s

dt = 0.01; %time step - s
total_time = 10; %simulation time - s

F1 = [10, 0]; %force 1 = 10 N ->
F2 = [-5, 0]; %force 2 = 5 N <-

Fnet = F1 + F2; %net force

time = 0:dt:total_time; %time array

%storing arrays
position = zeros(length(time), 2);
velocity = zeros(length(time), 2);
acceleration = zeros(length(time), 2);

%simulation loop
for i = 1:length(time)


    a = Fnet/mass; %calculate acceleration

    %update velocity and position
    v_new = v + a*dt;
    x_new = x + v_new*dt;

    %update current values
    v = v_new;
    x = x_new;

    %store results
    position(i, :) = x;
    velocity(i, :) = v;
    acceleration(i, :) = a;

end

% Display final results
disp("Final position (m):");
disp(x);

disp("Final velocity:");
disp(v);

disp("Acceleration");
disp(a);
