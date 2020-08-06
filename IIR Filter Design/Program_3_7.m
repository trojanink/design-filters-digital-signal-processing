% Program 3_7 
% Design of Butterworth lowpass filter using the 
% impulse invariance method 
N  = input('Type in filter order = '); 
Wn = input('Type in the 3-dB cutoff frequency= '); 
[num, den]= butter(N, Wn, 's'); 
FT = input('Type in the sampling frequency= '); 
[b, a] = impinvar(num,den,FT); 
[h, omega] = freqz(b,a, 512); 
mag= 20* log10(abs(h)); 
plot(omega/pi,mag);grid;
xlabel('Normalized frequency'); 
ylabel('Gain, dB'); 

