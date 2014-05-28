function [ y ] = PSKdemod( x, M )
%PSKdemod function performs M-ary PSK demodulation
%   Detailed explanation goes here

% check if variables are right format

% n=log2(M);
% jesli y to serial to bierzmy ciagi dlugosci n, jesli wektor to sprawdzamy
% czy Xy nei sa wieksze lub rowne od 0 i mniejsze od M
fi0=2*pi/M;%kat fazowy

f = 3;% Frequency of Modulating Signal 
fs = 1000;% Sampling rate - This will define the resoultion
%t = (0+1/fs): 1/fs : 1;% Time for one bit
ylength=length(x)/fs;
y = zeros(1,ylength);%wektor wyjsciowy, pki co zerowy

j=0;
while j < ylength
    
    fftx=fft(x(fs*j+1:fs*(j+1)));
    y(j+1)=angle(fftx(f+1));
%   rfftx=real(fftx);
%    [ max_value, max_index ] = max(rfftx);
%    fftx2=zeros(length(fftx),1);
%    fftx2( max_index-1: max_index)= fftx( max_index-1: max_index);
%    xr=ifft(fftx2);

    j=j+1;
end
