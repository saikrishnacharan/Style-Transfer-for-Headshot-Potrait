function [stacks] =  laplacianstacks(img, levels)
    img_old = img;
    cur_gauss = 1.2;
    img_cur = imfilter(img, fspecial('gaussian', round(cur_gauss+1), cur_gauss));
    % laplacian stacks are difference of successive Gaussians with different standard deviations
    for k = 1:levels-1
        stacks{k} = img_old - img_cur;
        img_old = img_cur;
        cur_gauss = cur_gauss * 1.2;
        img_cur = imfilter(img, fspecial('gaussian', round(cur_gauss+1), cur_gauss));
    end
    stacks{levels} = img_cur;
    disp('lassa')
end
