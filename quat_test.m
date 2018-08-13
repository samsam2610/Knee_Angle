load quat_test.mat
clf
%'ZYX', 'ZYZ', 'ZXY', 'ZXZ', 'YXZ', 'YXY', 'YZX', 'YZY', 'XYZ', 'XYX', 'XZY', and 'XZX
starting = 370;
rawData= test_9(starting:starting+350, :) ;
[r, c, v] = quat2angle(rawData, 'XYX');
r = rad2deg(r) + 115;
c = rad2deg(c);
v = rad2deg(v)*-1;

ups = 4;
dns = 1;

data = resample(r, 1, 4);
%xyx
% subplot(1,3,1);
% plot(r);
% subplot(1,3,2);
% plot(c);
% subplot(1,3,3);
% plot(v);
testInterval = 40; % ms
standardInterval = 10;

sample = downsample(HSS_Angle_9, 3);

subplot(3, 1, 1);
plot(sample);
title('HSS result');
ylabel('Angle');
grid on
grid minor

subplot(3, 1, 2);
plot(data);
title('M2M result');
ylabel('Angle');
grid on
grid minor

subplot(3, 1, 3);
plot(sample);
hold on
plot(data);
title('Overlay');
ylabel('Angle');
grid on
grid minor