% Program 3_2 
% 4-th Order Analog Butterworth Lowpass Filter Design 
% 
format long 
% Determine zeros and poles 
[z, p, k] = buttap(4); 
disp('Poles are at'); 
disp(p); 
% Determine transfer function coefficients 
[pz, pp] = zp2tf(z, p, k); 
% Print coefficients in ascending powers of s 
disp('Numerator polynomial'); 
disp(pz) 
disp('Denominator polynomial'); 
disp(real(pp)) 
omega = [0: 0.01: 5]; 
% Compute and plot frequency response 
h = freqs(pz,pp,omega); 
plot (omega,20*log10(abs(h)));grid 
xlabel('Normalized frequency'); ylabel('Gain, dB'); 