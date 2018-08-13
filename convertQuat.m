function [r, c, v] = convertQuat(data, stringValue)

[r, c, v] = quat2angle(data, stringValue);
r = rad2deg(r);
c = rad2deg(c);
v = rad2deg(v);