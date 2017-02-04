
#import "SimpleStackView.h"

@implementation SimpleStackView

- (void)addSubview:(UIView *)view
{
    id lastView = self.subviews.lastObject ? self.subviews.lastObject : [NSNull null];
    NSDictionary * views = @{ @"view": view, @"lastView": lastView };
    NSDictionary * metrics = @{ @"rowSpacing": @(self.rowSpacing) };
    
    view.translatesAutoresizingMaskIntoConstraints = NO;
    [super addSubview:view];
    
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[view]|" options:0 metrics:nil views:views]];
    
    if (lastView == [NSNull null]) {
        [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[view]->=0-|" options:0 metrics:nil views:views]];
    }
    else {
        [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[lastView]-rowSpacing-[view]->=0-|" options:0 metrics:metrics views:views]];
    }
}

- (void)removeAllSubviews
{
    for (UIView * view in self.subviews)
        [view removeFromSuperview];
}

@end
