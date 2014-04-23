//
//  KaleidoView.h
//  KDTab
//
//  Created by Azim Shaik on 3/17/14.
//  Copyright (c) 2014 Azim Shaik. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KaleidoView : UIView
{
    CGLayerRef drawLayer;
    NSTimer* timer;
    UIColor *diagColor;
    float val;
    int shape;
    float frameRate;
    int i;
}

@property (nonatomic) CGFloat    rect_x;
@property (nonatomic) CGFloat    rect_y;
@property (nonatomic) CGFloat   rect_x2;
@property (nonatomic) CGFloat   rect_y2;
@property (nonatomic) CGFloat   rect_x3;
@property (nonatomic) CGFloat   rect_y3;
@property (nonatomic) CGFloat   rect_x4;
@property (nonatomic) CGFloat   rect_y4;
@property (nonatomic) CGFloat    rect_width;
@property (nonatomic) CGFloat    rect_height;
@property (nonatomic) CGFloat    view_width;
@property (nonatomic) CGFloat    view_height;
@property (nonatomic) CGFloat    line_width;
@property (nonatomic) NSInteger  rect_width_min;
@property (nonatomic) NSInteger  rect_width_max;
@property (nonatomic) NSInteger  rect_height_min;
@property (nonatomic) NSInteger  rect_height_max;
@property (nonatomic) BOOL       debug;

@property(nonatomic) float frameRate;

@property(nonatomic,retain) NSTimer* timer;

@property (nonatomic) int shape;

@property (nonatomic) float val;

@property(nonatomic,retain) UIColor *diagColor;
@property(nonatomic) Boolean clr;
-(void) drawToLayer;

-(void) drawRectUsing:(CGRect)cgrect withColor:(UIColor *)color;
-(void) setSh:(int) sh;

//@property (nonatomic, strong) UIColor *myColor;
- (void) updateTimer;

@end
