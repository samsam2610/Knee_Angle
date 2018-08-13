load quat_test.mat
clf

%'ZYX', 'ZYZ', 'ZXY', 'ZXZ', 'YXZ', 'YXY', 'YZX', 'YZY', 'XYZ', 'XYX', 'XZY', and 'XZX

rotationList = ['ZYX'; 'ZYZ'; 'ZXY'; 'ZXZ'; 'YXZ'; 'YXY'; 'YZX'; 'YZY'; 'XYZ'; 'XYX'; 'XZY'; 'XZX'];

len = size(rotationList, 1);

for i = 1:len
    rotationCode = rotationList(i, :);
    data = test_9(300:1200, :);
    [r, c, v] = convertQuat(data, rotationCode);
    
    subplot(len, 3, i*3 - 2)
    plot(r, 'Color', 'm')
    
    subplot(len, 3, i*3 - 1)
    plot(c, 'Color', 'r')
    
    subplot(len, 3, i*3)
    plot(v, 'Color', 'g')
end