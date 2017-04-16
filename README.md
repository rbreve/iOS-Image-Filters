# About #
A simplified UIImage category for using Core Image Filters.
To accomplish vintage or double exposure effects I am using blend modes using two images.

## Vintage ##

![vintage](https://lh5.googleusercontent.com/-ose2-jKOuQc/T8wsvDM4e5I/AAAAAAAACjM/LOj3hKjrPu0/s512/Screen%2520Shot%25202012-06-03%2520at%25209.32.38%2520PM.png "Vintage Using Blend Modes")

## Vignette ##
![p1](https://lh6.googleusercontent.com/-LWUEsRJ8sgE/T8wsvFEl3HI/AAAAAAAACjU/YlUM8PUPvKc/s512/Screen%2520Shot%25202012-06-03%2520at%25209.32.55%2520PM.png)

## Double Exposure using Blend Modes ##
![p2](https://lh6.googleusercontent.com/-RIM2Vf62pBo/T8ws0N-dLUI/AAAAAAAACjs/aRK-sIbjO7I/s512/Screen%2520Shot%25202012-06-03%2520at%25209.33.14%2520PM.png)

## Black & White ##
![p3](https://lh5.googleusercontent.com/-Hkh3tSoF2e4/T8wszVlnXaI/AAAAAAAACjk/5lKVm_PBD2A/s512/Screen%2520Shot%25202012-06-03%2520at%25209.33.01%2520PM.png)

# How to use on your project #

* Drag `UIImage+Filters.h` and `UIImage+Filters.m` to your project
* Include the header file `#import "UIImage+Filters.h"`
* Be sure to include the CoreImage.framework on your project
* To apply a filter to an UIImage just to this

# Sample Code    

    UIImage* myImage  = [UIImage imageNamed:@"myphoto.jpg"];
    myImage = [myImage saturateImage:0 withContrast:1.05];
    
# Current Filters #

    - (UIImage*) saturateImage:(float)saturationAmount withContrast:(float)contrastAmount;
    - (UIImage*) vignetteWithRadius:(float)inputRadius andIntensity:(float)inputIntensity;
    - (UIImage*) blendMode:(NSString *)blendMode withImageNamed:(NSString *) imageName;
    - (UIImage*) curveFilter;
    
# Blend Mode #

    - (UIImage*) blendMode:(NSString *)blendMode withImageNamed:(NSString *) imageName;

Will use imageName as a background layer to blendit into your image. 

Available blend modes you can use are:

* CISoftLightBlendMode
* CIMultiplyBlendMode
* CISaturationBlendMode
* CIScreenBlendMode
* CIMultiplyCompositing
* CIHardLightBlendMode

# Apple Documentation #

[Core Image Filter Reference](https://developer.apple.com/library/mac/documentation/graphicsimaging/reference/CoreImageFilterReference/index.html)