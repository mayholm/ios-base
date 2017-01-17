//
//  UIColor+colorWith.m
//  Svamazon
//
//  Created by Pär Majholm on 2017-01-15.
//
//

#import "UIColor+colorWith.h"

@implementation UIColor (colorWith)

+ (UIColor *)colorWithRGBInt:(uint32_t)rgbInt
{
    uint32_t rgbaInt = (rgbInt << 8) | 0xFF;
    return [self colorWithRGBAInt:rgbaInt];
}

+ (UIColor *)colorWithRGBAInt:(uint32_t)rgbaInt
{
    uint8_t red =   (rgbaInt >> 24) & 0xFF;
    uint8_t green = (rgbaInt >> 16) & 0XFF;
    uint8_t blue =  (rgbaInt >> 8) & 0xFF;
    uint8_t alpha = (rgbaInt >> 0) & 0XFF;
    
    return [UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:alpha/255.0];
}

+ (UIColor *)colorWithBytesRed:(uint8_t)red green:(uint8_t)green blue:(uint8_t)blue alpha:(uint8_t)alpha
{
    return [UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:alpha/255.0];
}

+ (UIColor *)colorWithBytesRed:(uint8_t)red green:(uint8_t)green blue:(uint8_t)blue
{
    return [self colorWithBytesRed:red green:green blue:blue alpha:255];
}

@end
