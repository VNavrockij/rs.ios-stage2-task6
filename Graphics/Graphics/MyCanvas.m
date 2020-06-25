//
//  MyCanvas.m
//  Graphics
//
//  Created by Vitaliy on 25.06.2020.
//  Copyright © 2020 Vitaliy. All rights reserved.
//

#import "MyCanvas.h"
#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]


@implementation MyCanvas


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void) drawRect:(CGRect)rect {
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextClearRect(context, rect);
    

    
    CGContextSetRGBFillColor(context, 0.850f, 0.240f, 0.240f, 0.8);
    CGContextFillEllipseInRect(context, CGRectMake(40, 250, 80, 80));
    
    CGContextSetRGBFillColor(context, 0.130f, 0.700f, 0.800f, 0.8);
    CGContextFillRect(context, CGRectMake(150, 250, 80, 80));
    
    // Draw a triangle
          CGContextBeginPath(context);
          CGContextMoveToPoint   (context, 300, 250);  // top
          CGContextAddLineToPoint(context, 340, 330);  // right
          CGContextAddLineToPoint(context, 260, 330);  // left
          CGContextClosePath(context);

    CGContextSetRGBFillColor(context, 0.100f, 0.700f, 0.400, 0.8);
           CGContextFillPath(context);
    


}

@end
