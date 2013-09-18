//
//  ViewController.m
//  UIAlertView-BlocksDemo
//
//  Created by Tomoya Igarashi on 9/18/13.
//  Copyright (c) 2013 Tomoya Igarashi. All rights reserved.
//

#import <UIAlertView-Blocks/RIButtonItem.h>
#import <UIAlertView-Blocks/UIActionSheet+Blocks.h>
#import <UIAlertView-Blocks/UIAlertView+Blocks.h>

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)didTouchUpButton1:(id)sender {
    RIButtonItem *ok = [RIButtonItem itemWithLabel:@"OK"];
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"AlertView"
                                                        message:@"AlertViewSample"
                                               cancelButtonItem:nil
                                               otherButtonItems:ok, nil];
    [alertView show];
}

- (IBAction)didTouchUpButton2:(id)sender {
    RIButtonItem *cancel = [RIButtonItem itemWithLabel:@"cancel"];
    RIButtonItem *buttonActionSheet = [RIButtonItem itemWithLabel:@"action sheet"
                                                 buttonDidClicked:^(NSString *stringFirst, NSString *stringSecond) {
                                                     RIButtonItem *ok = [RIButtonItem itemWithLabel:@"OK"];
                                                     RIButtonItem *other = [RIButtonItem itemWithLabel:@"other"];
                                                     UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:@"ActionSheet"
                                                                                                      cancelButtonItem:cancel
                                                                                                 destructiveButtonItem:ok
                                                                                                      otherButtonItems:other, nil];
                                                     [actionSheet showInView:self.view.window]; // show from our table view (pops up in the middle of the table)
                                                 }];
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"AlertView"
                                                        message:@"AlertViewSample"
                                               cancelButtonItem:cancel
                                               otherButtonItems:buttonActionSheet, nil];
    [alertView show];
}
@end
