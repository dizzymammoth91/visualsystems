# Visual Systems - Lab Logbook

# Lab 1 -- Introduction to MATLAB

## Installing MATLAB

Installation complete

## Learning MATLAB Basics

Watched tutorial video

## Loading the test image

Clown loaded

## Greyscale value

Value at (20, 319) = 43

## Display image

Image displayed

## Task 1 -- Image Rotation 

Script created 'Rotate.m'

Image rotated successfully

![The image appears to be a black and white photograph or illustration of a dis...](images/image1.png)

## Task 2 -- Image Shearing 

Script created 'Shear.m'

Image sheared successfully

![The image shows a black and white abstract art piece featuring a detailed, te...](images/image2.png)

# Lab 2 -- Seeing Colours and Shapes

## Task 1 -- Find your blind spot 

My eye has a blind spot. My brain can interpolate missing information
where the blind spot is located (e.g. colour, patterns).

## Task 2 -- Ishihara Colour Test

I can correctly identify all the numbers in the images.

## Task 3 -- Reverse colour 

After staring at an image of the American flag with 'reversed' colours
(black, green, yellow), and then suddenly switching my gaze to a blank
white sheet of paper, I see the correct colours of the American flag
(white, blue, red).

The image I see is known as a 'negative afterimage', caused my
photoreceptor fatigue. The cones in my retina are responding to the
colours in the original image, firing continuously. After a while, they
become less sensitive (fatigued). The cones for the opposite colours
remain fresh and responsive. When looking at the white sheet of paper
(white light contains all wavelengths), my brain is subtracting the
fatigues response, showing the 'opposite' of the original colour.

## Task 4 -- Troxler's Fading 

I am staring at the centre of an image containing a series of purple
dots arranged on a circular path. In a series sequence, the circular
dots disappear temporarily (one by one). After a while, all the dots
seem to fade away, my brain then sees a negative colour of the
disappearing dot (in green).

Troxler's fading is a perceptual phenomenon where steady, unchanging
stimuli in peripheral vision fade from awareness when you fixate on a
central point. It happens because:

-   Neurons in the visual system adapt to constant, unvarying input and
    stop responding strongly.

-   Peripheral vision has large receptive fields, so tiny involuntary
    eye movements don't refresh the image enough to keep it visible.

-   The brain effectively "fills in" the missing area with surrounding
    colour or texture.

As a result, stationary shapes, colours, or patterns away from your
fixation point slowly vanish, even though they're still physically
present.

## Task 5 -- Brain sees what it expects

The two tables, at first glance, appear to be different in size.
However, after measuring them using a ruler, they are exactly the same
dimensions.

This is due to 'perspective cues'---my brain is interpreting these 2D
drawings as 3D objects, i.e. my brain is overriding the actual 2D
geometry.

The colour of square A and B is indeed the same RGB value, however, my
brain believes they are different given the contextual cue of the shadow
cast by the cylinder.

## Task 6 -- Grid Illusion 

When staring at the grid, my brain sees appearing and disappearing discs
at the intersections of the white/grey bars.

This is due to a neural process called 'lateral inhibition'. From
Wikipedia: "The intensity at a point in the visual system is not simply
the result of a single receptor, but the result of a group of receptors
which respond to the presentation of stimuli in what is called a
receptive field".

## Task 7 -- Café Wall Illusion

In the second example the 'café wall illusion', by brain sees wavy lines
between the white and black squares, although they are in fact parallel
lines. When the contract is changed (to pink and blue square), my brain
indeed sees parallel lines.

This happens because my brain interprets the size the white squares as
being greater than the black squares.

## Task 8 -- The Silhouette Illusion

My brain only sees the dancer spinning clockwise. Apparently, some
people see the dancer spinning in the other direction after some time.

## Task 9 -- The Incomplete Triangles 

By brain sees 2 triangles, one that is full white, on top of one with a
black outline, although technically there are zero complete triangles.

# Lab 2 – Part 2

## Task 10 

Image information displayed

Image displayed

Image converted to greyscale

![The image shows a still life arrangement of various vegetables and fruits, in...](images/image3.png)

Images displayed side by side

![The image shows a comparison between an original color image of various color...](images/image4.png)

## Task 11 -- Splitting and image into separate channels 

Image split successfully

![The image displays a series of black and white photographs featuring a single...](images/image5.png)

## Task 12 - Map RGB image to HSV space and into separate channels

Image successfully split into HSV space separate channels.

![The image appears to be a comparison of two contrasting images, possibly show...](images/image6.png)

## Task 13 -- Map RGB image to XYZ space

Image successfully split into XYZ space separate channels.

![The image is a black and white photograph showcasing a series of identical, r...](images/image7.png)

# Lab 3 -- Intensity transforms & Spatial filters

## Task 1 -- Contrast enhancement with function imadjust

Image imported, information checked.

Intensity of pixel (3,10) = 28

Display only top half of image:

![The image depicts a close-up of a mammogram showing dense breast tissue and a...](images/image8.png)

Maximum intensity value (of original image) = 21

Minimum intensity value (of original image) = 255

Display only right side of image:

![The image is a mammogram showing a dense breast tissue with a possible calcif...](images/image9.png)

Negative Image

Display negative image and display both side by side:

{original, imadjust}

![The image shows a side-by-side comparison of two mammograms, one with a norma...](images/image10.png)

Gamma Correction

After applying 'imadjust' for gamma correction:

![The image shows a black and white mammogram scan on the left, depicting a bre...](images/image11.png)

## Task 2 -- Contrast-stretching transformation

Contrast stretching transformation applied successfully:

{original, contrast stretched}

![The image displays two X-ray images of human skeletons, one on each side, wit...](images/image12.png)

The contrast stretched image makes it easier to see the contours of the
body being imaged.

## Task 3 -- Contrast Enhancement using Histogram

Image histogram created successfully:

{original, histogram}

![The image is a close-up, black and white photograph of several small, round, ...](images/image13.png)![The image displays a linear scale ranging from 0 to 7000, with evenly spaced ...](images/image14.png)

Image adjusted using *imadjust*:

{original, imadjust}

![The image shows a close-up comparison of two clusters of similar-looking, tex...](images/image15.png)

{histogram of imadjust}

![The image displays a linear scale with values ranging from 0 to 7000, increas...](images/image16.png)

The histogram is more evenly distributed across the spectrum compared to
previously.

Histogram PDF and CDF

{histogram PDF, histogram CDF}

![The diagram appears to be a histogram or bar chart displaying the frequency d...](images/image17.png)

Histogram equalization

{equalised histogram}

![The diagram illustrates a transformation function where input intensity value...](images/image18.png)

Plots of all three images and their histograms:

![The image is a close-up microscopic view of various seeds or beans, likely wi...](images/image19.png)

![The provided text appears to be a sequence of numbers representing a countdow...](images/image20.png)

## Task 4 -- Noise reduction with lowpass filter

Noise reduction with lowpass filter applied successfully.

{original, imfilter (average), imfilter (gaussian)}

![The image is a close-up of a circuit board with various electronic components...](images/image21.png)

{histogram}

The average filter is blurry, gaussian is a slight improvement. Changing
the kernel and sigma size has a big impact on output.

## Task 5 -- Median Filtering

Result of median filtering:

{original, median filter}

![The image shows a close-up, magnified view of a circuit board with multiple e...](images/image22.png)

The resulting image has significantly less noise than the original, but
is less 'sharp'.

## Task 6 -- Sharpening the image with Laplacian, Sobel and Unsharp filters

Image of moon sharpened successfully:

{original, sharpened}

![The image shows two close-up views of the moon\'s surface, revealing its crat...](images/image23.png)

The result is a significant improvement over the original.

Applied Laplacian filter to enhance edges of moon:

{original, Laplacian}

![The image shows a side-by-side comparison of the lunar phases, with one side ...](images/image24.png)

## Task 7 -- Test yourself Challenges

Contrast of image of tree and lake improved significantly using
'*imadjust'* function.

{original, imadjust version}

![The image shows a serene lake with a solitary tree standing on a cliff, under...](images/image25.png)

Used sobel filter in combination with with 'edge' function to find the
edges of the circles in the image:

{original, filtered}\
\
![](images/image26.png)

Loaded office image, improved contrast, then denoised, the sharpened:

{original, imadjust, imfilter, sharpen}

![](images/image27.png)

Difficult to fully denoise the image.

# Lab 4 -- Morphological Image Processing

## Task 1 -- Dilation and Erosion

Image dilation results:

Done, Dilate (star), Dilate (ones, Dilate (diagonal)

![The image displays a text document illustrating a historical coding issue whe...](images/image28.png)

Double dilation (single star dilate, double star dilate):

![The document describes the historical use of two-digit years in computer prog...](images/image29.png)

Image erosion results:

(Original, disk size 2, disk size 10, disk size 20)

The higher the erosion disk size, thinner the white shapes become,
progressively 'hiding' the lines from the original image.

![The diagram shows a schematic representation of a circuit layout, possibly wi...](images/image30.png)

## Task 2 -- Morphological Filtering with Open and Close

Image loaded, 3x3 structuring element created, image eroded, image
dilated, image opened.

Montage {original, eroded, dilated, opened}

![The image depicts a visual representation of a fingerprint with four distinct...](images/image31.png)

The resulting 'opened' image is clearer and has less noise that the
original.

Increasing 'strel square' size from 3 to 5:

![The image appears to be a black and white diagram with a clear, white, finger...](images/image32.png)

The image was eroded too far, loosing data. Result is poor.

Changing to 'strel disk' size 1:\
\
![The image depicts a visual representation of a fingerprint, with two distinct...](images/image33.png)

Shape size must be smaller than square size to achieve similar results.

Adding 'imclose' operation:

{opened, closed}\
![The image shows a black and white printout of a fingerprint, with a highlight...](images/image34.png)

The dark parts within the white lines of the fingerprint are 'filled
in'. The result looks cleaner.

##  Task 3 -- Boundary detection

Converted image into binary image

{original, imcomplement, imbinarize}

![](images/image35.png)

Eroded the binarized image, then subtracted from the original binarized
image:

{imcomplement, imbinarize, imerode, imbiniraze -- imerode}

![](images/image36.png)

Improve result by adding a dilation step after erosion, then subtracting
the eroded image from the dilated image. Result:

{without dilation step, with dilation step}\
![](images/image37.png)

The result has removed all the noise from the original.

## Task 4 -- Function bwmorph - thinning and thickening

Image converted to binary image:

{original, binarized}

![The image shows a side-by-side comparison of two fingerprints, one on a clear...](images/image38.png)

Thinning operation performed up to 5 times:

{original, 1x thin, 2x, thin, 3x thin, 4x thin, 5x thin}

![The image displays a black and white printout of a fingerprint, with each pri...](images/image39.png)

Thinning with infinite steps:

![The image depicts a black and white fingerprint pattern with raised ridges. A...](images/image40.png)

Changing colour of infinitely thinned image: ![The image depicts a detailed, whiteprinted fingerprint with a clear, visible ...](images/image41.png)

Thinning/thickening focuses on the white areas. For the thinned *white*
coloured fingerprint on black background, the same result can be
achieved by thickening the inverted image, i.e. by thickening the black
fingerprint on the white background.

## Task 5 -- Connected Components and labels

{original, *bwconncomp*}

![The image depicts a diagram explaining how a watershed acts as a boundary sep...](images/image42.png)![A watershed is a ridge that separates regions drained by different river syst...](images/image43.png)

The 'ff' disappears after applying the *bwconncomp* function.

## Task 6 -- Morphological Reconstruction 

The script is results in the only the letters containing 'straight
lines' being shown. First, the images is eroded using a tall matrix
array, then the image is opened, and reconstructed to show only the
desired letters.

{original, eroded, opened, recontstructed}

![The image illustrates a sequence of steps in a programming process involving ...](images/image44.png)

After using *imfill* function:

{original, imfill}

![The image contains a MATLAB code snippet demonstrating the use of \`cellfun\`...](images/image45.png)

It seems that all the opening spaces inside the letters have been
'filled in'.

## Task 7 -- Morphological Operations on Grayscale images

{original, dilated, eroded, dilated -- eroded}

![The image shows a series of cross-sectional views of a human skull, highlight...](images/image46.png)

The final image shows the difference between the dilated and eroded
images. Effectively showing the 'contours of the original image.

## Challenge 1

Steps taken:

1.  Imported the 'fillings.tif' image,

2.  De-noised the image using 'imfill' function

3.  Changed contrast of image using 'imadjust' function

4.  Created a binary image using 'imbinarize'

{original, imfill, imadjust, binarize}

![The image shows a close-up of a tooth, highlighting its intricate structure a...](images/image47.png)

Subsequent steps taken:

5.  Split image into 2 (top filling, bottom filling)

6.  Then count non-zero pixels (i.e. the white pixels) using 'count'
    function

{top filling, bottom filling}

![The image is a black background with a single white cloud shape. AI-generated...](images/image48.png)![The image is a stark, black canvas with a single white line or shape. AI-gene...](images/image49.png)

Result:

-   Number of fillings identified = 2

-   Pixel count top filling = 6777

-   Pixel count bottom filling = 11308

# Lab 5

## Task 1 

It seems the large white blob is removed, but the smaller white dots
remain.

![The image appears to be a scientific illustration or diagram, possibly showin...](images/image50.png)

## Task 2 

## Task 3 

## Task 4 -- Segmentation by thresholding 

The image ofter otsu thresholding using graytresh() does not work
optimally, as the vells seem to be connected whereas in the original
they seem to be separated.

![The image displays a visual comparison of two images, one processed with Otsu...](images/image51.png)

## Task 5 -- Segmentation by k-means clustering

Scatter plot of image 'baboon' :

![The diagram displays a scatter plot with three categories (Blue, Green, Red) ...](images/image52.png)

Scatter plot with k-means clustering (black dots):

![](images/image53.png)

Image segmented into k colours:

{original, segmented}

![](images/image54.jpeg)

Image 'peppers.png' scatter plot with k-means clustering:

![](images/image55.png)

Image segmented into k colours:

{original, segmented}

![](images/image56.png)

## Task 6 - Watershed Segmentation with Distance Transform

Original and binarized image using watershed segmentation:

![The image displays a black and white binary pattern consisting of numerous sm...](images/image57.png)

Distance transform image:

![The image depicts a scattering of numerous, uniformly distributed points, eac...](images/image58.png)

Watershed segmented label:

![The diagram depicts a segmented watershed area with labels indicating differe...](images/image59.png)

Montage of segmentation steps and results:

![The image displays a series of binned images, including a binarized original ...](images/image60.png)

# Lab 6 

## Task 1 - Image resizing 

Resizing image by a factor of 1/2, 1/4, 1/8, 1/16 and 1/32:

![The image depicts a series of overlaid scenes showing a vibrant, starry night...](images/image61.png)

It gets very 'blocky' at the end.

Code redone using imresize() function:

![The image shows a series of panoramic shots of a starry night street scene, w...](images/image62.png)

Result is a more diffused with smaller resizing values.

## Task 2 - Pattern Matching with Normalized Cross Correlation

NCC plot below can be used to manually identify the position of the
template 1, as indicated by the peak:

![The provided text appears to be a series of numerical values, likely represen...](images/image63.png)

Automatic detection:

![The image depicts a surreal landscape with a tree, a large, elongated snail s...](images/image64.jpeg)

NCC plot for template 2:

![The provided text appears to be a snippet of data or coordinates, likely from...](images/image65.png)

Automatic detection:

![](images/image66.jpeg)

## Task 3 - SIFT Feature Detection

Result of DETECT SIFT features function:

![The image depicts a landscape with various shells and geological formations, ...](images/image67.jpeg)

The function identified multiple features on the original image.

For the Van Gogh painting, sift points are as follows:

![The image depicts a quaint, star-filled nighttime street in an old European t...](images/image68.png)

## SIFT Matching

The figures below show the sift points for the original image, and the
0.5x resized image:

![The image depicts a quaint, star-filled nighttime street in an old European t...](images/image69.jpeg)![The image depicts a vibrant street scene at night, with colorful lights and a...](images/image70.jpeg)

As can be seen, some of the SIFT points match, but not all are present
on both.

Matching 'all points' between sets results in the following:

![The image is a vibrant display of intersecting lines and colors, suggesting a...](images/image71.png)

Many points are shown here.

By matching only 'best points' the following result is returned:

![](images/image72.png)

This is much easier to verify and understand.

Result after 20 degree imrotate() of the smaller image:

![](images/image73.png)

The rotation of the image does not affect the result.

## Task 5 - SIFT vs SURF

SIFT matches between traffic photos:

![](images/image74.jpeg)

It seems the algorithm identified some of the moving cars, but not very
well. It mostly focused on static features.

SURF function matches between traffic photos:

![](images/image75.jpeg)

The SURF algorithm did a much better job at identifying the differences
between frames.

## Task 6 - object detection using neural net 

The code successfully identified a banana:

![](images/image76.png)

The code identified an iPod (it was actually an iPhone):

![](images/image77.png)
