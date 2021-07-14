function x_m = dsb_am(x, Ac, fc)
    fs = 600;
    t = 0 : 1/fs : 1 / fs * (length(x) - 1);
    x_m = Ac * cos(2 * pi * fc * t) .* x;
end