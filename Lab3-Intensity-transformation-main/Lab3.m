%% Task 1 - Check what is on image file breastXray.tif stored in the assets folder and read the image data into the matrix f, and display it:

clear all
imfinfo('assets/breastXray.tif')
f = imread('assets/breastXray.tif');
imshow(f)
%% Check the dimension of f on the right window pane of Matlab. Examine the image data stored:

f(3,10)             % print the intensity of pixel(3,10)
imshow(f(1:241,:))  % display only top half of the image

%% Show only right side of image

imshow(f(:, (482/2):end))
%% To find the maximum and minimum intensity values of the image, do this:

[fmin, fmax] = bounds(f(:))
%% To compute the negative image and display both the original and the negative image side-by-side, do this:

g1 = imadjust(f, [0 1], [1 0]);
figure              % open a new figure window
montage({f, g1})

%% Gamma correct 

g2 = imadjust(f, [0.5 0.75], [0 1]);
g3 = imadjust(f, [ ], [ ], 2);
figure
montage({g2,g3})

%% Task 2 - Contour Stretching

clear all       % clear all variables
close all       % close all figure windows
f = imread('assets/bonescan-front.tif');
r = double(f);  % uint8 to double conversion
k = mean2(r);   % find mean intensity of image
E = 0.9;
s = 1 ./ (1.0 + (k ./ (r + eps)) .^ E);
g = uint8(255*s);
imshowpair(f, g, "montage")

%% Task 3 - Contrast Enhancement using Histogram

clear all       % clear all variable in workspace
close all       % close all figure windows
f=imread('assets/pollen.tif');
imshow(f)
figure          % open a new figure window
imhist(f);      % calculate and plot the histogram

%% Stretch intensity 

close all
g=imadjust(f,[0.3 0.55]);
montage({f, g})     % display list of images side-by-side
figure
imhist(g);

%% Histogram, PDF and CDF

g_pdf = imhist(g) ./ numel(g);  % compute PDF
g_cdf = cumsum(g_pdf);          % compute CDF
close all                       % close all figure windows
imshow(g);
subplot(1,2,1)                  % plot 1 in a 1x2 subplot
plot(g_pdf)
subplot(1,2,2)                  % plot 2 in a 1x2 subplot
plot(g_cdf)

%% Histogram Equalization

x = linspace(0, 1, 256);    % x has 256 values equally spaced
                            %  .... between 0 and 1
figure
plot(x, g_cdf)
axis([0 1 0 1])             % graph x and y range is 0 to 1
set(gca, 'xtick', 0:0.2:1)  % x tick marks are in steps of 0.2
set(gca, 'ytick', 0:0.2:1)
xlabel('Input intensity values', 'fontsize', 9)
ylabel('Output intensity values', 'fontsize', 9)
title('Transformation function', 'fontsize', 12)

%% Provide plots of all three images and their histogram

h = histeq(g,256);              % histogram equalize g
close all
montage({f, g, h})
figure;
subplot(1,3,1); imhist(f);
subplot(1,3,2); imhist(g);
subplot(1,3,3); imhist(h);

%% Task 4 - Noise reduction with lowpass filter

% import X-ray image of printed circuit board: 

clear all
close all
f = imread('assets/noisyPCB.jpg');
imshow(f)

%% Reduce the noise by using Box and the Gaussian filters
% Use the function fspecial to produce a 9x9 averaging filter kernel _ and a 7 x 7 Gaussian kernel with sigma = 0.5 as shown below:


w_box = fspecial('average', [1 10]);
w_gauss = fspecial('Gaussian', [10 10], 5);

g_box = imfilter(f, w_box, 0);
g_gauss = imfilter(f, w_gauss, 0);
figure
montage({f, g_box, g_gauss})

%% Task 5 - Median Filtering

g_median = medfilt2(f, [7 7], 'zero');
figure; montage({f, g_median})

%% Task 6 - the goal is to make the moon photo sharper so that the craters can be observed better.

% load moon.tif

t = imread('moon.tif');
imshow(t)

%%
% improve image

% Apply a sharpening filter to enhance the moon image
h_sharpen = fspecial('unsharp');
t_sharpened = imfilter(t, h_sharpen);
figure; montage({t, t_sharpened});

%%

% Apply a Laplacian filter to enhance edges in the moon image
h_laplacian = fspecial('laplacian', 0.2);
t_laplacian = imfilter(t, h_laplacian);
figure; montage({t, t_laplacian});

%% Task 7 - Lake 

lt = imread(['./assets/lake&tree.png']);
imshow(lt)

%% 

% improve contrast with imadjust
lt_adjusted = imadjust(lt, [0.0 0.5], [0 1]); % Adjust contrast of the lake image
figure; montage({lt, lt_adjusted}); % Display original and adjusted images side-by-side

%%

% Read the circles image and apply Sobel filter for edge detection
circlesImage = imread(['./assets/circles.tif']);
edges = edge(circlesImage, 'sobel');
figure; montage({circlesImage, edges}); % Display original and edge-detected images side-by-side



%%

% Load the office image and display it
oi = imread('./assets/office.jpg');


% Improve contrast of the office image using imadjust
oia = imadjust(officeImage, [0.2 0.8], [0 1]);
figure; montage({oi, oia}); % Display original and adjusted images side-by-side
%%

% Denoise the office image 

w_gauss = fspecial('Gaussian', [7 7], 1.0);

oiag = imfilter(oia, w_gauss, 0);
figure
montage({oia, oiag})

%% 

% Apply a sharpening filter to enhance the office image
h_sharpen_office = fspecial('unsharp');
oi_sharpened = imfilter(oiag, h_sharpen_office);
figure; montage({oi, oia, oiag, oi_sharpened}); % Display denoised and sharpened images side-by-side