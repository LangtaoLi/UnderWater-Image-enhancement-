x = [0.9118,0.7503,0.4926,0.2495,0.1759,0.1596,0.1560,0.1552,0.1552,0.1552,0.1552,0.1552,0.1552];
y=[0.005,0.01,0.02,0.04,0.06,0.08,0.1,0.2,0.4,0.6,0.8,0.9,1];
plot(y,x,'r');
hold on
%x2=[0.9190,0.7634,0.5029,0.2499,0.1722,0.1549,0.1509,0.1500,0.1500,0.1500,0.1500,0.1500,0.1500];
%plot(y,x2,'g');

%x3=[1,0.7903,0.5640,0.3358,0.2702,0.2595,0.2578,0.2577,0.2577,0.2577,0.2577,0.2577,0.2577];
%plot(y,x3,'y');

x4=[0.9190,0.9953,0.7923,0.5675,0.3354,0.2595,0.2681,0.2577,0.2572,0.2577,0.2555,0.2554,0.2554];
plot(y,x4,'b');

x5=[0.9000,0.8980,0.8768,0.8598,0.8526,0.8530, 0.853,0.8530,0.8530,0.85304, 0.8530,0.8530,0.8530]
plot(y,x5,'k');
xlabel('Clip Limit');
ylabel('SSIM');
hold off