//
//  PhotoFilterViewController.h
//  PhotoFilters
//
//  Created by Roberto Breve on 6/3/12.
//  Copyright (c) 2012 Icoms. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PhotoFilterViewController : UIViewController
- (IBAction)applyFilter:(id)sender;
@property (weak, nonatomic) IBOutlet UIImageView *myPhoto;
- (IBAction)resetImage;

@end
