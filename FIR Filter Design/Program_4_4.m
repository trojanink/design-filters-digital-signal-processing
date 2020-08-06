% Program 4_4 
% Design of Multiband Filter Using Hamming Window 
%
fpts=[0 0.28 0.3 0.5 0.52 1]; 
mval=[0.3 0.3 1.0 1.0 0.7 0.7]; 
%
b=fir2(100, fpts, mval); 
[ h, omega ] = freqz(b,1,512); 
plot(omega/pi, abs(h)); grid 
xlabel('Normalized frequency'); 
ylabel('Magnitude'); 
