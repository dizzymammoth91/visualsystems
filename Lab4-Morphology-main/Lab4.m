%% task 1

A = imread('assets/text-broken.tif');
B1 = [0 1 0;
     1 1 1;
     0 1 0];    % create structuring element
A1 = imdilate(A, B1);
montage({A,A1})

%

B2 = [1 1 1;
      1 1 1;
      1 1 1];    

A2 = imdilate (A, B2);
montage({A,A2})

%
Bx = [1 0 1;
      0 1 0;
      1 0 1];

Ax = imdilate(A, Bx)

montage({A,A1,A2,Ax})

%% Image double dialation

A1x = imdilate(A1, B1)

montage({A1, A1x})



%%

clear all
close all
A = imread('assets/wirebond-mask.tif');
SE2 = strel('disk',2);
SE10 = strel('disk',10);
SE20 = strel('disk',20);
E2 = imerode(A,SE2);
E10 = imerode(A,SE10);
E20 = imerode(A,SE20);
montage({A, E2, E10, E20}, "size", [2 2])

%% Task 2 - Morphological Filtering with Open and Close
% Opening = Erosion + Dilation 

% load image into f
f = imread("assets\fingerprint-noisy.tif");

% generate a 3x3 structuring element SE
SE = strel('square',3);

% Erode f to produce fe.
fe = imerode(f, SE);

% Dilate fe to produce fed.
fed = imdilate(fe, SE);

% Open f to produce fo.
fo = imdilate(fe, SE);
%%

% Show f, fe, fed and fo as a 4 image montage.
montage({f, fe, fed, fo}, "size", [2 2]);

%%

% add closing operation 
% Close fe to produce fc.
fc = imclose(fo, SE);

% Show the result of the closing operation
montage({fo, fc}, "size", [1 2]);


%% Task 3 - Boundary Detection 
%convert into binary image
clear all
close all
I = imread('assets/blobs.tif');
Im = imcomplement(I);
level = graythresh(Im);
BW = imbinarize(Im, level);

montage({I, Im, BW})

%%
% Perform boundary detection using the morphological gradient
Ie = imerode(BW, strel('square', 3));

boundary = BW - Ie;

% display as montage {I, In, BW, BW boundary detection}
montage({Im, Ie, BW, boundary})

%% improve

Id = imdilate(Ie, strel('square', 3));
boundaryx = Id - Ie;

montage({boundary, boundaryx})

%% Task 4 - Function bwmorph - thinning and thickening

clear all 
close all 

f = imread("assets\fingerprint.tif");
I = imcomplement(f);
level = graythresh(I);
BW = imbinarize(I, level);

montage({f, BW})

%% thinning image up to 5 times

g1 = bwmorph(BW, "thin", 1);
g2 = bwmorph(BW, "thin", 2);
g3 = bwmorph(BW, "thin", 3);
g4 = bwmorph(BW, "thin", 4);
g5 = bwmorph(BW, "thin", 5);

montage({BW, g1, g2, g3, g4, g5})

%% thinning to infinity

ginf = bwmorph(BW, "thin", inf);

imshow(ginf)

%% change colour

WB = imcomplement(ginf);

imshow(WB)

%% Task 5 - Connected Components and labels

clear all
close all

t = imread('assets/text.png');
imshow(t)
CC = bwconncomp(t)

%%
numPixels = cellfun(@numel, CC.PixelIdxList);
[biggest, idx] = max(numPixels);
t(CC.PixelIdxList{idx}) = 0;
figure
imshow(t)

%% Task 6 - Morphological Reconstruction

clear all
close all
f = imread('assets/text_bw.tif');
se = ones(17,1);
g = imerode(f, se);
fo = imopen(f, se);     % perform open to compare
fr = imreconstruct(g, f);
montage({f, g, fo, fr}, "size", [2 2])

%% imfill

ff = imfill(f);
figure
montage({f, ff})

%% Task 7 

clear all; close all;
f = imread('assets/headCT.tif');
se = strel('square',3);
gd = imdilate(f, se);
ge = imerode(f, se);
gg = gd - ge;
montage({f, gd, ge, gg}, 'size', [2 2])

%% Challenge

clear all; close all;
f = imread('assets/fillings.tif');
ff = imfill(f);
%% image processing

% Adjust contrast using imadjust
ff_contrast = imadjust(ff, [0.87 1.0], [0 1]);



% Convert the filled image to binary
ff_bin = imbinarize(ff_contrast);


montage({f, ff, ff_contrast, ff_bin})

%% split image into two 

topfilling = ff_bin(1:floor(end/2), :);

bottomfilling = ff_bin(floor(end/2)+1:end, :);

figure
imshow(topfilling)

figure
imshow(bottomfilling)

%%

count = nnz(topfilling)

count = nnz(bottomfilling)
