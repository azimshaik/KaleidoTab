//
//  KaleidoViewViewController.m
//  KDTab
//
//  Created by Azim Shaik on 3/17/14.
//  Copyright (c) 2014 Azim Shaik. All rights reserved.
//

#import "KaleidoViewViewController.h"


@interface KaleidoViewViewController ()

@end

@implementation KaleidoViewViewController
@synthesize kview;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.delay = 1.0;
        //UITabBarItem *tbi = [self tabBarItem];
        //[tbi setTitle:@"KaleidoView"];
        UITabBarItem *tbi = [[UITabBarItem alloc]initWithTitle:@"KaleidoScope" image:nil tag:0];
        self.tabBarItem=tbi;
        CGRect frame = [[UIScreen mainScreen] bounds];
        kview=[[KaleidoView alloc]initWithFrame:frame];
        [self setView:kview];
        
    }
    return self;
}
- (void)loadView
{
    // Create a view
   // CGRect frame = [[UIScreen mainScreen] bounds];
    
    //KaleidoView *kview = [[KaleidoView alloc] initWithFrame:frame];
    
    // Set it as *the* view of this view controller
    //[self setView:kview];
    
    NSLog(@">>>>>> KaleidoView");
}
- (void)viewWillAppear:(BOOL)animated
{
    //printf(">>> %s\n", [[NSStringFromSelector(_cmd) description] UTF8String]);
    
    // Get timer, Target/Action pattern used here
    NSTimer *timer = [NSTimer timerWithTimeInterval: self.delay
                                             target: self.view
                                           selector: @selector(setNeedsDisplay)
                                           userInfo: nil
                                            repeats: YES];
    
    // Get runloop, add timer to runloop
    self.runloop = [NSRunLoop currentRunLoop];
    [self.runloop addTimer:timer forMode: NSDefaultRunLoopMode];
}

//==============================================================================
-(void) viewWillDisappear:(BOOL)animated
{
    // Clear
    self.runloop = nil;
}

//==============================================================================
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}-(void) setFrameRate:(float) frate;
{
	kview.frameRate=frate;
    printf("frate %f",frate);
    [kview updateTimer];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
