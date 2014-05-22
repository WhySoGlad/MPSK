function [ y ] = PSKmod( x, M )
%PSKmod function performs M-ary PSK modulation
%   Detailed explanation goes here

% check if variables are right format
pi=3.14;
f=5;
phi=pi;

x=[1 0 1 1 0];
nx=size(x,2);

i=1;
while i<nx+1
     t = i:0.001:i+1;
    if x(i)==1
       psk=sin(2*pi*f*t);
    else
        psk=sin(2*pi*f*t+phi);
    end
    
    subplot(3,1,3);
    plot(t,psk);
    hold on;
    grid on;
    axis([1 10 -2 2]);
  
    i=i+1;
end




j=1;
while j< x.length
    
    while M

    end
    
    j=j+1;
end






























end

