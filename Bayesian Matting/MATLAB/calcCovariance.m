function [covariance] = calcCovariance(pixel, weight, mean_rgb)

    W = sum(weight);
    
    %get the values for each of the three RGB values
    pixel_r = pixel(1, :);
    pixel_g = pixel(2, :);
    pixel_b = pixel(3, :);
    
    %obtain the mean values for each channel
    mean_r = mean_rgb(1);
    mean_g = mean_rgb(2);
    mean_b = mean_rgb(3);
    
    %middle matrices
    middle_r = (pixel_r - mean_r);
    middle_g = (pixel_g - mean_g);
    middle_b = (pixel_b - mean_b);
    
    %combine those middles matrices
    middle = [middle_r;middle_g;middle_b];
    
    %calculate the covariance
    covariance = (1 / W) * ((weight .* middle) * middle');

end

