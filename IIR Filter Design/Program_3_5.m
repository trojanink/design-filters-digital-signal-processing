% Program 3_5 
% Âutterworth Bandpass Filter Design 
% 
N = input('Type in the order = '); 
M=N/2;
W1 = input('Lower cuttoff frequency = '); 
W2 = input('Upper cuttoff frequency = '); 
Wn=[W1 W2];
[ b,a ] = butter(M, Wn); 
disp('Numerator polynomial'); 
disp(b) 
disp('Denominator polynomial'); 
disp(a) 
w=0:0.01/pi:pi; 
h=freqz(b,a,w); 
gain=20*log10(abs(h)); 
plot(w/pi,gain); grid; 
xlabel('Normalized frequency'); 
ylabel('Gain, dB');