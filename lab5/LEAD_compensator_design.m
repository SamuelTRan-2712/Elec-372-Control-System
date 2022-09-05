K = 5.0; J =0.004; B =0.002;
Kc = 0.0004;
p1= B/J; z1 = p1/2;
s = tf('s'); %define s as term in Laplace
G = K/(s*(J*s+B)); %Define motor transfer
C = Kc*(s/z1+1)/(s/p1+1); % Define lead compensator
