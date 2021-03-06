function [res] = getMaxFFTPixel(imFFT)
    Im = abs(imFFT);
    x=1; y=1;
    maxValue = 0.0;
    [N, M] = size(Im);
    for i=1:N
        for j=1:M
            if maxValue < abs(Im(i,j))
                maxValue = abs(Im(i,j));
                x=i; y=j;
            end
        end
    end
    res = [x y];
end