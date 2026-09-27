clear;
clc;
close all;

%parameters
mass = input("Enter mass (kg): "); %mass - kg
x = input("Enter position [x y] (m): "); %initial position - m
v = input("Enter velocity [vx vy] (m/s): ");  %initial velocity - m/s

%initial values
x_initial = x;
v_initial = v;

dt = input("Enter time step (s): "); %time step - s
T = input("Enter total simulation time (s): "); %simulation time - s

F1 = input("Enter Force 1 [Fx Fy] (N): "); %force 1 = 10 N ->
F2 = input("Enter Force 2 [Fx Fy] (N): "); %force 2 = 5 N <-

Fnet = F1 + F2; %net force

time = 0:dt:T; %time array
if time(end) ~= T
    error("Final simulation time does not match T(total time)!");
end

%storing arrays
position = zeros(length(time), 2);
velocity = zeros(length(time), 2);
acceleration = zeros(length(time), 2);

%store initial state
position(1, :) = x;
velocity(1, :) = v;
acceleration(1, :) = Fnet/mass;

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
    position(i, :) = x_new;
    velocity(i, :) = v_new;
    acceleration(i, :) = a;

end

%display final results
fprintf("\nSimulation results \n\n");

fprintf("Initial state\n");
fprintf("Initial position: [%.3f, %.3f] m\n", x_initial(1), x_initial(2));
fprintf("Initial velocity: [%.3f, %.3f] m/s\n", v_initial(1), v_initial(2));

fprintf("\nForces\n");
fprintf("Force 1: [%.3f, %.3f] N\n", F1(1), F1(2));
fprintf("Force 2: [%.3f, %.3f] N\n", F2(1), F2(2));
fprintf("Net force: [%.3f, %.3f] N\n", Fnet(1), Fnet(2));

fprintf("\nAcceleration\n");
fprintf("Acceleration: [%.3f, %.3f] m/s^2\n", a(1), a(2));

fprintf("\nFinal state\n");
fprintf("Final position: [%.3f, %.3f] m\n", x_new(1), x_new(2));
fprintf("Final velocity: [%.3f, %.3f] m/s\n", v_new(1), v_new(2));

fprintf("\nSimulation Information\n");
fprintf("Total simulation time: %.3f s\n", T);
fprintf("Simulation steps: %.0f\n", length(time) - 1);

