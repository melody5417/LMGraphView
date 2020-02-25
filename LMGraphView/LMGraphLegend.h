//
//  LMGraphLegend.h
//  LMGraphViewDemo
//
//  Created by melody on 2020/2/25.
//  Copyright © 2020 LMinh. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LMGraphLegend : NSObject

@property (nonatomic, copy) NSString *title;
@property (nonatomic, strong) UIColor *color;

+ (instancetype)grapthLegendWithTitle:(NSString *)title
                                color:(UIColor *)color;

@end

CG_INLINE LMGraphLegend *LMGraphLegendMake(NSString *title, UIColor *color) {
    return [LMGraphLegend grapthLegendWithTitle:title color:color];
}

NS_ASSUME_NONNULL_END
