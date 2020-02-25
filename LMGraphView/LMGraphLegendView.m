//
//  LMGraphLegendView.m
//  LMGraphViewDemo
//
//  Created by melody on 2020/2/25.
//  Copyright © 2020 LMinh. All rights reserved.
//

#import "LMGraphLegendView.h"

@interface LMGraphLegendView ()

@property (nonatomic, copy) NSString *title;
@property (nonatomic, strong) UIColor *color;

@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UIView *colorBar;

@end

@implementation LMGraphLegendView

- (instancetype)initWithFrame:(CGRect)frame title:(NSString *)title color:(UIColor *)color {
    if (self = [super initWithFrame:frame]) {
        self.title = title;
        self.color = color;
        [self initialize];
    }
    return self;
}

- (void)initialize {
    if (!self.colorBar) {
        self.colorBar = [UIView new];
        self.colorBar.backgroundColor = self.color;
        [self addSubview:self.colorBar];
    }
    CGSize colorBarSize = CGSizeMake(50, 20);
    self.colorBar.frame = CGRectMake(0,
                                     CGRectGetMidY(self.bounds) - colorBarSize.height/2.0,
                                     colorBarSize.width,
                                     colorBarSize.height);
    
    if (!self.titleLabel) {
        self.titleLabel = [UILabel new];
        self.titleLabel.text = self.title;
        [self addSubview:self.titleLabel];
    }
    CGSize labelSize = CGSizeMake(50, 30);
    self.titleLabel.frame = CGRectMake(CGRectGetMaxX(self.colorBar.bounds),
                                       CGRectGetMidY(self.bounds) - labelSize.height/2.0,
                                       labelSize.width,
                                       labelSize.height);
}

@end
