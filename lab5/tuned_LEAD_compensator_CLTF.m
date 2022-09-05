K = 5.0; J =0.004; B =0.002; %use your data instead
Kc = 0.0004;
p1= 1.1765; z1 = 0.3448; % tuned values
s = tf('s'); % define s as a term in Laplace domain
G = K/(s*(J*s+B)); %define the Motor transfer function
C = Kc*(s/z1+1)/(s/p1+1) % define lead compensator
dcm_p = feedback (C*G, 1) % calculation of a CLTF
ltiview ('step', dcm_p, 0:0.1:10) %check system step response
