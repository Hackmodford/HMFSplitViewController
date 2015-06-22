# HMFSplitViewController
A custom implementation of a splitViewController that allows you to reize the right-hand view in IB

In viewDidLoad use setupLeftView and setupRightView to create the splitView.

```obj-c
@implementation SubclassOfHMFOrderSplitViewController

-(void)viewDidLoad {

  UIViewController *leftViewController = //whatever you use to setup...
  //leftViewController configuration goes here
  [self setupLeftView:leftViewController];
  
  UIViewController *rightViewController = //whatever you use to setup...
  //rightViewController configuration goes here
  [self setupRightView:rightViewController];
  
}

@end
```

If you want to change the width of the views just modify HMFSplitViewController.xib to your liking.
I currently set the right hand view to always be 320px wide.

The splitViewController creates a navigationController for each view. This might be worth changing int he future, just let me know.
