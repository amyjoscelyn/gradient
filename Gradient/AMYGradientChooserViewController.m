//
//  AMYGradientChooserViewController.m
//  RandomFeaturesSequel
//
//  Created by Amy Joscelyn on 11/25/15.
//  Copyright © 2015 Amy Joscelyn. All rights reserved.
//

#import "AMYGradientChooserViewController.h"
#import "AMYTopColorChooserViewController.h"
#import "AMYBottomColorChooserViewController.h"

@interface AMYGradientChooserViewController () <AMYTopColorChooserViewControllerDelegate, AMYBottomColorChooserViewControllerDelegate>

@property (nonatomic) BOOL inRainbowMode;

@end

@implementation AMYGradientChooserViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.gradientLayer = [CAGradientLayer layer];
    self.gradientLayer.frame = self.view.frame;
    [self.view.layer insertSublayer:self.gradientLayer atIndex:0];
    [self resetBackground];
}

- (void)resetBackground
{
    self.topColor = [UIColor lightGrayColor];
    self.bottomColor = [UIColor whiteColor];
    
    self.colorsArray = [[NSMutableArray alloc] init];
    [self.colorsArray addObject:(id)self.topColor.CGColor];
    [self.colorsArray addObject:(id)self.bottomColor.CGColor];
    self.gradientLayer.colors = self.colorsArray;
}

- (void)topColorHasChanged:(UIColor *)color
{
        self.topColor = color;
        [self changeBackgroundGradientPosition:0 withColor:self.topColor];
}

- (void)bottomColorHasChanged:(UIColor *)color
{
    self.bottomColor = color;
    if (self.inRainbowMode)
    {
        [self.colorsArray addObject:(id)self.bottomColor.CGColor];
        self.gradientLayer.colors = self.colorsArray;
    }
    else
    {
        [self changeBackgroundGradientPosition:1 withColor:self.bottomColor];
    }
}

- (void)changeBackgroundGradientPosition:(NSUInteger)position withColor:(UIColor *)color
{
    [self.colorsArray replaceObjectAtIndex:position withObject:(id)color.CGColor];
    self.gradientLayer.colors = self.colorsArray;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSLog(@"is this preparing?");
    
    if (sender)
    {
        //if top, it's topcolor, else
    }
    AMYTopColorChooserViewController *topColorChooserDVC = segue.destinationViewController;
    topColorChooserDVC.delegate = self;
    AMYBottomColorChooserViewController *bottomColorChooserDVC = segue.destinationViewController;
    bottomColorChooserDVC.delegate = self;
}

- (IBAction)rainbowModeButtonTapped:(id)sender
{
    if (self.inRainbowMode)
    {
        self.inRainbowMode = NO;
        [self resetBackground];
    }
    else
    {
        self.inRainbowMode = YES;
    }
}

@end
