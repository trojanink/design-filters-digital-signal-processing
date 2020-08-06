% Program 3_4 
% Type 1 Chebyshev IIR Highpass Filter Design 
% 
N = input('Type in the order = '); 
Rp = input('Type in the passband ripple = '); 
Wn = input('Type in the passband cuttoff frequency = '); 
[ b,a ] = cheby1(N,Rp,Wn,'high'); 
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