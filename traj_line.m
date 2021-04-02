function [desired_state] = traj_line(t, ~)
%This file can be edited in whatever way you wish but you are not suppsed to edit the line above this
t_max = 30;
t = max(0, min(t, t_max));
if t<6
    z0=0;
    z1=2;
    vz0=0;
    vz1=0;
    az0=0;
    az1=0;
    t0=0;
    t1=6;
    A=[t0^5 t0^4 t0^3 t0^2 t0^1 1;t1^5 t1^4 t1^3 t1^2 t1^1 1;5*t0^4 4*t0^3 3*t0^2 2*t0 1 0;5*t1^4 4*t1^3 3*t1^2 2*t1 1 0;20*t0^3 12*t0^2 6*t0 2 0 0;20*t1^3 12*t1^2 6*t1 2 0 0;];    
    Bz=[z0;z1;vz0;vz1;az0;az1];
    Y=inv(A);
    Cz=Y*Bz;
    az=Cz(1,:);
    bz=Cz(2,:);
    cz=Cz(3,:);
    dz=Cz(4,:);
    ez=Cz(5,:);
    fz=Cz(6,:);
    posx = 0;
    posy = 0;
    posz = az*t^5+bz*t^4+cz*t^3+dz*t^2+ez*t+fz;
    vely = 0;
    velx = 0;
    velz = 5*az*t^4+4*bz*t^3+3*cz*t^2+2*dz*t+ez;
    accy = 0;
    accx = 0;
    accz = 20*az*t^3+12*bz*t^2+6*cz*t+2*dz;

elseif (t>6)&&(t<16)
    x1=0;
    x2=185;
    y1=0;
    y2=-65;
    vx1=0;
    vx2=12;
    ax1=0;
    ax2=0;
    vy1=0;
    vy2=-6.6;
    ay1=0;
    ay2=0;
    t1=6;
    t2=16;
    A=[t1^5 t1^4 t1^3 t1^2 t1^1 1;t2^5 t2^4 t2^3 t2^2 t2^1 1;5*t1^4 4*t1^3 3*t1^2 2*t1 1 0;5*t2^4 4*t2^3 3*t2^2 2*t2 1 0;20*t1^3 12*t1^2 6*t1 2 0 0;20*t2^3 12*t2^2 6*t2 2 0 0;];    
    By=[y1;y2;vy1;vy2;ay1;ay2];
    Bx=[x1;x2;vx1;vx2;ax1;ax2];
    Y=inv(A);
    Cx=Y*Bx;
    Cy=Y*By;
    ax=Cx(1,:);
    bx=Cx(2,:);
    cx=Cx(3,:);
    dx=Cx(4,:);
    ex=Cx(5,:);
    fx=Cx(6,:);
    ay=Cy(1,:);
    by=Cy(2,:);
    cy=Cy(3,:);
    dy=Cy(4,:);
    ey=Cy(5,:);
    fy=Cy(6,:);
    posx = ax*t^5+bx*t^4+cx*t^3+dx*t^2+ex*t+fx;
    posy = ay*t^5+by*t^4+cy*t^3+dy*t^2+ey*t+fy;
    posz = 2;
    vely = 5*ay*t^4+4*by*t^3+3*cy*t^2+2*dy*t+ey;
    velx = 5*ax*t^4+4*bx*t^3+3*cx*t^2+2*dx*t+ex;
    velz = 0;
    accy = 20*ay*t^3+12*by*t^2+6*cy*t+2*dy;
    accx = 20*ax*t^3+12*bx*t^2+6*cx*t+2*dx;
    accz = 0;
else
    x2=185;
    x3=195;
    y2=-65;
    y3=-155;
    vx2=12;
    vx3=0;
    vy2=-6.6;
    vy3=0;
    ax2=0;
    ax3=0;
    ay2=0;
    ay3=0;
    t2=16;
    t3=30;
    A=[t2^5 t2^4 t2^3 t2^2 t2^1 1;t3^5 t3^4 t3^3 t3^2 t3^1 1;5*t2^4 4*t2^3 3*t2^2 2*t2 1 0;5*t3^4 4*t3^3 3*t3^2 2*t3 1 0;20*t2^3 12*t2^2 6*t2 2 0 0;20*t3^3 12*t3^2 6*t3 2 0 0;];    
    Bx=[x2;x3;vx2;vx3;ax2;ax3];
    Y=inv(A);
    Cx=Y*Bx;
    By=[y2;y3;vy2;vy3;ay2;ay3];
    Y=inv(A);
    Cy=Y*By;
    ax=Cx(1,:);
    bx=Cx(2,:);
    cx=Cx(3,:);
    dx=Cx(4,:);
    ex=Cx(5,:);
    fx=Cx(6,:); 
    ay=Cy(1,:);
    by=Cy(2,:);
    cy=Cy(3,:);
    dy=Cy(4,:);
    ey=Cy(5,:);
    fy=Cy(6,:); 
    posx = ax*t^5+bx*t^4+cx*t^3+dx*t^2+ex*t+fx;
    posy = ay*t^5+by*t^4+cy*t^3+dy*t^2+ey*t+fy;
    posz = 2;
    vely = 5*ay*t^4+4*by*t^3+3*cy*t^2+2*dy*t+ey;
    velx = 5*ax*t^4+4*bx*t^3+3*cx*t^2+2*dx*t+ex;
    velz = 0;
    accy = 20*ay*t^3+12*by*t^2+6*cy*t+2*dy;
    accx = 20*ax*t^3+12*bx*t^2+6*cx*t+2*dx;
    accz = 0;  
    
% else
% y3=-155;
% y4=-195;
% vy3=0;
% vy4=0;
% ay3=0;
% ay4=0;
% t3=22;
% t4=29;
% A=[t3^5 t3^4 t3^3 t3^2 t3^1 1;t4^5 t4^4 t4^3 t4^2 t4^1 1;5*t3^4 4*t3^3 3*t3^2 2*t3 1 0;5*t3^4 4*t3^3 3*t3^2 2*t3 1 0;20*t4^3 12*t4^2 6*t4 2 0 0;20*t4^3 12*t4^2 6*t4 2 0 0;];
% By=[y3;y4;vy3;vy4;ay3;ay4];
% Y=inv(A);
% Cy=Y*By;
% ay=Cy(1,:);
% by=Cy(2,:);
% cy=Cy(3,:);
% dy=Cy(4,:);
% ey=Cy(5,:);
% fy=Cy(6,:);
% posx = 195;
% posy = ay*t^5+by*t^4+cy*t^3+dy*t^2+ey*t+fy;
% posz = 2;
% vely = 5*ay*t^4+4*by*t^3+3*cy*t^2+2*dy*t+ey;
% velx = 0;
% velz = 0;
% accy = 20*ay*t^3+12*by*t^2+6*cy*t+2*dy;
% accx = 0;
% accz = 0;


    
end


% output desired state
desired_state.pos = [posx; posy; posz];
desired_state.vel = [velx; vely; velz];
desired_state.acc = [accx; accy; accz];
desired_state.yaw = 0;
desired_state.yawdot = 0;

end
