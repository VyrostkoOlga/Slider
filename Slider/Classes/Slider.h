//
//  Slider.h
//  Pods
//
//  Created by Olga Vyrostko on 26.07.16.
//
//

#import <UIKit/UIKit.h>

@interface Slider : UIImageView

@property (nonatomic, strong) NSMutableArray * images;

-(void) startPresenting;
-(void) endPresenting;

@end
