function [desired_state] = traj_line(t, ~)
%This file can be edited in whatever way you wish but you are not suppsed to edit the line above this
t_max = 30;
t = max(0, min(t, t_max));
t = t/t_max;

if t<(10/30)
    t3 = (t-(0))*(30/10);
    
    posx = -195*(10*t3.^3 - 15*t3.^4 + 6*t3.^5);
    posy = -195*(10*t3.^3 - 15*t3.^4 + 6*t3.^5);
    posz = 2*(10*t3.^3 - 15*t3.^4 + 6*t3.^5);
    
    vely = -195*((30/t_max)*t3.^2 - (60/t_max)*t3.^3 + (30/t_max)*t3.^4);
    velx = -195*((30/t_max)*t3.^2 - (60/t_max)*t3.^3 + (30/t_max)*t3.^4);
    velz = 2*((30/t_max)*t3.^2 - (60/t_max)*t3.^3 + (30/t_max)*t3.^4);
    
    accy = -195*((60/t_max^2)*t3 - (180/t_max^2)*t3.^2 + (120/t_max^2)*t3.^3);
    accx = -195*((60/t_max^2)*t3 - (180/t_max^2)*t3.^2 + (120/t_max^2)*t3.^3);
    accz = 2*((60/t_max^2)*t3 - (180/t_max^2)*t3.^2 + (120/t_max^2)*t3.^3);
    
   
elseif (t<24/30)
    t3 = (t-(10/30))*(30/14);
    posx = -195+390*(10*t3.^3 - 15*t3.^4 + 6*t3.^5);
    posy = -195;
    posz = 2;
    vely = 0;
    velx = 390*((30/t_max)*t3.^2 - (60/t_max)*t3.^3 + (30/t_max)*t3.^4);
    velz = 0;
    accy = 0;
    accx = 390*((60/t_max^2)*t3 - (180/t_max^2)*t3.^2 + (120/t_max^2)*t3.^3);
    accz = 0;

else
    t3 = (t-(24/30))*(30/14);
    posx = 195-22.8*(10*t3.^3 - 15*t3.^4 + 6*t3.^5);
    posy = -195+390*(10*t3.^3 - 15*t3.^4 + 6*t3.^5);
    posz = 2;
    vely = 390*((30/t_max)*t3.^2 - (60/t_max)*t3.^3 + (30/t_max)*t3.^4);
    velx = -22.8*((30/t_max)*t3.^2 - (60/t_max)*t3.^3 + (30/t_max)*t3.^4);
    velz = 0;
    accy = 390*((60/t_max^2)*t3 - (180/t_max^2)*t3.^2 + (120/t_max^2)*t3.^3);
    accx = -22.8*((60/t_max^2)*t3 - (180/t_max^2)*t3.^2 + (120/t_max^2)*t3.^3);
    accz = 0;
  
end

% output desired state
desired_state.pos = [posx; posy; posz];
desired_state.vel = [velx; vely; velz];
desired_state.acc = [accx; accy; accz];
desired_state.yaw = 0;
desired_state.yawdot = 0;

end
