//
//  ViewController.m
//  SCLAlertView
//
//  Created by Diogo Autilio on 9/26/14.
//  Copyright (c) 2014 AnyKey Entertainment. All rights reserved.
//

#import "ViewController.h"
#import "SCLAlertView.h"

@interface ViewController ()

@end

NSString *kSuccessTitle = @"Congratulations";
NSString * kErrorTitle = @"Connection error";
NSString * kNoticeTitle = @"Notice";
NSString * kWarningTitle = @"Warning";
NSString * kInfoTitle = @"Info";
NSString * kSubtitle = @"You've just displayed this awesome Pop Up View";

CGFloat kDefaultAnimationDuration = 2.0f;

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (IBAction)showSuccess:(id)sender
{
    SCLAlertView *alert = [[SCLAlertView alloc] init];
    
    [alert addButton:@"First Button" target:self selector:@selector(firstButton)];
    
//    alert.addButton() {
//        println("Second button tapped")
//    }
    [alert showSuccess:self title:kSuccessTitle subTitle:kSubtitle closeButtonTitle:nil duration:0.0f];
}

- (IBAction)showError:(id)sender
{
    SCLAlertView *alert = [[SCLAlertView alloc] init];
    
    [alert showError:self title:@"Hold On..."
            subTitle:@"You have not saved your Submission yet. Please save the Submission before accessing the Responses list. Blah de blah de blah, blah. Blah de blah de"
    closeButtonTitle:@"OK" duration:0.0f];
}

- (IBAction)showNotice:(id)sender
{
    SCLAlertView *alert = [[SCLAlertView alloc] init];
    
    [alert showNotice:self title:kNoticeTitle subTitle:kSubtitle closeButtonTitle:nil duration:0.0f];
}

- (IBAction)showWarning:(id)sender
{
    SCLAlertView *alert = [[SCLAlertView alloc] init];
    
    [alert showWarning:self title:kWarningTitle subTitle:kSubtitle closeButtonTitle:nil duration:0.0f];
}

- (IBAction)showInfo:(id)sender
{
    SCLAlertView *alert = [[SCLAlertView alloc] init];
    
    [alert showInfo:self title:kInfoTitle subTitle:kSubtitle closeButtonTitle:nil duration:0.0f];
}

- (IBAction)showEdit:(id)sender
{
    SCLAlertView *alert = [[SCLAlertView alloc] init];
    
    [alert addTextField:@"Enter your name"];
    
    [alert showEdit:self title:kInfoTitle subTitle:kSubtitle closeButtonTitle:nil duration:0.0f];
}

- (void)firstButton
{
    NSLog(@"First button tapped");
}
@end
