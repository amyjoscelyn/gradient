//
//  AMYGradientChooserViewController.h
//  RandomFeaturesSequel
//
//  Created by Amy Joscelyn on 11/25/15.
//  Copyright © 2015 Amy Joscelyn. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AMYGradientChooserViewController : UIViewController

@property (nonatomic, strong) CAGradientLayer *gradientLayer;
@property (nonatomic, strong) NSMutableArray *colorsArray;
@property (nonatomic, strong) UIColor *topColor;
@property (nonatomic, strong) UIColor *bottomColor;

@end
