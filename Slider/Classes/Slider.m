//
//  Slider.m
//  Pods
//
//  Created by Olga Vyrostko on 26.07.16.
//
//

#import "Slider.h"

@interface Slider()

@property (nonatomic, strong) NSTimer * timer;
@property (nonatomic, assign) int counter;

@end

@implementation Slider

#pragma mark - Custom getters with lazy initialization
-(NSMutableArray *) images {
    if (!_images)
        _images = [[NSMutableArray alloc] init];
    return _images;
}

#pragma mark - Logic of Slider
-(void) changeImage {
    if (self.counter + 1 < [self.images count])
        self.counter++;
    else
        self.counter = 0;
    self.image = [UIImage imageNamed: [self.images objectAtIndex: self.counter]];
}

-(void) startPresenting {
    self.counter = 0;
    self.timer = [NSTimer scheduledTimerWithTimeInterval:10.00 target:self selector:@selector(changeImage) userInfo:nil repeats:YES];
}

-(void) endPresenting {
    self.timer = nil;
}

@end
