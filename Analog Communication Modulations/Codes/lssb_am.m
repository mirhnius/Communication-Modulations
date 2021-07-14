function x_c = lssb_am(x_m, Ac, fc)
    fs = 600;
    t = 0 : 1/fs : 1 / fs * (length(x_m) - 1);
    x_c = Ac / 2 .* (x_m .* cos(2 * pi * fc * t) + imag(hilbert(x_m)) .* sin(2 * pi * fc * t));