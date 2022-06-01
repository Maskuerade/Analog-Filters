# Biosignals-Tasks


## Task 1 :
```
 Use the MATLAB bode function to plot the magnitude and phase
 characteristics of the 3-pole Butterworth low-pass filter with unity gain and
 normalized frequency at ω = 1 rad/sec. Print your code, results and figures.
```
## Solution :
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
>> % to add grid lines we will use Grid Command where grid on displays the major grid lines for the current axes returned by the gca command
>> grid
>> 
```
![task 1 fig](https://user-images.githubusercontent.com/83988379/171440895-87310e94-a82d-479a-9ef8-0d3df89dd1fb.PNG)
