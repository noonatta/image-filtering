function [edge_img]=laplace_detect_EDGE(img,mask)


%apply convolution_with_rs to mask to detect edges of image





edge_img = convn(double(img),mask,'same');




end