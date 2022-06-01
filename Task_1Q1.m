% it is a 3-pole Butterworth low-pass filter
% thus k=3 >> for the G(s) 

% Parameters : W = 1 rad/sec , b0=1 , a0=1 , a1=2 , a2=1 , a3=1 
% let us Create 2 vectors carrying the coefficents of  bn and an >> b & a Respectively 
b = [0 0 0 1];
a = [ 1 2 2 1 ];
% now send them to bode to start plotting magnitude and phase where W =1 rad/sec 
bode(b,a) 
% to add grid lines we will use Grid Command where grid on displays the major grid lines for the current axes returned by the gca command
grid
