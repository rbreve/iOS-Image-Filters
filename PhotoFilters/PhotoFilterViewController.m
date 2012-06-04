//
//  PhotoFilterViewController.m
//  PhotoFilters
//
//  Created by Roberto Breve on 6/3/12.
//  Copyright (c) 2012 Icoms. All rights reserved.
//

#import "PhotoFilterViewController.h"

#import "UIImage+Filters.h"

@interface PhotoFilterViewController ()
@property (nonatomic, strong) UIImage *originalImage;
@end

@implementation PhotoFilterViewController
@synthesize myPhoto;
@synthesize originalImage = _originalImage;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.originalImage = self.myPhoto.image;
    
    NSArray *supportedFilters = [CIFilter filterNamesInCategory:kCICategoryBuiltIn];
    for (NSString *filter in supportedFilters){
        NSLog(@"%@", filter);
    }
}

- (void)viewDidUnload
{
    [self setOriginalImage:nil];
    [self setMyPhoto:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)applyFilter:(UIButton *)sender {
    
    NSString *buttonTitle = sender.titleLabel.text;
    
    if ([buttonTitle isEqualToString:@"Saturation"]) {
        self.myPhoto.image = [self.myPhoto.image saturateImage:1.7 withContrast:1];
    }
    
    if ([buttonTitle isEqualToString:@"B&W"]) {
        self.myPhoto.image = [self.myPhoto.image saturateImage:0 withContrast:1.05];
    }
    
    if ([buttonTitle isEqualToString:@"Vignette"]) {
        self.myPhoto.image = [self.myPhoto.image vignetteWithRadius:0 andIntensity:18];
    }
    
    if ([buttonTitle isEqualToString:@"Double"]){
        
        self.myPhoto.image = [self.myPhoto.image blendMode:@"CIScreenBlendMode" withImageNamed:@"flowers.jpg"];
    }
    
    if ([buttonTitle isEqualToString:@"Vintage"]) {
        self.myPhoto.image = [self.myPhoto.image blendMode:@"CISoftLightBlendMode" withImageNamed:@"paper.jpg"];
    }
    
    if ([buttonTitle isEqualToString:@"Curve"]) {
        self.myPhoto.image = [self.myPhoto.image curveFilter];
    }
    
    
}
- (IBAction)resetImage {
    [self.myPhoto setImage:self.originalImage];
    
}
@end
