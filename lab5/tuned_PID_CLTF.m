K = 5.0; J =0.004; B =0.002; %Note:use your data instead
Kp=0.401; Ki =1.2538; Kd = 0.032; %set all initial value as 1
s = tf('s'); %Define s in Laplace domain
G = K/(s*(J*s+B)); %Motor transfer function
C = Kp + Ki/s+ Kd*s; %PID controller
dcm_p = feedback(C*G, 1); % calculation of a CLTF
ltiview('step',dcm_p, 0:0.1:10) %check system step response
