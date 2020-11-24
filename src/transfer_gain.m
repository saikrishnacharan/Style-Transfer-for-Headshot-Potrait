function [out_pyramid] = transfer_gain(pyramid1, pyramid2, gain, levels)
    for k = 1:levels-1
        out_pyramid{k} = pyramid1{k} .* gain{k};
    end
    out_pyramid{levels} = pyramid2{levels};
end