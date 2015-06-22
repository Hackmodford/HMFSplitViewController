//
//  HMFSplitViewController.m
//  MA Mobile
//
//  Created by Brandon Butler on 6/22/15.
//  Copyright (c) 2015 POS Management. All rights reserved.
//

#import "HMFSplitViewController.h"

@interface HMFSplitViewController ()

@property (nonatomic, weak) IBOutlet UIView *leftView;
@property (nonatomic, weak) IBOutlet UIView *rightView;
@property (nonatomic, weak) IBOutlet UIView *dividerView;

@end

@implementation HMFSplitViewController

-(instancetype)init {
    self = [super initWithNibName:@"HMFSplitViewController" bundle:nil];
    if(self) {
        
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.leftNavigationController = [[HMFSplitViewSubNavigationController alloc] init];
    self.leftNavigationController.splitViewNavigationController = self.navigationController;
    
    self.rightNavigationController = [[HMFSplitViewSubNavigationController alloc] init];
    self.rightNavigationController.splitViewNavigationController = self.navigationController;
    
    //setup dividerGradient
    CAGradientLayer *dividerGradient = [CAGradientLayer layer];
    dividerGradient.frame = self.dividerView.bounds;
    dividerGradient.colors = @[(id)[[UIColor blackColor] CGColor], (id)[[UIColor clearColor] CGColor]];
    dividerGradient.startPoint = CGPointMake(0, 0);
    dividerGradient.endPoint = CGPointMake(1, 0);
    [self.dividerView.layer insertSublayer:dividerGradient atIndex:0];
}

- (void) viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:YES];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    [self.navigationController setNavigationBarHidden:NO];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)setupLeftView:(UIViewController *)controller {
    [self.leftNavigationController.view setFrame:CGRectMake(0, 0, self.leftView.frame.size.width, self.leftView.frame.size.height)];
    [self.leftNavigationController pushViewController:controller animated:NO];
    [self.view addSubview:self.leftNavigationController.view];
}

-(void)setupRightView:(UIViewController *)controller {
    [self.rightNavigationController.view setFrame:CGRectMake(0, 0, self.rightView.frame.size.width, self.rightView.frame.size.height)];
    [self.rightNavigationController pushViewController:controller animated:NO];
    [self.rightView addSubview:self.rightNavigationController.view];
}

@end
