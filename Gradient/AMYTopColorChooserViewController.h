//
//  AMYTopColorChooserViewController.h
//  RandomFeaturesSequel
//
//  Created by Amy Joscelyn on 11/25/15.
//  Copyright © 2015 Amy Joscelyn. All rights reserved.
//

#import <UIKit/UIKit.h>
@class AMYTopColorChooserViewController;

@protocol AMYTopColorChooserViewControllerDelegate <NSObject>

- (void)topColorHasChanged:(UIColor *)color;

@end

@interface AMYTopColorChooserViewController : UIViewController

@property (weak, nonatomic) id<AMYTopColorChooserViewControllerDelegate> delegate;

@end
