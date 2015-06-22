//
//  HMFSplitViewController.h
//  MA Mobile
//
//  Created by Brandon Butler on 6/22/15.
//  Copyright (c) 2015 POS Management. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HMFSplitViewSubNavigationController.h"

@interface HMFSplitViewController : UIViewController

@property (nonatomic, strong) HMFSplitViewSubNavigationController *leftNavigationController;
@property (nonatomic, strong) HMFSplitViewSubNavigationController *rightNavigationController;

-(void)setupLeftView:(UIViewController *)controller;
-(void)setupRightView:(UIViewController *)controller;

@end
