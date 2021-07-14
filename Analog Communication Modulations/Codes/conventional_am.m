function signal = conventional_am(x, Ac, mu, fc)
    fs = 600;
    t = 0 : 1 / fs : 1 / fs * (length(x) - 1);
    signal = Ac .* (1 + mu .* x) .* cos(2 * pi * fc * t);
end