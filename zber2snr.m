function [ ber ] = zber2snr( x, M, f, SNR)
%
% @M - liczba taka że n=log2(M) należy do naturalnych > 1
% @f - częstotliwość sygnału modulującego
% @fs - próbkowanie/rozdzielczość
ber=zeros(1,length(SNR));   
[zesp,z1]=zPSKmod(x,M,f);

for i=1:length(SNR)
	y2=AWGNadd(zesp,SNR(i));
	[y3,z2]=zPSKdemod(y2,M);
    z=z1-z2;
    counter=0;
	for j=1:length(z)
		if(z(j)~=0)
			counter=counter+1;
		end
    end
	ber(i)=counter/length(z1);
end