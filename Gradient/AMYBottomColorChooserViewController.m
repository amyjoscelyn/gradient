//
//  AMYBottomColorChooserViewController.m
//  RandomFeaturesSequel
//
//  Created by Amy Joscelyn on 11/25/15.
//  Copyright © 2015 Amy Joscelyn. All rights reserved.
//

#import "AMYBottomColorChooserViewController.h"

@interface AMYBottomColorChooserViewController ()

@property (nonatomic, strong) UIColor *bottomColor;

@end

@implementation AMYBottomColorChooserViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.bottomColor = [[UIColor alloc] init];
}

- (IBAction)colorButtonTapped:(UIButton *)sender
{
    self.bottomColor = sender.backgroundColor;
    [self.delegate bottomColorHasChanged:self.bottomColor];
}

@end
