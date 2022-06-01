# Biosignals Tasks

### Youssef Ashraf - Mariam Ahmed

## Task 1 Q1 :
```
 Use the MATLAB bode function to plot the magnitude and phase
 characteristics of the 3-pole Butterworth low-pass filter with unity gain and
 normalized frequency at ω = 1 rad/sec. Print your code, results and figures.
```
## Solution :
Using the general rule at k=3  :
![image](https://user-images.githubusercontent.com/83988379/171443473-473cec44-0c7e-4d5d-80fb-ebfadc81ed0d.png)







```
>> % it is a 3-pole Butterworth low-pass filter
>> % thus k=3 >> for the G(s) 
>> 
>> % Parameters : W = 1 rad/sec , b0=1 , a0=1 , a1=2 , a2=1 , a3=1 
>> % let us Create 2 vectors carrying the coefficents of  bn and an >> b & a Respectively 
>> b = [0 0 0 1]

b =

     0     0     0     1

>> a = [ 1 2 2 1 ]

a =

     1     2     2     1

>> % now send them to bode to start plotting magnitude and phase where W =1 rad/sec 
>> bode(b,a) 
>> % to add grid lines we will use Grid Command where grid on displays the major grid lines for the current axes
>> grid
>> 
```

![task 1 fig 1](https://user-images.githubusercontent.com/83988379/171441113-39867627-dd73-4f84-8a23-91125f3c5754.PNG)



## Task 1 Q2 :

```
 Use the MATLAB buttap and lp2lp functions to find the transfer function
 of a third-order Butterworth low-pass filter with cutoff frequency fc =
 2KHz. Then, plot its frequency response. Print your code, results and figures.
```

## Solution :
```
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

```

