//
//  UIImage+Filters.h
//  PhotoFilters
//
//  Created by Roberto Breve on 6/2/12.
//  Copyright (c) 2012 Icoms. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Filters)
- (UIImage*)saturateImage:(float)saturationAmount withContrast:(float)contrastAmount;
- (UIImage*)vignetteWithRadius:(float)inputRadius andIntensity:(float)inputIntensity;
-(UIImage*)worn;
-(UIImage* )blendMode:(NSString *)blendMode withImageNamed:(NSString *) imageName;
- (UIImage *)curveFilter;
@end
