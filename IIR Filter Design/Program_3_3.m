% Program 3_3 
% Program to Design Type 1 Chebyshev Lowpass Filter 
% 
% Read in the filter order, passband edge frequency 
% and passband ripple in dB 
N = input('Order = '); 
Wn = input('Passband edge frequency in rad/sec= '); 
Rp = input('Passband ripple in dB = '); 
% Determine the coefficients of the transfer function 
[num, den ]  = cheby1(N,Rp,Wn,'s'); 
% Compute and plot the frequency response 
omega = [0: 200:12000*pi]; 
h = freqs(num,den,omega);  
plot (omega/(2*pi),20*log10(abs(h))); 
xlabel('Frequency, Hz'); ylabel('Gain, dB');