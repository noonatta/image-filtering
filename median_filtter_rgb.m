
function [buffer] =median_filtter_rgb(noise)



[r,c,z]=size(noise);
buffer=zeros(r,c,z);
if r<2 || c<2
    
    f=errordlg('Image size is too small to apply median filter');
    return;
    
else
    for i=2:r-1
        for j=2:c-1
            for k=1:3
                flt=[noise(i-1,j-1,k),noise(i-1,j,k),noise(i-1,j+1,k),noise(i,j-1,k),noise(i,j,k),noise(i,j+1,k),noise(i+1,j-1,k),noise(i+1,j,k),noise(i+1,j+1,k)];
                %storing median of pixel[2,2] and its 7 neigbours pixel value of noisy image in buffer with respect to rgb
                buffer(i,j,k)=median(flt);
            end
            
        end
    end
end

end
