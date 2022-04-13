function [mean_rgb] = calcMean(pixel, weight)
   
    W = sum(weight);
    
    %get the values for each of the three RGB values
    pixel_r = pixel(1, :);
    pixel_g = pixel(2, :);
    pixel_b = pixel(3, :);
    
    %calculate the mean for each channel 
    mean_r = (1 / W) * (sum(pixel_r .* weight));
    mean_g = (1 / W) * (sum(pixel_g .* weight));
    mean_b = (1 / W) * (sum(pixel_b .* weight));
    
    %combine the mean values
    mean_rgb = [mean_r;mean_g;mean_b];
    
end
