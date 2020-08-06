% Program 4_2 
%
% Kaiser Window Generation Program 
N= input('Type in the window length = '); 
beta=input('Type in the value of beta = '); 
w=kaiser(N,beta); 
disp('Window Coefficients'); 
disp(w) 
[h, omega ] = freqz(w,1,256); 
mag=20*log10(abs(h)); 
plot(omega/pi, mag); grid 
xlabel('Normalized frequency'); 
ylabel('Gain, dB'); 