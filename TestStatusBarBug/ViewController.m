#import "ViewController.h"

@interface ViewController () {
    BOOL _statusBarHidden;
}

@end

@implementation ViewController

-(BOOL)prefersStatusBarHidden
{
    return _statusBarHidden;
}
    
-(UIStatusBarAnimation)preferredStatusBarUpdateAnimation
{
    return UIStatusBarAnimationSlide;
}

- (IBAction)toggleStatusBar {
    _statusBarHidden = !_statusBarHidden;
    
    [UIView animateWithDuration:0.35 animations:^{
        [self setNeedsStatusBarAppearanceUpdate];
    }];
}
    
@end
