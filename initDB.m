
%Set image dimensions
w = 32; h = 32;


for n = 1:50

    image = imread(sprintf('DB/%d.jpg',n));

    subImageTemp = imresize((im2double(image)), [w, h]);
    
    temp = rgb2lab(subImageTemp);
    L = mean2(temp(:,:,1));
    a = mean2(temp(:,:,2));
    b = mean2(temp(:,:,3));
    LABvalue{n} = [L,a,b, n];    

end

save('DB.mat', 'LABvalue');