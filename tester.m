len = 10; % Number of symbols
M = 16; % Size of alphabet
msg = randi([0 M-1],len,1); % Original signal
PSKmsg=PSKmod(msg,M);

