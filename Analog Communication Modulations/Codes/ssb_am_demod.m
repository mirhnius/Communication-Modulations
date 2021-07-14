function [x_m, y, z] = ssb_am_demod(x_c, Ac, fc)
    fs = 600;
    t = 0 : 1/fs : 1 / fs * (length(x_c) - 1);
    y = (2 * x_c) .* (2 * cos(2 * pi * fc * t));
    z = lowpass(y, mod(abs(fc) / 2, fs / 4) + eps, fs);
    x_m = z / Ac;
    