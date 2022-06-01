% it is a 3-pole Butterworth low-pass filter with cut off freq fc=2KHz 
[zeros , poles , k] = buttap(3);
% calcuate coeffecients of b(numerator) and a (denominator)
[b,a] = zp2tf ( zeros, poles , k);
% range the frequency and convert it to rad/sec(angular)
freq = 1000:30:10000;
w = 2*pi*freq;
% declare cutoff frequency and convert it to rad/sec(angular)
freqc = 2*1000 ;  % we multiplied by 1000 to convert kHZ to HZ
wc = 2*pi*freqc; 
% here calculate the new coefficents after low pass to low pass filter 
% let their names bnew , anew
% for explaination we are converting from analog values to angular domain 
[ bnew , anew ] = lp2lp(b , a, wc); 
% lets calculate The transfer function of the  new filtered  
Gofs = freqs(bnew , anew , w);
semilogx(w, abs(Gofs));      % plot it 
% add grid lines
grid;
hold on ;
title('Frequency respone plot for 3rd-order Butterworth low-pass filter with fc = 2KHz');
xlabel('Angular Frequency in :(rad/sec)');
ylabel('Magnitude of the Transfer Function in (dB) ');
