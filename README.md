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

<img width="757" height="481" alt="image" src="https://github.com/user-attachments/assets/7c875c82-4346-4381-957c-da64ce2ff27f" />


## Task 2 -- Image Shearing 

Script created 'Shear.m'

Image sheared successfully

<img width="793" height="511" alt="image" src="https://github.com/user-attachments/assets/4a48fad1-fa35-4ae4-ac40-f7f4aff1b64e" />


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

<img width="698" height="527" alt="image" src="https://github.com/user-attachments/assets/1ee4974c-a435-4a2a-8af2-f967ae7d4455" />


Images displayed side by side

<img width="791" height="332" alt="image" src="https://github.com/user-attachments/assets/a400a881-5be7-4ce0-8e53-08a09669671b" />


## Task 11 -- Splitting and image into separate channels 

Image split successfully

<img width="767" height="205" alt="image" src="https://github.com/user-attachments/assets/e7ef3dbb-1412-4d4f-b236-bdd836e0fed9" />


## Task 12 - Map RGB image to HSV space and into separate channels

Image successfully split into HSV space separate channels.

<img width="782" height="203" alt="image" src="https://github.com/user-attachments/assets/24d3b909-2d89-40fb-8104-3e73a97bfb0e" />


## Task 13 -- Map RGB image to XYZ space

Image successfully split into XYZ space separate channels.

<img width="805" height="206" alt="image" src="https://github.com/user-attachments/assets/6e5f0e95-ed93-4b37-bdf2-64f66f9a03bd" />


# Lab 3 -- Intensity transforms & Spatial filters

## Task 1 -- Contrast enhancement with function imadjust

Image imported, information checked.

Intensity of pixel (3,10) = 28

Display only top half of image:

<img width="714" height="365" alt="image" src="https://github.com/user-attachments/assets/2159dc9a-54f6-445e-acd0-3988f1757422" />


Maximum intensity value (of original image) = 21

Minimum intensity value (of original image) = 255

Display only right side of image:

<img width="219" height="507" alt="image" src="https://github.com/user-attachments/assets/3980db35-c922-4dd6-862e-ccbd46c01181" />


Negative Image

Display negative image and display both side by side:

{original, imadjust}

<img width="940" height="562" alt="image" src="https://github.com/user-attachments/assets/352d118a-c570-4254-8bd4-d70cc6df24f3" />


Gamma Correction

After applying 'imadjust' for gamma correction:

<img width="940" height="557" alt="image" src="https://github.com/user-attachments/assets/143796c1-035d-497d-b3b1-be4844dd3d93" />


## Task 2 -- Contrast-stretching transformation

Contrast stretching transformation applied successfully:

{original, contrast stretched}

<img width="493" height="781" alt="image" src="https://github.com/user-attachments/assets/7bf4586f-970e-4e32-acc7-f739ebda87d8" />


The contrast stretched image makes it easier to see the contours of the
body being imaged.

## Task 3 -- Contrast Enhancement using Histogram

Image histogram created successfully:

{original, histogram}

<img width="366" height="367" alt="image" src="https://github.com/user-attachments/assets/054f6a31-90f2-417d-be69-d2996599248b" /><img width="347" height="366" alt="image" src="https://github.com/user-attachments/assets/bb554c7b-c656-4bd1-b923-f1025333e79b" />



Image adjusted using *imadjust*:

{original, imadjust}

<img width="727" height="373" alt="image" src="https://github.com/user-attachments/assets/1b59d56c-058c-49f7-9f3d-50ed34467ba8" />


{histogram of imadjust}

<img width="420" height="440" alt="image" src="https://github.com/user-attachments/assets/523c4dd2-4691-47d5-9ba5-e52fe2cbaa4f" />


The histogram is more evenly distributed across the spectrum compared to
previously.

Histogram PDF and CDF

{histogram PDF, histogram CDF}

<img width="527" height="567" alt="image" src="https://github.com/user-attachments/assets/83b20f0c-7fa1-4c59-9550-8fa484094726" />

Histogram equalization

{equalised histogram}

<img width="571" height="595" alt="image" src="https://github.com/user-attachments/assets/c8af9350-9230-4bfa-b2b2-89e6fe58de5b" />


Plots of all three images and their histograms:

<img width="570" height="572" alt="image" src="https://github.com/user-attachments/assets/4ad6fd3b-3402-4591-9681-ae84bd0289c0" />


<img width="500" height="543" alt="image" src="https://github.com/user-attachments/assets/e2d7ed66-d1d1-4ff8-b3bf-07cc4befd4d7" />


## Task 4 -- Noise reduction with lowpass filter

Noise reduction with lowpass filter applied successfully.

{original, imfilter (average), imfilter (gaussian)}

<img width="477" height="459" alt="image" src="https://github.com/user-attachments/assets/8f96d7d0-28ff-46bc-89a9-e075aea6e3b2" />


{histogram}

The average filter is blurry, gaussian is a slight improvement. Changing
the kernel and sigma size has a big impact on output.

## Task 5 -- Median Filtering

Result of median filtering:

{original, median filter}

<img width="940" height="464" alt="image" src="https://github.com/user-attachments/assets/47602388-0d48-4fe8-ab37-ab422f4315c5" />


The resulting image has significantly less noise than the original, but
is less 'sharp'.

## Task 6 -- Sharpening the image with Laplacian, Sobel and Unsharp filters

Image of moon sharpened successfully:

{original, sharpened}

<img width="940" height="707" alt="image" src="https://github.com/user-attachments/assets/847d96b2-2c75-43c1-a5b6-b9e43bf770ce" />


The result is a significant improvement over the original.

Applied Laplacian filter to enhance edges of moon:

{original, Laplacian}

<img width="940" height="709" alt="image" src="https://github.com/user-attachments/assets/3638c6fe-ed8e-4f40-8e8a-1e3c702ea7ce" />


## Task 7 -- Test yourself Challenges

Contrast of image of tree and lake improved significantly using
'*imadjust'* function.

{original, imadjust version}

<img width="940" height="701" alt="image" src="https://github.com/user-attachments/assets/8b41f49d-92c6-47a0-8788-de63c591ac45" />


Used sobel filter in combination with with 'edge' function to find the
edges of the circles in the image:

{original, filtered}

<img width="940" height="360" alt="image" src="https://github.com/user-attachments/assets/d1e853dc-9885-41f3-af60-5a5fd8c1ec4d" />


Loaded office image, improved contrast, then denoised, the sharpened:

{original, imadjust, imfilter, sharpen}

<img width="940" height="628" alt="image" src="https://github.com/user-attachments/assets/73203c77-f49b-4c31-91b9-2b77e0db51b9" />


Difficult to fully denoise the image.

# Lab 4 -- Morphological Image Processing

## Task 1 -- Dilation and Erosion

Image dilation results:

Done, Dilate (star), Dilate (ones, Dilate (diagonal)

<img width="940" height="819" alt="image" src="https://github.com/user-attachments/assets/fa230680-448d-42d1-accf-a3e1ee89feb7" />


Double dilation (single star dilate, double star dilate):

<img width="940" height="489" alt="image" src="https://github.com/user-attachments/assets/2fb25985-0048-42a6-92ac-7cb2e31b8f98" />


Image erosion results:

(Original, disk size 2, disk size 10, disk size 20)

The higher the erosion disk size, thinner the white shapes become,
progressively 'hiding' the lines from the original image.

<img width="873" height="526" alt="image" src="https://github.com/user-attachments/assets/43beb8e4-721a-4327-9122-b43b801f95e5" />


## Task 2 -- Morphological Filtering with Open and Close

Image loaded, 3x3 structuring element created, image eroded, image
dilated, image opened.

Montage {original, eroded, dilated, opened}

<img width="912" height="575" alt="image" src="https://github.com/user-attachments/assets/3c53f689-15a5-4269-9336-ef0a49e2ca43" />


The resulting 'opened' image is clearer and has less noise that the
original.

Increasing 'strel square' size from 3 to 5:

<img width="932" height="592" alt="image" src="https://github.com/user-attachments/assets/27aaac5c-d067-4bf7-873f-bd9126f16144" />


The image was eroded too far, loosing data. Result is poor.

Changing to 'strel disk' size 1:

<img width="932" height="588" alt="image" src="https://github.com/user-attachments/assets/13eafcc6-9149-4875-8fe6-999cad105641" />


Shape size must be smaller than square size to achieve similar results.

Adding 'imclose' operation:

{opened, closed}

<img width="940" height="369" alt="image" src="https://github.com/user-attachments/assets/0b9c9ccf-a371-42c0-b755-843d967d0b78" />


The dark parts within the white lines of the fingerprint are 'filled
in'. The result looks cleaner.

##  Task 3 -- Boundary detection

Converted image into binary image

{original, imcomplement, imbinarize}

<img width="940" height="891" alt="image" src="https://github.com/user-attachments/assets/26844cdb-e29a-47da-893b-b8b2dfad4b26" />


Eroded the binarized image, then subtracted from the original binarized
image:

{imcomplement, imbinarize, imerode, imbiniraze -- imerode}

<img width="940" height="882" alt="image" src="https://github.com/user-attachments/assets/6ded528e-0ebf-4508-ab4a-6e9a7eef5caa" />


Improve result by adding a dilation step after erosion, then subtracting
the eroded image from the dilated image. Result:

{without dilation step, with dilation step}\
<img width="940" height="566" alt="image" src="https://github.com/user-attachments/assets/95d333d6-cab4-4714-93d5-ad6fdecfedc4" />


The result has removed all the noise from the original.

## Task 4 -- Function bwmorph - thinning and thickening

Image converted to binary image:

{original, binarized}

<img width="940" height="526" alt="image" src="https://github.com/user-attachments/assets/67bc11a8-b827-476a-9694-981d71259ffc" />


Thinning operation performed up to 5 times:

{original, 1x thin, 2x, thin, 3x thin, 4x thin, 5x thin}

<img width="940" height="812" alt="image" src="https://github.com/user-attachments/assets/7f236e3e-a0d8-4f2d-b939-1d94a7b7f1ee" />


Thinning with infinite steps:

<img width="548" height="653" alt="image" src="https://github.com/user-attachments/assets/291e1c05-75c6-4f11-ab12-cf8cf838967d" />


Changing colour of infinitely thinned image: 
<img width="546" height="654" alt="image" src="https://github.com/user-attachments/assets/6a82e6e5-fcd4-4a97-8579-369471e3f688" />


Thinning/thickening focuses on the white areas. For the thinned *white*
coloured fingerprint on black background, the same result can be
achieved by thickening the inverted image, i.e. by thickening the black
fingerprint on the white background.

## Task 5 -- Connected Components and labels

{original, *bwconncomp*}

<img width="404" height="406" alt="image" src="https://github.com/user-attachments/assets/dccaf2db-2202-4bd7-baf3-fa98a731c0be" /><img width="403" height="405" alt="image" src="https://github.com/user-attachments/assets/1dc5d380-8f35-4ca8-89e7-b1502cd9b6ec" />



The 'ff' disappears after applying the *bwconncomp* function.

## Task 6 -- Morphological Reconstruction 

The script is results in the only the letters containing 'straight
lines' being shown. First, the images is eroded using a tall matrix
array, then the image is opened, and reconstructed to show only the
desired letters.

{original, eroded, opened, recontstructed}

<img width="907" height="1042" alt="image" src="https://github.com/user-attachments/assets/88047c35-179a-452e-b1e8-a99bdd84d20e" />


After using *imfill* function:

{original, imfill}

<img width="940" height="542" alt="image" src="https://github.com/user-attachments/assets/9882d799-83b9-4e76-88a0-590efb2c7888" />


It seems that all the opening spaces inside the letters have been
'filled in'.

## Task 7 -- Morphological Operations on Grayscale images

{original, dilated, eroded, dilated -- eroded}

<img width="940" height="990" alt="image" src="https://github.com/user-attachments/assets/30d5eb35-9cca-4a8d-895b-7dcb53701b21" />


The final image shows the difference between the dilated and eroded
images. Effectively showing the 'contours of the original image.

## Challenge 1

Steps taken:

1.  Imported the 'fillings.tif' image,

2.  De-noised the image using 'imfill' function

3.  Changed contrast of image using 'imadjust' function

4.  Created a binary image using 'imbinarize'

{original, imfill, imadjust, binarize}

<img width="940" height="720" alt="image" src="https://github.com/user-attachments/assets/303e16c7-46fe-45ca-be42-333e818ee37c" />


Subsequent steps taken:

5.  Split image into 2 (top filling, bottom filling)

6.  Then count non-zero pixels (i.e. the white pixels) using 'count'
    function

{top filling, bottom filling}

<img width="467" height="187" alt="image" src="https://github.com/user-attachments/assets/ea6374bd-03e0-47ec-ab50-1a15f73a19fe" /><img width="464" height="184" alt="image" src="https://github.com/user-attachments/assets/800f3302-8ee9-4e63-901a-950207046e20" />



Result:

-   Number of fillings identified = 2

-   Pixel count top filling = 6777

-   Pixel count bottom filling = 11308

# Lab 5

## Task 1 

It seems the large white blob is removed, but the smaller white dots
remain.

<img width="940" height="938" alt="image" src="https://github.com/user-attachments/assets/d25f27b2-5eef-4e08-b367-44bd4d901b11" />


## Task 2 

## Task 3 

## Task 4 -- Segmentation by thresholding 

The image ofter otsu thresholding using graytresh() does not work
optimally, as the vells seem to be connected whereas in the original
they seem to be separated.

<img width="940" height="578" alt="image" src="https://github.com/user-attachments/assets/b4770bd5-87f1-444d-969f-0ec0e95887c8" />


## Task 5 -- Segmentation by k-means clustering

Scatter plot of image 'baboon' :

<img width="940" height="579" alt="image" src="https://github.com/user-attachments/assets/81d9da04-2aea-4db3-be61-ffab1670aa8a" />


Scatter plot with k-means clustering (black dots):

<img width="940" height="567" alt="image" src="https://github.com/user-attachments/assets/7b111ef7-f9fb-4a87-90f9-ed24c7bfded0" />


Image segmented into k colours:

{original, segmented}

<img width="940" height="473" alt="image" src="https://github.com/user-attachments/assets/243ec81d-77aa-45bc-a5b1-b11105d704e0" />


Image 'peppers.png' scatter plot with k-means clustering:

<img width="940" height="570" alt="image" src="https://github.com/user-attachments/assets/f7e7e94f-abfc-49f4-9a98-88a59eaae932" />


Image segmented into k colours:

{original, segmented}

<img width="940" height="356" alt="image" src="https://github.com/user-attachments/assets/4df3c092-f5a5-47ad-8b3f-c1abcb8b4682" />


## Task 6 - Watershed Segmentation with Distance Transform

Original and binarized image using watershed segmentation:

<img width="940" height="387" alt="image" src="https://github.com/user-attachments/assets/1a0c38f9-4961-498b-ac9b-286fb0a20beb" />


Distance transform image:

<img width="562" height="457" alt="image" src="https://github.com/user-attachments/assets/91dd463e-6272-4c07-a0e9-6d85e9d16ad6" />


Watershed segmented label:

<img width="560" height="442" alt="image" src="https://github.com/user-attachments/assets/3cf47b0e-4c57-47bb-9ae3-de6d415aa754" />


Montage of segmentation steps and results:

<img width="940" height="724" alt="image" src="https://github.com/user-attachments/assets/f3df6ce6-34af-4d99-b589-4efbdffed6a9" />


# Lab 6 

## Task 1 - Image resizing 

Resizing image by a factor of 1/2, 1/4, 1/8, 1/16 and 1/32:

<img width="662" height="554" alt="image" src="https://github.com/user-attachments/assets/d79711bc-c96c-45bb-b778-67215638248b" />


It gets very 'blocky' at the end.

Code redone using imresize() function:

<img width="662" height="553" alt="image" src="https://github.com/user-attachments/assets/b72edaf8-718b-4490-85b9-d353d0d0018a" />


Result is a more diffused with smaller resizing values.

## Task 2 - Pattern Matching with Normalized Cross Correlation

NCC plot below can be used to manually identify the position of the
template 1, as indicated by the peak:

<img width="878" height="536" alt="image" src="https://github.com/user-attachments/assets/be46d533-27c8-4a1f-9b88-1f472e9ce0e9" />


Automatic detection:

<img width="940" height="628" alt="image" src="https://github.com/user-attachments/assets/171ceddb-7c6b-442f-a629-34ab712e0bbe" />


NCC plot for template 2:

<img width="940" height="565" alt="image" src="https://github.com/user-attachments/assets/f3e4a129-c8c4-4ecc-9b15-5fd9ee2ed57d" />


Automatic detection:

<img width="940" height="628" alt="image" src="https://github.com/user-attachments/assets/305b4c10-64ab-4a74-aa69-39bc0180c54d" />


## Task 3 - SIFT Feature Detection

Result of DETECT SIFT features function:

<img width="940" height="628" alt="image" src="https://github.com/user-attachments/assets/aac45e9d-c6ef-4449-a1ce-ea046a401dc1" />


The function identified multiple features on the original image.

For the Van Gogh painting, sift points are as follows:

<img width="674" height="820" alt="image" src="https://github.com/user-attachments/assets/2c8eeee8-f503-453e-bc9d-94092d7360bb" />


## SIFT Matching

The figures below show the sift points for the original image, and the
0.5x resized image:

<img width="440" height="536" alt="image" src="https://github.com/user-attachments/assets/2203911b-4cb0-4264-881e-0c04cc8b229c" /><img width="439" height="534" alt="image" src="https://github.com/user-attachments/assets/df24558a-d28c-462a-bde8-748c46b5f05f" />



As can be seen, some of the SIFT points match, but not all are present
on both.

Matching 'all points' between sets results in the following:

<img width="675" height="826" alt="image" src="https://github.com/user-attachments/assets/bbfddfa4-b2c6-4a97-adec-4b9a7db38e77" />


Many points are shown here.

By matching only 'best points' the following result is returned:

<img width="674" height="821" alt="image" src="https://github.com/user-attachments/assets/6388febd-4148-4390-ab4f-8c94e8d069c9" />


This is much easier to verify and understand.

Result after 20 degree imrotate() of the smaller image:

<img width="674" height="821" alt="image" src="https://github.com/user-attachments/assets/8e9cc3da-ae51-4672-9405-7e99b02d31b3" />


The rotation of the image does not affect the result.

## Task 5 - SIFT vs SURF

SIFT matches between traffic photos:

<img width="940" height="290" alt="image" src="https://github.com/user-attachments/assets/88b4418a-ab4a-46c8-86cf-c18d16ab529f" />


It seems the algorithm identified some of the moving cars, but not very
well. It mostly focused on static features.

SURF function matches between traffic photos:

<img width="940" height="287" alt="image" src="https://github.com/user-attachments/assets/188c08d8-fb35-4992-944f-83d3e955179d" />


The SURF algorithm did a much better job at identifying the differences
between frames.

## Task 6 - object detection using neural net 

The code successfully identified a banana:

<img width="940" height="628" alt="image" src="https://github.com/user-attachments/assets/235d0a85-e83d-4804-b702-19abd2a09606" />


The code identified an iPod (it was actually an iPhone):

<img width="940" height="624" alt="image" src="https://github.com/user-attachments/assets/1bf79261-4e80-44dd-8507-4b707abb00eb" />

