//
//  ViewController.h
//  IVBricker
//
//  Created by Annie Hua on 2014-01-12.
//  Copyright (c) 2014 sam. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    UILabel *scoreLabel;
    int score;
    UIImageView *ball;
    CGPoint ballmovement;
    UIImageView *bat;

    
    }
@property (retain, nonatomic) IBOutlet UILabel *scoreLable;

@property (retain, nonatomic) IBOutlet UIImageView *ball;
@property (retain, nonatomic) IBOutlet UIImageView *jeta;
@property (retain, nonatomic) IBOutlet UIImageView *bat;

//@property (retain, nonatomic) IBOutlet UIImageView *bat;

- (void) initializeTimer;
- (void) animateBall : (NSTimer *)theTimer;
@end
