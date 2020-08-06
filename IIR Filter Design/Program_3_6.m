% Program 3_6 
% Estimation of the order of a Type II Chebyshev filter 
% 
FT = input('Type in the sampling frequency = '); 
Fp = input('Type in the passband edge frequency= '); 
Fp = input('Type in the stopband edge frequency= '); 
Rp = input('Type in the passband ripple= '); 
Rs = input('Type in the stopband attenuation='); 
Wp=Fp*2/FT; Ws=Fs*2/FT; 
[N, Wn ]=cheb2ord(Wp,Ws,Rp,Rs); 
fprintf('Order of filter is \%f \n',N);


