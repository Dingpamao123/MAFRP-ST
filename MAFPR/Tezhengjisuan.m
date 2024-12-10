function [D] = Tezhengjisuan(signal)

w=50;     % w是滑动窗口的大小1000
s=500000;    % 每个故障表示有1024个故障点
m = 400;    % 每种故障有1024个样本
D=[];
for i =1:m
    D = [D,signal(1+w*(i-1):w*(i-1)+s)];
    
end
D = D';


