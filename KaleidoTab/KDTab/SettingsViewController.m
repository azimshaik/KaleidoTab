//
//  SettingsViewController.m
//  KDTab
//
//  Created by Azim Shaik on 3/17/14.
//  Copyright (c) 2014 Azim Shaik. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()

@end

@implementation SettingsViewController
@synthesize mySlider;
@synthesize myLabel;
@synthesize mySwitch;
//@synthesize segmentCtrl;
@synthesize kvc;
@synthesize kv;
@synthesize segment;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        // Custom initialization
        // Get the tab bar item
       // UITabBarItem *tbi = [self tabBarItem];
        UITabBarItem *tbi = [[UITabBarItem alloc]initWithTitle:@"Settings" image:nil tag:0];
        self.tabBarItem=tbi;
        
        // Give it a label
        //[tbi setTitle:@"Settings"];
        
       // UIImage *img = [UIImage imageNamed:@"Time.png"];
        
        // Put that image on the tab bar item
        //[tbi setImage:img];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)setSpeed:(id)sender{
    mySlider=(UISlider *)sender;
    NSString *labelValue = [NSString stringWithFormat:@"%3.2f", mySlider.value];
    printf("speed%f",mySlider.value);
    printf("\n");
    myLabel.text=labelValue;
    [kvc setFrameRate:mySlider.value];
}


/*-(IBAction)fillColor:(id)sender{
    if (segmentCtrl.selectedSegmentIndex == 0)
        kvc.kview.val=1;
       // kv.kvc.val=1;
    else if (segmentCtrl.selectedSegmentIndex == 1)
       // kv.kvc.val=2;
        kvc.kview.val=2;
    
} */



/*-(IBAction)changeShape:(id)sender{
    
    if(segmentCtrl.selectedSegmentIndex == 0){
        printf("c %d",segmentCtrl.selectedSegmentIndex);
       [kv setSh: 0];
        label.text= @"1";
        //(kv.kview.shape)=1;
       // printf("shape %d",kvc.kview.shape);
    }
    else if(segmentCtrl.selectedSegmentIndex ==1){
        printf("c %d",segmentCtrl.selectedSegmentIndex);
        [kv setSh: 1];
        label.text= @"2";
        //kv.kview.shape=2;
       // printf("shape %d",kvc.kview.shape);
        
    }
    
}*/
- (IBAction)segment:(id)sender
{
    switch (segment.selectedSegmentIndex) {
        case 0:
        {
            kvc.kview.clr=1;
        }
            break;
        case 1:
        {
            kvc.kview.clr=0;
        }
            break;
            
        default:
            break;
    }
}

-(IBAction)switchControl:(id)sender{
    /*if(control.selectedSegmentIndex==0)
    {
        label.text= @"this is label1";
        button.hidden=NO;
    }
    if(control.selectedSegmentIndex==1)
    {
        label.text= @"this is label2";
        button.hidden=YES;

    }*/
    if (mySwitch.on == NO)
    {
        kvc.kview.val=1;
    }
    else if (mySwitch.on == YES)
    {
        kvc.kview.val=0;
    }



}




@end
