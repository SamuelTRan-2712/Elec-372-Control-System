%Use parameters of K and T , which you got in Lab #2
K = 5.0; J =0.004; B =0.002;
Kp=1; Ki =1; Kd = 1; %set all initial value as 1
s = tf('s'); %define s as term in Laplace
G = K/(s*(J*s+B)); %Define motor transfer function
C = Kp + Ki/s+ Kd*s; %define PID controller
