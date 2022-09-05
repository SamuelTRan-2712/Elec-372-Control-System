s = tf('s'); %define s
C = s + 100;    % define controller
Plant = 5/(s^2*(s+5)); %define plant motor
K1 = 0.05;
K2 = 3;
T =(feedback(K1*C*feedback(Plant, K2*s), 1)) %Transfer function
Plant_K2 = feedback(Plant, K2*s);
Plant_K1 = feedback(Plant_K2, K1*C)

%output due to step input
t = 0: 0.001: 5;
input = ones(size(t));
y_input = lsim(T, input, t);

%output due to step disturbance
disturbance = ones(size(t));
y_disturbance = lsim(Plant_K1, input, t);

y = y_input + y_disturbance;
plot(t,y);
grid on;
