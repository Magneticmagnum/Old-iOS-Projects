//
//  BIDDetailViewController.m
//  Persona 4 Arena
//
//  Created by NoreeTech on 8/21/12.
//  Copyright (c) 2012 NoreeTech. All rights reserved.
//

#import "BIDDetailViewController.h"

@interface BIDDetailViewController ()

@end

@implementation BIDDetailViewController
@synthesize state,capital,stateLabel,capitalLabel;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    stateLabel.text = state;
    capitalLabel.text = capital;
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
