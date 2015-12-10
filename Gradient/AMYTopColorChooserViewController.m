//
//  AMYTopColorChooserViewController.m
//  RandomFeaturesSequel
//
//  Created by Amy Joscelyn on 11/25/15.
//  Copyright © 2015 Amy Joscelyn. All rights reserved.
//

#import "AMYTopColorChooserViewController.h"

@interface AMYTopColorChooserViewController ()

@property (nonatomic, strong) UIColor *topColor;

@end

@implementation AMYTopColorChooserViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.topColor = [[UIColor alloc] init];
}

- (IBAction)colorButtonTapped:(UIButton *)sender
{
    self.topColor = sender.backgroundColor;
    [self.delegate topColorHasChanged:self.topColor];
}

@end
