//
//  LMGraphLegend.m
//  LMGraphViewDemo
//
//  Created by melody on 2020/2/25.
//  Copyright © 2020 LMinh. All rights reserved.
//

#import "LMGraphLegend.h"

@implementation LMGraphLegend

+ (instancetype)grapthLegendWithTitle:(NSString *)title
                                color:(UIColor *)color {
    LMGraphLegend *legend = [LMGraphLegend new];
    legend.title = title;
    legend.color = color;
    return legend;
}

@end
