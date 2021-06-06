i=imread("sharp.jpg");

i=imresize(i, [512 512]);


msk=[0 0 -1 0 0;0 -2 -1 -2 0; -1 -2 16 -2 -1;0 -2 -1 -2 0; 0 0 -1 0 0];
i=convn(i,msk);

f=figure();
imshow(i);

