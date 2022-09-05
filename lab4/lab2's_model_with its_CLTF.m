time = data(:,2); %read Time
y=data(:,4); %set Encode1 Pos as y
u=data(:,3); % Control Position as input
zf = iddata(y,u,0.00884); %set Object iddata
Tfd2 = tfest(zf,2,0); % for second order
plot(time,y);

K=5, B=0.002, J=0.02; %set K, B and J
Kp = 0.1, Kd = 0.01; %set Kp and Kd
s = tf('s'); %call transfer function
cltf = (K*Kp)/(J*s^2+(B+K*Kd)*s + K*Kp); %get closed loop transfer function when s is defined as a term for transfer function

ltiview('step',Tfd2, 0:0.1:10)
% To view Tfd2 with step response where time varies from 0 to 10 with step size of 0.1 second
ltiview('step',cltf, 0:0.1:10)
% To view cltf with step response where time varies from 0 to 10 with step size of 0.1 second

