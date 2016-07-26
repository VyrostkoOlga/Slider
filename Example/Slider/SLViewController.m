//
//  SLViewController.m
//  Slider
//
//  Created by VyrostkoOlga on 07/26/2016.
//  Copyright (c) 2016 VyrostkoOlga. All rights reserved.
//

#import "SLViewController.h"

@interface SLViewController ()
@property (weak, nonatomic) IBOutlet Slider *mainSlider;

@end

@implementation SLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.mainSlider.images = @[@"1", @"2"];
    self.mainSlider.startPresenting();
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
