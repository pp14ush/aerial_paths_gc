function [desired_state] = traj_line(t, ~)
%This file can be edited in whatever way you wish but you are not suppsed to edit the line above this 
t_max = 30;
t = max(0, min(t, t_max));
%t = t/t_max;
if t<2
    t1 = 0.5*t;
    posx=0;
    posy=0;
    posz=2*(10*t1.^3 - 15*t1.^4 + 6*t1.^5);
    velx=0;
    vely=0;
    velz =2*((30/t_max)*t1.^2 - (60/t_max)*t1.^3 + (30/t_max)*t1.^4);
    accx =0;
    accy =0;
    accz =2*((60/t_max^2)*t1 - (180/t_max^2)*t1.^2 + (120/t_max^2)*t1.^3);

elseif t<14
     t3 = (t-2)*(1/12);
    posx = 185*(10*t3.^3 - 15*t3.^4 + 6*t3.^5);
    posy = -65*(10*t3.^3 - 15*t3.^4 + 6*t3.^5);
    posz = 2;
    velx = 185*((30/t_max)*t3.^2 - (60/t_max)*t3.^3 + (30/t_max)*t3.^4);
    vely = -65*((30/t_max)*t3.^2 - (60/t_max)*t3.^3 + (30/t_max)*t3.^4);
    velz = 0;
    accx = 185*((60/t_max^2)*t3 - (180/t_max^2)*t3.^2 + (120/t_max^2)*t3.^3);
    accy = -65*((60/t_max^2)*t3 - (180/t_max^2)*t3.^2 + (120/t_max^2)*t3.^3);
    accz = 0;
elseif t<18
     t3 = (t-14)*(1/4);
    posx = -20*(10*t3.^3 - 15*t3.^4 + 6*t3.^5) + 185;
    posy = -20*(10*t3.^3 - 15*t3.^4 + 6*t3.^5) - 65;
    posz = 2;
    velx = -20*((30/t_max)*t3.^2 - (60/t_max)*t3.^3 + (30/t_max)*t3.^4);
    vely = -20*((30/t_max)*t3.^2 - (60/t_max)*t3.^3 + (30/t_max)*t3.^4);
    velz = 0;
    accx = -20*((60/t_max^2)*t3 - (180/t_max^2)*t3.^2 + (120/t_max^2)*t3.^3);
    accy = -20*((60/t_max^2)*t3 - (180/t_max^2)*t3.^2 + (120/t_max^2)*t3.^3);
    accz = 0;
elseif t<24
     t3 = (t-18)*(1/6);
    posx = 30*(10*t3.^3 - 15*t3.^4 + 6*t3.^5)+165;
    posy = -70*(10*t3.^3 - 15*t3.^4 + 6*t3.^5)-85;
    posz = 2;
    velx = 30*((30/t_max)*t3.^2 - (60/t_max)*t3.^3 + (30/t_max)*t3.^4);
    vely = -70*((30/t_max)*t3.^2 - (60/t_max)*t3.^3 + (30/t_max)*t3.^4);
    velz = 0;
    accx = 30*((60/t_max^2)*t3 - (180/t_max^2)*t3.^2 + (120/t_max^2)*t3.^3);
    accy = -70*((60/t_max^2)*t3 - (180/t_max^2)*t3.^2 + (120/t_max^2)*t3.^3);
    accz = 0;
else
    t4 = (t-24)*(1/6);
    posx = 0*(10*t4.^3 - 15*t4.^4 + 6*t4.^5) + 195;
    posy = -40*(10*t4.^3 - 15*t4.^4 + 6*t4.^5) - 155;
    posz = 2;
    velx = 0*((30/t_max)*t4.^2 - (60/t_max)*t4.^3 + (30/t_max)*t4.^4);
    vely = -40*((30/t_max)*t4.^2 - (60/t_max)*t4.^3 + (30/t_max)*t4.^4);
    velz = 0;
    accx = 0*((60/t_max^2)*t4 - (180/t_max^2)*t4.^2 + (120/t_max^2)*t4.^3);
    accy = -40*((60/t_max^2)*t4 - (180/t_max^2)*t4.^2 + (120/t_max^2)*t4.^3);
    accz = 0;

end

% output desired state
desired_state.pos = [posx; posy; posz];
desired_state.vel = [velx; vely; velz];
desired_state.acc = [accx; accy; accz];
desired_state.yaw = 0;
desired_state.yawdot = 0;

end
