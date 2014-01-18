//
//  ViewController.m
//  IVBricker
//
//  Created by Annie Hua on 2014-01-12.
//  Copyright (c) 2014 sam. All rights reserved.
//

#import "ViewController.h"

/*@interface ViewController ()
@end
*/
@implementation ViewController

@synthesize scoreLable;
@synthesize ball;
@synthesize bat;
@synthesize jeta;
//scoreLable.text = [NSString stringwithFormat:@"%05d",score];

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    ballmovement = CGPointMake(4,4);
    [self initializeTimer];
    
}

- (void) initializeTimer
{
    float theInterval = 1.0/30.0;
    [NSTimer scheduledTimerWithTimeInterval : theInterval target : self selector : @selector(animateBall:) userInfo : nil repeats : 1];
}

- (void) animateBall:(NSTimer *)theTimer
{
    ball.center = CGPointMake(ball.center.x + ballmovement.x, ball.center.y + ballmovement.y);
    if(ball.center.x > 300 || ball.center.x < 20)
        ballmovement.x = -ballmovement.x;
    if(ball.center.y > 500 || ball.center.y < 40)
        ballmovement.y = -ballmovement.y;
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
