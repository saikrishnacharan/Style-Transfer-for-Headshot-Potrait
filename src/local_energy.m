function [localenergy] = local_energy(stack, scales)
    gaussian_ratio = 1;
    for k = 1:scales-1
        %updating scales
        gaussian_ratio = gaussian_ratio * 1.2;
        localenergy{k} = imfilter(stack{k} .* stack{k}, fspecial('gaussian', round(gaussian_ratio+1), gaussian_ratio));
        
        
    end
    disp('dussa')
end