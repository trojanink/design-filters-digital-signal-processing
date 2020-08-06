% Program 4_3 
% Design of Lowpass Filter Using Kaiser Window 
% Length=61, Beta=4.533514 
%
format long 
kw=kaiser(61, 4.533514); 
b=fir1(60, 0.3, kw) 
[ h, omega ] = freqz(b,1,512); 
mag=20*log10(abs(h)); 
plot(omega/pi, mag); grid 
xlabel('Normalized frequency'); 
ylabel('Gain, dB'); 

