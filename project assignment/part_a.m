s = tf('s'); %define s
C = s + 100;    % define controller
Plant = 5/(s^2*(s+5)); %define plant motor
K1 = 0.05;
K2 = 3;
step(feedback(K1*C*feedback(Plant, K2*s), 1)); %step response
grid on;
