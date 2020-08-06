% Program 4_1 
%
% Design of Equiripple Linear-Phase FIR Filter 
format long 
N=input('Type in the filter order = '); 
f=input('Type in the band edges  = '); 
m=input('Type in the magnitude values = '); 
b=remez(N,f,m); 
disp('FIR filter coefficients'); 
disp(b) 
[ h, w ] = freqz(b,1,256); 
mag=20*log10(abs(h)); 
plot(w/pi,mag); grid 
xlabel('Normalized frequency');  
ylabel('Gain, dB');