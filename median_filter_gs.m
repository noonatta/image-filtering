%median_filter_for_gray_scale to remove salt_and_pepper noise
function [ buffer] =median_filter_gs(noise)


[r,c]=size(noise);
buffer=zeros(r,c);
if r<2 || c<2
    
    f=errordlg('Image size is too small to apply median filter');
    return;
    
else
    for i=2:r-1
        for j=2:c-1
            flt=[noise(i-1,j-1),noise(i-1,j),noise(i-1,j+1),noise(i,j-1),noise(i,j),noise(i,j+1),noise(i+1,j-1),noise(i+1,j),noise(i+1,j+1)];
            %storing median of pixel[2,2] and its 7 neigbours pixel value of noisy image in buffer
            buffer(i,j)=median(flt); % median function will sort 8 pixels value and then find median from it to store in buffer
            %buffer will be image withut salt_and_pepper noise
            
        end
        
    end
end

end
