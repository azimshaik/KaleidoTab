//
//  KaleidoViewViewController.h
//  KDTab
//
//  Created by Azim Shaik on 3/17/14.
//  Copyright (c) 2014 Azim Shaik. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KaleidoView.h"

@interface KaleidoViewViewController : UIViewController
{
    KaleidoView *kvew;
}
@property(nonatomic,retain) KaleidoView *kview;
-(void) setFrameRate:(float) frate;

@property (nonatomic)         CGFloat    delay;
@property (nonatomic, retain) NSRunLoop *runloop;
@end
