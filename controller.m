function [F, M] = controller(t, state, des_state, params)
%CONTROLLER  Controller for the quadrotor
%
%   state: The current state of the robot with the following fields:
%   state.pos = [x; y; z], state.vel = [x_dot; y_dot; z_dot],
%   state.rot = [phi; theta; psi], state.omega = [p; q; r]
%
%   des_state: The desired states are:
%   des_state.pos = [x; y; z], des_state.vel = [x_dot; y_dot; z_dot],
%   des_state.acc = [x_ddot; y_ddot; z_ddot], des_state.yaw,
%   des_state.yawdot
%
%   params: robot parameters

%   Using these current and desired states, you have to compute the desired
%   controls


% =================== Your code goes here ===================


% Gains
%for GC in this file this part (the gains) is the only thing that you are allowed to change, any other changes would lead to penalty/disqualification
%editable part starts here
Kd=[50; 50; 50;];
Kp=[200; 200; 200];
Kd_ang=[5; 5; 5];
Kp_ang=[700; 700; 700];
%editable part ends here






grav=params.gravity;
mass=params.mass;

% Compute command accelerations
cmd_accel=des_state.acc + ...
    Kd.*(des_state.vel-state.vel) + ...
    Kp.*(des_state.pos-state.pos);

% Thrust (force to overcome gravity plus achieve cmd_accel in z)
F=mass*(grav + cmd_accel(3));

% test for limits and force them
if F<params.minF
    F=params.minF;
end
if F>params.maxF
    F=params.maxF;
end

% compute desired roll and pitch
phi_des = (1/grav)*(cmd_accel(1)*sin(des_state.yaw) - ...
    cmd_accel(2)*cos(des_state.yaw));
theta_des = (1/grav)*(cmd_accel(1)*cos(des_state.yaw) + ...
    cmd_accel(2)*sin(des_state.yaw));

% build desired angle vector and angle rate vector
rot_des = [phi_des; theta_des; des_state.yaw];
omega_des = [0; 0; des_state.yawdot];

% Moment
M = Kp_ang.*(rot_des-state.rot) + ...
    Kd_ang.*(omega_des-state.omega);

% =================== Your code ends here ===================

end
