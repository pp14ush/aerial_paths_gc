function [desired_state] = traj_line(t, ~)

t_max = 20;
t = max(0, min(t, t_max));
t = t/t_max;
if t<.2
    t1 = t*5;
    posx=0;
    posy=0;
    posz=2*(10*t1.^3 - 15*t1.^4 + 6*t1.^5);
    velx=0;
    vely=0;
    velz =2*((30/t_max)*t1.^2 - (60/t_max)*t1.^3 + (30/t_max)*t1.^4);
    accx =0;
    accy =0;
    accz =2*((60/t_max^2)*t1 - (180/t_max^2)*t1.^2 + (120/t_max^2)*t1.^3);

else
     t3 = (t-.2)*(1/.8);
    posx = 0;
    posy = 150*(10*t3.^3 - 15*t3.^4 + 6*t3.^5);
    posz = 2;
    vely = 150*((30/t_max)*t3.^2 - (60/t_max)*t3.^3 + (30/t_max)*t3.^4);
    velx = 0;
    velz = 0;
    accy = 150*((60/t_max^2)*t3 - (180/t_max^2)*t3.^2 + (120/t_max^2)*t3.^3);
    accx = 0;
    accz = 0;
    

end

% output desired state
desired_state.pos = [posx; posy; posz];
desired_state.vel = [velx; vely; velz];
desired_state.acc = [accx; accy; accz];
desired_state.yaw = 0;
desired_state.yawdot = 0;

end
