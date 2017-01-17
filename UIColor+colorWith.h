
#import <UIKit/UIKit.h>

@interface UIColor (colorWith)

+ (UIColor *)colorWithRGBAInt:(uint32_t)rgbaInt;
+ (UIColor *)colorWithRGBInt:(uint32_t)rgbInt;
+ (UIColor *)colorWithBytesRed:(uint8_t)red green:(uint8_t)green blue:(uint8_t)blue alpha:(uint8_t)alpha;
+ (UIColor *)colorWithBytesRed:(uint8_t)red green:(uint8_t)green blue:(uint8_t)blue;

@end
