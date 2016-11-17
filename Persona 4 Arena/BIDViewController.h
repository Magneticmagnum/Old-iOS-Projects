//
//  BIDViewController.h
//  Persona 4 Arena
//
//  Created by NoreeTech on 8/21/12.
//  Copyright (c) 2012 NoreeTech. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BIDDetailViewController.h"

@interface BIDViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, retain)NSMutableDictionary *states;
@property (nonatomic, retain)NSArray *datasource;

-(void)setupArray;

@end
