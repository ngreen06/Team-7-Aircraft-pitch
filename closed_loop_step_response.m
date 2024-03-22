s = tf('s');

P_pitch = (1.15*s^2+0.51*s+0.057)/(s^4+1.046*s^3+1.154*s^2+0.287*s);

t = 0:0.01:10;

step(0.2*P_pitch,t);

axis([0 10 0 0.8]);

ylabel('pitch angle (rad)');

title('Open-loop Step Response');

sys_cl = feedback(P_pitch,1);

step(0.2*sys_cl);

ylabel('pitch angle (rad)');

title('Closed-loop Step Response');

poles = pole(sys_cl);

zeroes = zero(sys_cl);

poles
zeroes

