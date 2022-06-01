 % it is a 3-pole Butterworth with stop band frequency centered at f0 = 5 KHz , and bandwidth BW = 2 KHz

 [zeros , poles , k] = buttap(3);
 % calcuate coeffecients of b(numerator) and a (denominator)
 [b,a] = zp2tf ( zeros, poles , k); 
 % declare band pass frequency f0=5KHZ and convert it to rad/sec(angular)
 freq = 100:100:100000;
 freqc = 5000 ; 
 wc = 2*pi*freqc ; 
 % declare bandwidth frequency bwf= 2KHZ and convert it to rad/sec(angular)
 bwf = 2000; 
 wband = 2*pi*bwf ;  
 % here calculate the new coefficents after low pass to stop pass filter

 % let their names bnew , anew
 % for explaination we are converting from analog values to angular domain 
 [ bnew , anew ] = lp2bs(b , a, wc , wband ); 
 % lets calculate the transfer function of the stop-pass filter
 w =2*pi*freq ; 
 Gofs = freqs(bnew , anew , w);
 semilogx(freq, abs(Gofs));      % plot freq response in hertz
 % add grid lines
 grid;
 hold on;
 title('Frequency respone plot for 3rd-order Butterworth band-elimination filter with fo=5kHZ , Bw = 2KHZ');
 xlabel('Frequency in :(HZ)');
 ylabel('Magnitude of the Transfer Function in (dB)');
