time = data(:,2); % set Time as the second column of raw data
y=data(:,4); % set Encode1 Pos as y and took the data from the
4
th column of raw data
u=data(:,6); % Control Effort as input
dy= diff(y); % We need speed as Output
dy(end +1) = dy(end); % restore sector size to N
zf = iddata(dy,u,0.00884) % set Object iddata
tf1 = tfest(zf,1,0) % for First order
yyaxis right; % create y axis on the right-hand side
plot(time, dy); % plot speed as a function of time and this
correspond to the y axis on the right
hold on; % graph another output
yyaxis left; % create y axis on the left-hand side
plot(time, u); % plot Control Effort as a function of time and this
correspond to the y axis on the left
hold off;
