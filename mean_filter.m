function [ img] =mean_filter(img,mask)

%Apply convolution with respect to mask choosen by user to smooth image and remove noise from it


   
img=convn(single(img),mask,'same');   





end

