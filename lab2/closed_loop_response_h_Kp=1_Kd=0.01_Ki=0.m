time = data(:,2); %read Time
y=data(:,4); %set Encode1 Pos as y
u=data(:,3); % Control Position as input
zf = iddata(y,u,0.00884); %set Object iddata
Tfd2 = tfest(zf,2,0) % for second order

plot(time,y); % graph Encode1 Pos as a function of time
hold on; % to graph another output
plot(time,u) % graph CP as a function of time
