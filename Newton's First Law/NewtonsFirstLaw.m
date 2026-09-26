clear;
clc;
close all;

mass = input("Enter mass (kg): "); %mass - kg
x = input("Enter position [x y] (m): "); %initial position - m
v = input("Enter velocity [vx vy] (m/s): ");  %initial velocity - m/s

dt = input("Enter time step (s): "); %time step - s
total_time = input("Enter total simulation time (s): "); %simulation time - s

F1 = input("Enter Force 1 [Fx Fy] (N): "); %force 1 = 10 N ->
F2 = input("Enter Force 2 [Fx Fy] (N): "); %force 2 = 5 N <-

Fnet = F1 + F2; %net force

time = 0:dt:total_time; %time array

%storing arrays
position = zeros(length(time), 2);
velocity = zeros(length(time), 2);
acceleration = zeros(length(time), 2);

%simulation loop
for i = 2:length(time)

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

%display final results
fprintf("\nSimulation results \n\n")

fprintf("Final position: [%.3f, %.3f] m\n", x(1), x(2));
fprintf("Final velocity: [%.3f, %.3f] m/s\n", v(1), v(2));
fprintf("Acceleration: [%.3f, %.3f] m/s^2\n", a(1), a(2));
fprintf("Net force: [%.3f, %.3f] N\n", Fnet(1), Fnet(2))
