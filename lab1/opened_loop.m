K = 5.0; % Plant gain
B = 0.002; % Viscous friction (N.m.s/rad)
J = 0.0043; % kg.m^2
s = tf('s');
dcm_s = K/(J*s+B) % Speed (counts/s)
dcm_p = dcm_s/s % Position (counts)
ltiview('step',dcm_s, 0:0.1:10);
ltiview('step',dcm_p, 0:0.1:10);
