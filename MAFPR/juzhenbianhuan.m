function [D] = juzhenbianhuan(signal)

signal=signal';
w=1949;     % w是滑动窗口的大小1000
s=1949;    % 每个故障表示有1024个故障点
m = 513;    % 每种故障有1024个样本
D=[];
for i =1:m
    D = [D,signal(1+w*(i-1):w*(i-1)+s)];
    
end
D = D';
