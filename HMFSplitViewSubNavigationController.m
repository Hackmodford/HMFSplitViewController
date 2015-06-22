//
//  HMFSplitViewSubNavigationController.m
//  MA Mobile
//
//  Created by Brandon Butler on 6/22/15.
//  Copyright (c) 2015 POS Management. All rights reserved.
//

#import "HMFSplitViewSubNavigationController.h"

@interface HMFSplitViewSubNavigationController ()

@end

@implementation HMFSplitViewSubNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
-(void)presentViewController:(UIViewController *)viewControllerToPresent animated:(BOOL)flag completion:(void (^)(void))completion {
    //if you let the subNavigationController present the controller the view is resized incorrectly. This just moves the responsibility to the parent navigationController.
    [self.splitViewNavigationController presentViewController:viewControllerToPresent animated:flag completion:completion];
}

@end
