%% load clown

load clown.mat
%% greyscale value at position 

clown(20,319)
%% shown image

imshow(clown)

%% rotate image

load clown.mat 
out = Rotate(clown, 30)
imshow(out)
%%
load clown.mat
out = Shear(clown, 0.1, 0.5)
imshow(out)