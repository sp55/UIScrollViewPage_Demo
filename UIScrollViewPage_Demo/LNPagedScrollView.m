//
//  LNPagedScrollView.m
//  UIScrollViewPageDemo
//
//  Created by LucienLi on 16/8/25.
//  Copyright © 2016年 llj. All rights reserved.
//

#import "LNPagedScrollView.h"

/**
    1.让UIScrollView显示超出其本身范围的内容
    2.让UIScrollView响应超出其本身范围的触摸事件
 */

@implementation LLReachableScrollView
//拓展
- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event {
    return YES;
}

@end


@interface LNPagedScrollView ()

@end


@implementation LNPagedScrollView

- (LLReachableScrollView *)scrollView {
    if (!_scrollView) {
        _scrollView = [[LLReachableScrollView alloc] initWithFrame:self.bounds];
        _scrollView.clipsToBounds = NO;
        _scrollView.pagingEnabled = YES;
    }
    return _scrollView;
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setupView];
    }
    return self;
}

- (void)setupView {
    [self addSubview:self.scrollView];
}

- (void)setActualWidth:(CGFloat)actualWidth {
    if (actualWidth == 0) {
        return;
    }
    CGRect frame = self.scrollView.frame;
    frame.size.width = actualWidth;
    self.scrollView.frame = frame;
    self.scrollView.center = self.center;
}

- (void)setActualHeight:(CGFloat)actualHeight {
    if (actualHeight == 0) {
        return;
    }
    CGRect frame = self.scrollView.frame;
    frame.size.height = actualHeight;
    self.scrollView.frame = frame;
    self.scrollView.center = self.center;
}

- (void)setContentSize:(CGSize)contentSize {
    self.scrollView.contentSize = contentSize;
}
@end
