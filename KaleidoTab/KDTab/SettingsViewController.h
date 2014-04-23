//
//  SettingsViewController.h
//  KDTab
//
//  Created by Azim Shaik on 3/17/14.
//  Copyright (c) 2014 Azim Shaik. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KaleidoViewViewController.h"
#import "KaleidoView.h"
@interface SettingsViewController : UIViewController
{
    KaleidoViewViewController *kvc;
    IBOutlet UISegmentedControl *control;
    IBOutlet UILabel *label;
    IBOutlet UIButton *button;
    
    __weak IBOutlet UISlider *mySlider;
    __weak IBOutlet UILabel *myLabel;
    
    __weak IBOutlet UISegmentedControl *segment;
//    __weak IBOutlet UISegmentedControl *segmentCtrl;
    __weak IBOutlet UISwitch *mySwitch;
}
@property(nonatomic,retain) KaleidoViewViewController *kvc;
@property(nonatomic,retain) KaleidoView *kv;
@property (nonatomic,weak) IBOutlet UISlider *mySlider;
@property (nonatomic,weak) IBOutlet UILabel *myLabel;
@property (nonatomic,weak) IBOutlet UISegmentedControl *segment;
//@property (nonatomic,weak) IBOutlet UISegmentedControl *segmentCtrl;
@property (nonatomic,weak) IBOutlet UISwitch *mySwitch;
- (IBAction)setSpeed:(id)sender;
-(IBAction)changeShape:(id)sender;
//-(IBAction)fillColor:(id)sender;
-(IBAction)switchControl:(id)sender;

@end
