//
//  ViewController.m
//  Places
//
//  Created by iOS1 on 07/07/15.
//  Copyright (c) 2015 Brindusa. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property(weak, nonatomic) IBOutlet UIButton *profileButton;
@property(weak, nonatomic) IBOutlet UIButton *settingsButton;
@property(weak, nonatomic) IBOutlet UIView *profileView;
@property(weak, nonatomic) IBOutlet UIView *settingsView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction) buttonPressed:(UIButton *)sender {
    
    if(![sender isSelected]) {
        if ([sender isEqual:_profileButton]) {
            [_profileView setHidden:NO];
            [_settingsView setHidden:YES];
            [_profileButton setSelected:YES];
            [_settingsButton setSelected:NO];
        } else if ([sender isEqual:_settingsButton]) {
            [_profileView setHidden:YES];
            [_settingsView setHidden:NO];
            [_profileButton setSelected:NO];
            [_settingsButton setSelected:YES];
        }
    }
}

@end
