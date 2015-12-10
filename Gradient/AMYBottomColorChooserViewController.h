//
//  AMYBottomColorChooserViewController.h
//  RandomFeaturesSequel
//
//  Created by Amy Joscelyn on 11/25/15.
//  Copyright © 2015 Amy Joscelyn. All rights reserved.
//

#import <UIKit/UIKit.h>
@class AMYBottomColorChooserViewController;

@protocol AMYBottomColorChooserViewControllerDelegate <NSObject>

- (void)bottomColorHasChanged:(UIColor *)color;

@end

@interface AMYBottomColorChooserViewController : UIViewController

@property (weak, nonatomic) id<AMYBottomColorChooserViewControllerDelegate> delegate;

@end
