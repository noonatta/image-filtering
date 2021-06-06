function [buffer] =laplace_sharping(img,mask)


%applying convolution w.r.s to mask then will give edges of image
buffer = uint8(convn(double(img),mask,'same'));


subplot(1,2,1);
imshow(img,[]);
title('Real image');

subplot(1,2,2);
buffer=imsubtract(uint8(img),buffer);% subtracting to detect sharp image
imshow(uint8(buffer),[]);
title('Sharp image');
end