function v = image2vector(image)
    imgSize = size(image);
    v = reshape(image,[imgSize(1)*imgSize(2)*imgSize(3) 1]);
    
end