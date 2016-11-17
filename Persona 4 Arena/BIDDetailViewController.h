//
//  BIDDetailViewController.h
//  Persona 4 Arena
//
//  Created by NoreeTech on 8/21/12.
//  Copyright (c) 2012 NoreeTech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BIDDetailViewController : UIViewController {
    NSString *state;
    NSString *capital;
    IBOutlet UILabel *stateLabel;
    IBOutlet UILabel *capitalLabel;
}

@property (nonatomic, retain)NSString *state, *capital;
@property (nonatomic, retain)IBOutlet UILabel *stateLabel, *capitalLabel;

@end
