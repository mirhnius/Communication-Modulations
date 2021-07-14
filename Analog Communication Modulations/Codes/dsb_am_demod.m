function [x_m, y, z] = dsb_am_demod(x_c, Ac, fc)
    fs = 600;
    t = 0 : 1/fs : 1 / fs * (length(x_c) - 1);
    y = 2 * cos(2 * pi * fc * t) .* x_c;
    z = lowpass(y, mod(abs(fc) / 2, fs / 4) + eps, fs);
    x_m = z / Ac;
end