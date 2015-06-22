# HMFSplitViewController
A custom implementation of a splitViewController that allows you to reize the right-hand view in IB

Usage:

In viewDidLoad use setupLeftView and setupRightView to create the splitView.

```
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

Right now the splitViewController creates a navigationController for each view.
