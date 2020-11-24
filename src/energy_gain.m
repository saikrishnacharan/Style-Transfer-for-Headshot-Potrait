function [gain] = energy_gain(energy1, energy2, levels)
    gaussian_ratio = 1;
    for k = 1:levels-1
        gaussian_ratio = gaussian_ratio * 1.2;
        % Energy Gain computation
        gain{k} = sqrt(energy2{k} ./ (energy1{k} + 0.00001));
        % Clipping the gains using thresholds.
        gain{k} = max(min(gain{k}, 2.9), 0.1);
        % Filtering the gain using gaussian filter
        gain{k} = imfilter(gain{k}, fspecial('gaussian', round(gaussian_ratio+1), gaussian_ratio));
        
    end
end