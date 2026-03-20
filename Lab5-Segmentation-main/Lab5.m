% task 1 

clear all
close all
f = imread('assets/crabpulsar.tif');
w = [-1 -1 -1;
     -1  8 -1;
     -1 -1 -1];
g1 = abs(imfilter(f, w));     % point detected
se = strel("disk",1);
g2 = imerode(g1, se);         % eroded
threshold = 100;
g3 = uint8((g2 >= threshold)*255); % thresholded
montage({f, g1, g2, g3});

%% task 2

clear all; close all;

%% --- Load images ---
f1 = imread('assets/circuit.tif');       % chip micrograph
f2 = imread('assets/brain_tumor.jpg');    % MRI scan

%% --- Convert to grayscale if needed ---
if size(f1,3) == 3
    f1g = rgb2gray(f1);
else
    f1g = f1;
end

if size(f2,3) == 3
    f2g = rgb2gray(f2);
else
    f2g = f2;
end

%% --- Edge detection using Sobel, LoG, Canny ---
% You can adjust thresholds later

% Circuits image
g1_sobel = edge(f1g,'Sobel');
g1_log   = edge(f1g,'log');
g1_canny = edge(f1g,'Canny');

% Brain tumor image
g2_sobel = edge(f2g,'Sobel');
g2_log   = edge(f2g,'log');
g2_canny = edge(f2g,'Canny');

%% --- Display results ---
figure;
montage({f1, g1_sobel, g1_log, g1_canny}, ...
    'Size',[1 4], 'BorderSize',5);
title('Circuits: Original | Sobel | LoG | Canny');

figure;
montage({f2, g2_sobel, g2_log, g2_canny}, ...
    'Size',[1 4], 'BorderSize',5);
title('Brain Tumor: Original | Sobel | LoG | Canny');

%% --- Example: experimenting with thresholds ---
% Try different thresholds for Canny on circuits image
t1 = 0.1; t2 = 0.2; t3 = 0.3;
c1 = edge(f1g,'Canny',t1);
c2 = edge(f1g,'Canny',t2);
c3 = edge(f1g,'Canny',t3);

figure;
montage({f1, c1, c2, c3}, 'Size',[1 4], 'BorderSize',5);
title('Canny with thresholds: original | 0.1 | 0.2 | 0.3');

%% Task 3

clear all; close all;

%% Step 1: Find edge points

% Read image and find edge points

f = imread('assets/circuit_rotated.tif');
fEdge = edge(f,'Canny');
figure(1)
montage({f,fEdge})

%% Step 2: Do the Hough Transform

% Perform Hough Transform and plot count as image intensity
[H, theta, rho] = hough(fEdge);
figure(2)
imshow(H,[],'XData',theta,'YData', rho, ...
            'InitialMagnification','fit');
xlabel('theta'), ylabel('rho');
axis on, axis normal, hold on;

%% Step 3: Find peaks in Hough Image

% Find 5 larges peaks and superimpose markers on Hough image
figure(2)
peaks  = houghpeaks(H,5);
%peaks  = houghpeaks(H,5,'threshold',ceil(0.3*max(H(:))));
x = theta(peaks(:,2)); y = rho(peaks(:,1));
plot(x,y,'o','color','red', 'MarkerSize',10, 'LineWidth',1);

%% Step 4: Explore peaks in the Hough Image

% Plot the Hough image as a 3D plot (called SURF)
figure(3)
surf(theta, rho, H);
xlabel('theta','FontSize',16);
ylabel('rho','FontSize',16)
zlabel('Hough Transform counts','FontSize',16)

%% Step 5: Fit lines into the image

% From theta and rho and plot lines
lines = houghlines(fEdge,theta,rho,peaks,'FillGap',5,'MinLength',7);
figure(4), imshow(f), 
figure(4); hold on
max_len = 0;
for k = 1:length(lines);
   xy = [lines(k).point1; lines(k).point2];
   plot(xy(:,1),xy(:,2),'LineWidth',2,'Color','green');
end

%% Task 4 - Segmentation by Thresholding

clear all; close all;

% Load image
f = imread('assets/yeast-cells.tif');

% Otsu threshold

T=graythresh(f)

bw_otsu = imbinarize(f, T);

figure;
montage({f, bw_otsu}, 'Size',[1 2]);
title('Original | Otsu Thresholding');

%% different thresholds

clear all; close all;

f = imread('assets/yeast-cells.tif');

t1 = 0.15
t2 = 0.18
t3 = 0.20

f_1 = imbinarize(f, t1);
f_2 = imbinarize(f, t2);
f_3 = imbinarize(f, t3);

figure;
montage({f, f_1, f_2, f_3});
title('Original | thresh 0.15 | thresh 0.18 | thresh 0.20');

%% Task 5 - Segmentation by k-means clustering

clear all; close all;
f = imread('assets/baboon.png');    % read image
[M N S] = size(f);                  % find image size
F = reshape(f, [M*N S]);            % resize as 1D array of 3 colours
% Separate the three colour channels 
R = F(:,1); G = F(:,2); B = F(:,3);
C = double(F)/255;          % convert to double data type for plotting
figure(1)
scatter3(R, G, B, 1, C);    % scatter plot each pixel as colour dot
xlabel('RED', 'FontSize', 14);
ylabel('GREEN', 'FontSize', 14);
zlabel('BLUE', 'FontSize', 14);

%%

% perform k-means clustering
k = 10;
[L,centers]=imsegkmeans(f,k);
% plot the means on the scatter plot
hold
scatter3(centers(:,1),centers(:,2),centers(:,3),100,'black','fill');


%%

% display the segmented image along with the original
J = label2rgb(L,im2double(centers));
figure(2)
montage({f,J})

%% task 5 pt 2 - peppers clustering

clear all; close all;
f = imread('assets/peppers.png');    % read image
[M N S] = size(f);                  % find image size
F = reshape(f, [M*N S]);            % resize as 1D array of 3 colours
% Separate the three colour channels 
R = F(:,1); G = F(:,2); B = F(:,3);
C = double(F)/255;          % convert to double data type for plotting
figure(1)
scatter3(R, G, B, 1, C);    % scatter plot each pixel as colour dot
xlabel('RED', 'FontSize', 14);
ylabel('GREEN', 'FontSize', 14);
zlabel('BLUE', 'FontSize', 14);

% perform k-means clustering
k = 10;
[L,centers]=imsegkmeans(f,k);
% plot the means on the scatter plot
hold
scatter3(centers(:,1),centers(:,2),centers(:,3),100,'black','fill');

% display the segmented image along with the original
J = label2rgb(L,im2double(centers));
figure(2)
montage({f,J})

%% Task 6 - Watershed segmentation with Distance Transform

% Watershed segmentation with Distance Transform
clear all; close all;
I = imread('assets/dowels.tif');
f = im2bw(I, graythresh(I));
g = bwmorph(f, "close", 1);
g = bwmorph(g, "open", 1);
montage({I, g});
title('Original & binarized cleaned image')

%%
% calculate the distance transform image
gc = imcomplement(g);
D = bwdist(gc);
figure(2)
imshow(D,[min(D(:)) max(D(:))])
title('Distance Transform')

%%
% perform watershed on the complement of the distance transform image
L = watershed(imcomplement(D));
figure(3)
imshow(L, [0 max(L(:))])
title('Watershed Segemented Label')
%%
% Merge everything to show segmentation
W = (L==0);
g2 = g | W;
figure(4)
montage({I, g, W, g2}, 'size', [2 2]);
title('Original Image - Binarized Image - Watershed regions - Merged dowels and segmented boundaries')


%% challenge 1 

close all; clear all;


I = imread('assets/random-matches.tif');

% Perform edge detection using the Canny method
fEdge = edge(I, 'Canny', 0.28);

montage({I, fEdge})


