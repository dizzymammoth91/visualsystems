%% Task 1 - Image resizing

clear all; close all; clc;

% Load image
I = imread('assets/cafe_van_gogh.jpg');

% Build pyramid by subsampling (dropping rows/cols)
scales = [1, 1/2, 1/4, 1/8, 1/16, 1/32];
pyr_subsample = cell(1, numel(scales));

for k = 1:numel(scales)
    step = 1 / scales(k);          % e.g. scale=1/4 → step=4
    step = round(step);            % ensure integer step
    pyr_subsample{k} = I(1:step:end, 1:step:end, :);
end

figure;
montage(pyr_subsample, 'Size', [2 3]);
title('Image Pyramid by Subsampling (Dropping Rows/Columns)');

%%

% Build pyramid using imresize (proper anti-aliased resizing)
scales_resize = [1, 1/2, 1/4, 1/8, 1/16, 1/32];
pyr_resize = cell(1, numel(scales_resize));

for k = 1:numel(scales_resize)
    pyr_resize{k} = imresize(I, scales_resize(k));
end

figure;
montage(pyr_resize, 'Size', [2 3]);
title('Image Pyramid using imresize (Gaussian prefiltering)');

%% Task 2 - Pattern Matching with Normalized Cross Correlation

clear all; close all;
f = imread('assets/salvador_grayscale.tif');
w = imread('assets/template1.tif');
c = normxcorr2(w, f);
figure(1)
surf(c)
shading interp

%%
[ypeak, xpeak] = find(c==max(c(:)));
yoffSet = ypeak-size(w,1);
xoffSet = xpeak-size(w,2);
figure(2)
imshow(f)
drawrectangle(gca,'Position', ...
    [xoffSet,yoffSet,size(w,2),size(w,1)], 'FaceAlpha',0);

%%

clear all; close all;
f = imread('assets/salvador_grayscale.tif');
w = imread('assets/template2.tif');
c = normxcorr2(w, f);
figure(1)
surf(c)
shading interp

%%
[ypeak, xpeak] = find(c==max(c(:)));
yoffSet = ypeak-size(w,1);
xoffSet = xpeak-size(w,2);
figure(2)
imshow(f)
drawrectangle(gca,'Position', ...
    [xoffSet,yoffSet,size(w,2),size(w,1)], 'FaceAlpha',0);

%% Task 3 - SIFT Feature Detection

clear all; close all;
I = imread('assets/salvador.tif');
f = im2gray(I);
points = detectSIFTFeatures(f);
figure(1); imshow(I);
hold on;
plot(points.selectStrongest(100));

%%
clear all; close all;
I = imread('assets/cafe_van_gogh.jpg');
f = im2gray(I);
points = detectSIFTFeatures(f);
figure(1); imshow(I);
hold on;
plot(points.selectStrongest(100));

%% Task 4 - SIFT matching

clear all; close all;
I1 = imread('assets/cafe_van_gogh.jpg');
I2 = imresize(I1, 0.5);
f1 = im2gray(I1);
f2 = im2gray(I2);
points1 = detectSIFTFeatures(f1);
points2 = detectSIFTFeatures(f2);
Nbest = 100;
bestFeatures1 = points1.selectStrongest(Nbest);
bestFeatures2 = points2.selectStrongest(Nbest);
figure(1); imshow(I1);
hold on;
plot(bestFeatures1);
hold off;
figure(2); imshow(I2);
hold on;
plot(bestFeatures2);
hold off;


%% Task 4 - SIFT matching - all points

[features1, valid_points1] = extractFeatures(f1, points1);
[features2, valid_points2] = extractFeatures(f2, points2);

 indexPairs = matchFeatures(features1, features2, 'Unique', true);

 matchedPoints1 = valid_points1(indexPairs(:,1),:);
 matchedPoints2 = valid_points2(indexPairs(:,2),:);
 figure(3);
 showMatchedFeatures(f1,f2,matchedPoints1,matchedPoints2);

%% Task 4 - SIFT matching - bestFeatures

[features1, valid_points1] = extractFeatures(f1, bestFeatures1);
[features2, valid_points2] = extractFeatures(f2, points2);

 indexPairs = matchFeatures(features1, features2, 'Unique', true);

 matchedPoints1 = valid_points1(indexPairs(:,1),:);
 matchedPoints2 = valid_points2(indexPairs(:,2),:);
 figure(3);
 showMatchedFeatures(f1,f2,matchedPoints1,matchedPoints2);
 
%% Task 4 - SIFT matching - bestFeatures

[features1, valid_points1] = extractFeatures(f1, bestFeatures1);
[features2, valid_points2] = extractFeatures(f2, points2);

 indexPairs = matchFeatures(features1, features2, 'Unique', true);

 matchedPoints1 = valid_points1(indexPairs(:,1),:);
 matchedPoints2 = valid_points2(indexPairs(:,2),:);
 figure(3);
 showMatchedFeatures(f1,imrotate(f2,20),matchedPoints1,matchedPoints2);

 %% Task 5 

 clear all; close all; clc;

% --- Load the two traffic frames ---
I1 = imread('assets/traffic_1.jpg');
I2 = imread('assets/traffic_2.jpg');

% Convert to grayscale for feature detection
f1 = im2gray(I1);
f2 = im2gray(I2);

% --- Detect SIFT features ---
points1 = detectSIFTFeatures(f1);
points2 = detectSIFTFeatures(f2);

% Select strongest features
Nbest = 100;
best1 = points1.selectStrongest(Nbest);
best2 = points2.selectStrongest(Nbest);

% --- Extract descriptors ---
[features1, valid1] = extractFeatures(f1, best1);
[features2, valid2] = extractFeatures(f2, best2);

% --- Match features ---
indexPairs = matchFeatures(features1, features2, 'Unique', true);

matched1 = valid1(indexPairs(:,1));
matched2 = valid2(indexPairs(:,2));

% --- Visualise matches ---
figure;
showMatchedFeatures(I1, I2, matched1, matched2, 'montage');
title('SIFT matches between traffic frames');

%% 
% --- Detect SURF features ---
points1 = detectSURFFeatures(f1);
points2 = detectSURFFeatures(f2);

% Select strongest features
Nbest = 200;
best1 = points1.selectStrongest(Nbest);
best2 = points2.selectStrongest(Nbest);

% Extract descriptors
[features1, valid1] = extractFeatures(f1, best1);
[features2, valid2] = extractFeatures(f2, best2);

% Match
indexPairs = matchFeatures(features1, features2, 'Unique', true);

matched1 = valid1(indexPairs(:,1));
matched2 = valid2(indexPairs(:,2));

figure;
showMatchedFeatures(I1, I2, matched1, matched2, 'montage');
title('SURF matches between traffic frames');

%% task 6 - object detection using neural net

% Object recognition using webcam and various neural network models

camera = webcam;                            % create camera object for webcam
net = alexnet;                               % change this for other networks
inputSize = net.Layers(1).InputSize(1:2);   % find neural network input size
figure 
I = snapshot(camera);      
image(I);
f = imresize(I, inputSize);                 % resize image to match network
tic;                                        % mark start time
[label, score] = classify(net,f);           % classify f with neural network net
toc                                         % report elapsed time
title({char(label), num2str(max(score),2)}); % label object

%% continuous loop version 

cam = webcam;          % open webcam
net = alexnet;       % load pretrained network

inputSize = net.Layers(1).InputSize(1:2);

figure;
while true
    img = snapshot(cam);                 % capture frame
    img_resized = imresize(img, inputSize);  % resize for network

    label = classify(net, img_resized);  % predict class

    image(img);                          % display original frame
    title("Prediction: " + string(label));
    drawnow;                             % update figure
end
