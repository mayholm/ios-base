//
//  UIView+instanceFromNib.m
//
//  Created by Pär Majholm
//

#import "UIView+instanceFromNib.h"

@implementation UIView (instanceFromNib)

+ (instancetype)instanceFromNib
{
    // this method loads a nib with the same name as the class and returns the first top-level object
    NSArray * nibArray = [[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class]) owner:nil options:nil];
    id instance = [nibArray firstObject];
    return instance;
}

@end
