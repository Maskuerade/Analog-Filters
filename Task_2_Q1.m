
% declare band pass frequency f0=4KHZ and convert it to rad/sec(angular)
freq = 100:100:100000;
freqc = 4000 ;  
wc = 2*pi*freqc ;
% declare bandwidth frequency bwf= 2KHZ and convert it to rad/sec(angular)
bwf = 2000; 
wband = 2*pi*bwf ;  
% here calculate the new coefficents after low pass to band pass filter 
% let their names bnew , anew
% for explaination we are converting from analog values to angular domain 
[ bnew , anew ] = lp2bp(b , a, wc , wband ); 
% lets calculate the transfer function of the band-pass filter
w =2*pi*freq ; 
Gofs = freqs(bnew , anew , w);
semilogx(freq, abs(Gofs));      % plot freq response in hertz
% add grid lines
grid;
hold on;
title('Frequency respone plot for 3rd-order Butterworth band-pass filter with fo=4kHZ , Bw = 2KHZ');
xlabel('Frequency in :(HZ)');
ylabel('Magnitude of the Transfer Function in (dB)');